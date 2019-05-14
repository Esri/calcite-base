const fs = require('fs')
const scssToJson = require('scss-to-json')
const camelCase = require('camelcase')
const now = new Date().getTime()
const filePaths = {
  js: './dist/index.js',
  ts: './dist/index.d.ts',
  css: './dist/variables.css',
  scss: './dist/_variables.scss'
}

try {
  // remove previous generated files
  Object.keys(filePaths)
    .map(f => filePaths[f])
    .forEach(p => fs.unlinkSync(p))
} catch (_e) {}

try {
  // generate new object of tokens
  const data = scssToJson('./variables.scss', {
    dependencies: [{ path: './node_modules/@esri/calcite-colors/colors.scss' }]
  })

  // iterate over the tokens and build all the files
  let sassFile = ""
  let cssFile = ":root { \n"
  let tsFile = ""
  let jsFile = ""

  Object.keys(data).forEach(n => {
    const value = data[n];
    const name = n.substring(1);
    const camelCaseName = camelCase(name)
    sassFile += `$${name}: ${value} !default; \n`
    cssFile += `  --${name}: ${value}; \n`
    tsFile += `export const ${camelCaseName}: string; \n`
    jsFile += `export const ${camelCaseName} = "${value}"; \n`
  });
  
  cssFile += "}"

  // write files to disk
  fs.writeFileSync('./dist/index.js', jsFile)
  fs.writeFileSync('./dist/index.d.ts', tsFile)
  fs.writeFileSync('./dist/variables.css', cssFile)
  fs.writeFileSync('./dist/_variables.scss', sassFile)

  console.log(`✨ successfully built files in ${new Date().getTime() - now}ms`)
} catch (e) {
  console.log(`😭 error while building files`)
  console.error(e)
}
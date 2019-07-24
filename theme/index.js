var themeleon = require('themeleon')().use('swig')
var theme = themeleon(__dirname, function (t) {
  t.swig('index.html.swig', 'index.html')
})
var variables = require('../dist/index.json');

function parseEntry (d) {
  return {
    description: d.description,
    name: d.context.name,
    code: d.context.code,
    parameters: d.parameter,
    type: d.context.type,
    example: d.example
  }
}

module.exports = function (dest, ctx) {
  ctx.groups = [
    {
      title: 'Spacing',
      mixins: ctx.data.filter(d => d.group[0] === 'spacing').map(parseEntry)
    },
    {
      title: 'Shadow',
      mixins: ctx.data.filter(d => d.group[0] === 'shadow').map(parseEntry)
    },
    {
      title: 'Type',
      mixins: ctx.data.filter(d => d.group[0] === 'type').map(parseEntry)
    },
    {
      title: 'Utilities',
      mixins: ctx.data.filter(d => d.group[0] === 'utilities').map(parseEntry)
    },
    {
      title: 'Animation',
      mixins: ctx.data.filter(d => d.group[0] === 'animation').map(parseEntry)
    },
    {
      title: 'Responsive',
      mixins: ctx.data.filter(d => d.group[0] === 'responsive').map(parseEntry)
    }
  ]
  ctx.variables = Object.keys(variables).map(key => ({key, value: variables[key]}));
  return theme.apply(this, arguments)
}

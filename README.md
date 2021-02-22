# Calcite Base

The calcite-base repository holds the tailwind configuration used to build calcite-components.

## Install

If you use npm, installation is as easy as:

```
npm install @esri/calcite-base
```

You can also [download the latest release manually](https://github.com/Esri/calcite-base/releases).

_Note_: this project assumes you have the light and dark theme variables defined on your page. If you're using calcite components, these will already be defined for you. If not, please see [calcite-colors](https://github.com/Esri/calcite-colors/) for steps on how to import the theme.
### PostCSS/Tailwind

To add Calcite's Tailwind configuration to your project you can simply import it in your `tailwind.config.js` file:

```js
var calciteTheme = require("@esri/calcite-base/tailwind.config");

module.exports = {
  purge: ["./public/**/*.html"],
  ...calciteTheme
};
```

### CSS

A static CSS file is also provided at `dist/tailwind.css`. When using this option it's a good idea to use nano or another CSS optimization tool to remove the unused classes as the default build can be quite large.

## Licensing

COPYRIGHT © 2019 Esri

All rights reserved under the copyright laws of the United States
and applicable international laws, treaties, and conventions.

This material is licensed for use under the Esri Master License
Agreement (MLA), and is bound by the terms of that agreement.
You may redistribute and use this code without modification,
provided you adhere to the terms of the MLA and include this
copyright notice.

See use restrictions at http://www.esri.com/legal/pdfs/mla_e204_e300/english

For additional information, contact:
Environmental Systems Research Institute, Inc.
Attn: Contracts and Legal Services Department
380 New York Street
Redlands, California, USA 92373
USA

email: contracts@esri.com

## Contributing

Please read the [contribute document](CONTRIBUTING.md).

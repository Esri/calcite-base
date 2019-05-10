# Calcite Base

The calcite-base repository holds the variables and mixins used in Calcite Web. This includes resources regarding:

- motion (easing functions, transitions)
- type (font stacks, sizing, spacing mixins)
- colors (aliases for [@esri/calcite-colors](https://github.com/Esri/calcite-colors), UI colors, etc)
- reponsive design (breakpoints, respond-to mixins)

## Install

If you use npm, installation is as easy as:

```
npm install @esri/calcite-base
```

You can also [download the latest release manually](https://github.com/Esri/calcite-colors/releases).

## Use

In a Sass project, simply import calcite-base into your project and use the variables/mixins:

```scss
@import "./node_modules/@esri/calcite-base/_index.scss";

.myClass {
  color: $blue;
  @include font-size(-1);
}
```

If you want to override any of the variables locally, make sure you put your declarations _first_:

```scss
$blue: #0196ff; // local override for blue

@import "./node_modules/@esri/calcite-base/_base.scss";
```

If you only require certain modules, and don't want to litter your Sass scope with all the variables and mixins, you can import each section directly as well:

```scss
@import "./node_modules/@esri/calcite-base/sass/_type.scss";

.myClass {
  @include avenir-light();
  @include font-size(-1);
  @include leading(2);
  @include tracking(166);
  @include word-spacing(200);
}
```

### Custom Properties

If you are using PostCSS (or standard CSS) there are a series of files which declare the variables utilizing [custom properties](https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties) (CSS Variables). You can use these along with something like the [postcss-custom-properties](https://github.com/postcss/postcss-custom-properties) library to utilize the base colors, styles, etc in your postcss project:

```css
@import './node_modules/@esri/calcite-base/post-css/base.css';

.myClass {
  color: var(--blue);
}
```

### JavaScript

If you need some of these values and are using a CSS-in-JS approach, you can import them from the JavaScript file:

```js
const calciteBase = require('@esri/calcite-base');
console.log(calciteBase.blue); // "#007ac2"
```

If you have ES6 modules, you can also grab just what you need:

```js
import {avenirLight} from "@esri/calcite-base";
console.log(avenirLight); // '"Avenir Next", "Avenir", "Helvetica Neue", sans-serif'
```

## Licensing

COPYRIGHT © 2018 Esri

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

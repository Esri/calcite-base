# Calcite Base

The calcite-base repository holds the variables and mixins used in Calcite Web. This includes resources regarding:

- motion (easing functions, transitions)
- type (font stacks, sizing, spacing mixins)
- reponsive design (breakpoints, respond-to mixins)
- utilities (clearfix, show/hide, etc)
- shadow (defined levels of depth)
- spacing (standardized vertical/horizontal spacing units)

## Install

If you use npm, installation is as easy as:

```
npm install @esri/calcite-base
```

You can also [download the latest release manually](https://github.com/Esri/calcite-colors/releases).

## Use

In a Sass project, simply import calcite-base into your project and use the variables/mixins:

```scss
@import "./node_modules/@esri/calcite-base/dist/_index.scss";

.myClass {
  @include font-size(-1);
}
```

If you only require certain mixins, you can import each section directly as well:

```scss
@import "./node_modules/@esri/calcite-base/dist/_type.scss";

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
@import "./node_modules/@esri/calcite-base/dist/variables.css";

.myClass {
  box-shadow: var(--shadow-1);
}
```

### JavaScript

If you need some of these values and are using a CSS-in-JS approach, you can import them from the JavaScript file using ES6 modules:

```js
import {avenirLight} from "@esri/calcite-base";
console.log(avenirLight); // '"Avenir Next", "Avenir", "Helvetica Neue", sans-serif'
```

Note when using partial imports like this, the hyphenated variables become camel case.

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

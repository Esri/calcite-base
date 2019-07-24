<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Calcite Base</title>
        <meta name="description" content="Mixins and Variables for Sass projects">
        <link rel="stylesheet" href="https://s3-us-west-1.amazonaws.com/patterns.esri.com/files/calcite-web/1.2.5/css/calcite-web.min.css" />
    </head>
    <body>

    <div class="wrapper panel panel-no-border panel-no-padding">
      <!-- header -->
      <header class="panel-blue" role="banner">
        <div class="grid-container">
          <div class="column-24">
            <h1 class="sub-nav-title leader-3">Calcite Base</h1>
          </div>
          <p class="text-white column-12">Sass mixins and variables for Calcite</p>
          <p class="column-12 text-white text-right">                Version <span class="margin-right-2">{{package.version}}</span>
                <a href="https://github.com/esri/calcite-base/" class="link-white">View on GitHub <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" width="16" height="15" class="margin-left-quarter"><path d="M14 8h1v7H1V1h7v1H2v12h12zm-4-7v1h3.29L7.62 7.67l.71.71L14 2.71V6h1V1z"/></svg></a></p>
          </div>
        </div>
      </header>
      <div class="grid-container leader-2">
        <aside class="column-6 side-nav" aria-role="complementary">
            <h4 class="side-nav-title">Variables</h4>
            <a href="#variables" class="side-nav-link">Overview</a>
            {% for group in groups %}
            <h4 class="side-nav-title" id="{{group.title}}">{{ group.title }}</h4>
            <nav role="navigation" aria-labelledby="{{group.title}}">
                {% for mixin in group.mixins %}
                    <a href="#{{group.title}}-{{mixin.name}}" class="side-nav-link">{{ mixin.name }}</a>
                {% endfor %}
            </nav>
            {% endfor %}
        </aside>
        <main class="column-17 pre-1">
            <h2 id="variables">Variables</h2>
            <p>Variables are available in several formats including SASS, CSS Vars, TypeScript, JavaScript, and JSON.</p>
            <table class="table">
                <thead>
                    <td>Variable</td>
                    <td>Value</td>
                </thead>
                <tbody>
                    {% for variable in variables %}
                    <tr>
                        <td><code>{{variable.key}}</code></td>
                        <td><code>{{variable.value}}</code></td>
                    </tr>
                    {% endfor %}
                </tbody>
            </table>
            {% for group in groups %}
            <section class="trailer-3">
                <h2 class="text-rule trailer-1">{{ group.title }} Mixins</h2>

                {% for mixin in group.mixins %}

                <section id="{{group.title}}-{{mixin.name}}" class="trailer-2">
                    <h3 class="font-size-2 avenir-bold">
                        {{ mixin.name }}
                        ({% for parameter in mixin.parameters %}${{ parameter.name }}{% if not loop.last %}, {% endif %}{% endfor %})
                    </h3>
                    <p>{{ mixin.description}}</p>
                    {% if mixin.parameters.length > 0 %}
                        <h4 class="font-size-0 avenir-bold">Parameters</h4>
                        <table class="table">
                            <thead>
                            <tr>
                                <th scope="col">Name</th>
                                <th scope="col">Description</th>
                                <th scope="col">Type</th>
                                <th scope="col">Default value</th>
                            </tr>
                            </thead>
                            <tbody>
                            {% for parameter in mixin.parameters %}
                                <tr class="item__parameter">
                                    <th><code>${{ parameter.name }}</code></th>
                                    <td>{{ parameter.description|default('&mdash;<span class="visually-hidden"> none</span>')|safe }}</td>
                                    <td data-label="type">
                                        <span class="label">{{ parameter.type }}</span>
                                    </td>
                                    <td>
                                    {% if not parameter.default %}
                                        &mdash;<span class="visually-hidden"> none</span>
                                    {% else %}
                                        <code>{{ parameter.default }}</code>
                                    {% endif %}
                                </td>
                                </tr>
                            {% endfor %}
                            </tbody>
                        </table>
                    {% endif %}
                    {% if mixin.example.length > 0 %}
                    <h4 class="font-size-0 avenir-bold">Example</h4>

                    {% for example in mixin.example %}

                        {% if example.description %}
                        <div class="font-size--1">{{ example.description|safe }}</div>
                        {% endif %}
                        <pre class="language-{{ example.type }}"><code>{{ example.code|escape|safe }}</code></pre>

                    {% endfor %}
                    {% endif %}


                </section>
                {% endfor %}

            </section>
            {% endfor %}
        </main>
      </div>

---
layout: default
title: Examples
permalink: /examples
sequence: 2
---

{% if site.examples %}
<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Examples</h2>
    <div class="content is-medium">
      <ol type="1">
        {% for example in site.examples %}
        <li>
          <a href="{{ site.url }}{{ example.url }}">{{ example.title }}</a>
          <div class="tags is-pulled-right">
            {% for feat in example.features %}
            <span class="tag is-warning is-light">{{ feat }}</span>
            {% endfor %}
            <span class="tag">{{ example.difficulty }}</span>
          </div>
        </li>
        {% endfor %}
      </ol>
    </div>
  </div>
</section>
{% endif %}

---
layout: default
title: Code
permalink: /code
sequence: 2
---

{% if site.code %}
<section class="section is-small">
  <div class="container">
    <h2 class="title is-1">Code examples</h2>
    <div class="content is-medium">
      <ol type="1">
        {% for each_code in site.code %}
        <li>
          <a href="{{ site.url }}{{ each_code.url }}">{{ each_code.title }}</a>
          <div class="tags is-pulled-right">
            {% for feat in each_code.features %}
            <span class="tag is-warning is-light">{{ feat }}</span>
            {% endfor %}
            {% for v in each_code.versions %}
            <span class="tag is-link is-light">{{ v.name }} v{{v.version}}</span>
            {% endfor %}
            <span class="tag">{{ each_code.difficulty }}</span>
            <!-- TODO -->
            {% if jekyll.environment == "development" %}
            {% if each_code.images.prototype %}
            {% else %}
            <span class="tag is-danger">TODO Prototype image</span>
            {% endif %}
          {% endif %}
          </div>
        </li>
        {% endfor %}
      </ol>
    </div>
  </div>
</section>
{% endif %}

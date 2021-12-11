---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: application
image: /uploads/attachment/sanatorium_2019.jpg
---

<div class="home">
  <div class='posts_wrapper'>
    <div class='posts'>
      {%- for post in site.posts -%}
      <article class='post'>
        <header>
          <h2 class='titlePost'>
            <a href="{{ site.baseurl }}{{ post.permalink }}">{{ post.title }}</a>
          </h2>
        </header>
        <footer>
          {%- assign date_format = "%d. %m. %Y %R" -%}
          <time datetime='{{ post.date }}'>
            {{ post.date | date: date_format }}
          </time>
        </footer>
        <div class='postContent'>
          {{ post.content }}
        </div>
      </article>

      {%- endfor -%}
    </div>
  </div>
</div>

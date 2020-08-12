---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: application
---

<div id='homegape'>
  <section class='main'>
    <section class='featured slider'>
      <h2 class='hidden'>{% t globa.featured %}</h2>
      <article class='promoPhotos'>
        <h3 class='hidden'>{% t globa.featured_photos %}</h3>
        <div class='slider-wrapper theme-default'>
          <div class='nivoSlider' id='slider'>
            <img alt="0" src="/assets/slider/slider1/0.jpg" />
            <img alt="1" src="/assets/slider/slider1/1.jpg" />
            <img alt="2" src="/assets/slider/slider1/2.jpg" />
            <img alt="3" src="/assets/slider/slider1/3.jpg" />
            <img alt="4" src="/assets/slider/slider1/4.jpg" />
            <img alt="5" src="/assets/slider/slider1/5.jpg" />
          </div>
        </div>
      </article>
    </section>
    <section class='socialMedia'>
      <h2 class='hidden'>{% t globa.social_media %}</h2>
      <article class='promoVideo'>
        <h3 class='hidden'>{% t globa.recent_video %}</h3>
        <a href="https://www.youtube.com/user/sanatorium2011" target="blank"><img alt="Youtube-icon" src="/assets/youtube-icon.png" /></a>
        <iframe width="280" height="240" src="https://www.youtube.com/embed/TiIyN0vKfmw" frameborder="0" allowfullscreen></iframe>
      </article>
    </section>
  </section>
  <sidebar class='sidebar'>
  <section class='promoNews'>
    <header>
      <h3 class='title'>{% t posts.latest %}</h3>
    </header>
    <ul>
      {%- for post in site.posts limit:4 -%}
      <li>
        <article>
          <header>
            <h3><a href="{{ post.url | relative_url }}">{{ post.title | escape }}</a></h3>
          </header>
          <footer>
            {%- assign date_format = "%d. %m. %Y %R" -%}
            <time datetime='{{ post.date }}'></time>
            <div class='date'>{{ post.date | date: date_format }}</div>
          </footer>
          <p>
            {{ post.summary }}
            <br>
            <a href="{{ site.baseurl }}{{ post.url | relative_url }}">{% t posts.read_more %}</a>
          </p>
        </article>
      </li>
      {%- endfor -%}
    </ul>
  </section>


  </sidebar>
</div>

<div class='jThumbnailScroller' id='photos'>
  <div class='jTscrollerContainer'>
    <div class='jTscroller'>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/1.JPG" class="lightbox" rel="lightbox"><img alt="Medium_1" src="/uploads/gallery/peace_unlimited_festival_2014/medium_1.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/2.JPG" class="lightbox" rel="lightbox"><img alt="Medium_2" src="/uploads/gallery/peace_unlimited_festival_2014/medium_2.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/3.JPG" class="lightbox" rel="lightbox"><img alt="Medium_3" src="/uploads/gallery/peace_unlimited_festival_2014/medium_3.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/4.JPG" class="lightbox" rel="lightbox"><img alt="Medium_4" src="/uploads/gallery/peace_unlimited_festival_2014/medium_4.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/5.JPG" class="lightbox" rel="lightbox"><img alt="Medium_5" src="/uploads/gallery/peace_unlimited_festival_2014/medium_5.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/6.JPG" class="lightbox" rel="lightbox"><img alt="Medium_6" src="/uploads/gallery/peace_unlimited_festival_2014/medium_6.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/7.JPG" class="lightbox" rel="lightbox"><img alt="Medium_7" src="/uploads/gallery/peace_unlimited_festival_2014/medium_7.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/8.JPG" class="lightbox" rel="lightbox"><img alt="Medium_8" src="/uploads/gallery/peace_unlimited_festival_2014/medium_8.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/9.JPG" class="lightbox" rel="lightbox"><img alt="Medium_9" src="/uploads/gallery/peace_unlimited_festival_2014/medium_9.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/10.JPG" class="lightbox" rel="lightbox"><img alt="Medium_10" src="/uploads/gallery/peace_unlimited_festival_2014/medium_10.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/11.JPG" class="lightbox" rel="lightbox"><img alt="Medium_11" src="/uploads/gallery/peace_unlimited_festival_2014/medium_11.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/12.JPG" class="lightbox" rel="lightbox"><img alt="Medium_12" src="/uploads/gallery/peace_unlimited_festival_2014/medium_12.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/13.JPG" class="lightbox" rel="lightbox"><img alt="Medium_13" src="/uploads/gallery/peace_unlimited_festival_2014/medium_13.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/14.JPG" class="lightbox" rel="lightbox"><img alt="Medium_14" src="/uploads/gallery/peace_unlimited_festival_2014/medium_14.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/15.JPG" class="lightbox" rel="lightbox"><img alt="Medium_15" src="/uploads/gallery/peace_unlimited_festival_2014/medium_15.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/16.JPG" class="lightbox" rel="lightbox"><img alt="Medium_16" src="/uploads/gallery/peace_unlimited_festival_2014/medium_16.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/17.JPG" class="lightbox" rel="lightbox"><img alt="Medium_17" src="/uploads/gallery/peace_unlimited_festival_2014/medium_17.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/18.JPG" class="lightbox" rel="lightbox"><img alt="Medium_18" src="/uploads/gallery/peace_unlimited_festival_2014/medium_18.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/19.JPG" class="lightbox" rel="lightbox"><img alt="Medium_19" src="/uploads/gallery/peace_unlimited_festival_2014/medium_19.JPG" /></a>
      <a href="/uploads/gallery/peace_unlimited_festival_2014/20.JPG" class="lightbox" rel="lightbox"><img alt="Medium_20" src="/uploads/gallery/peace_unlimited_festival_2014/medium_20.JPG" /></a>
    </div>
  </div>
  <a href="#" class="jTscrollerPrevButton"></a>
  <a href="#" class="jTscrollerNextButton"></a>
</div>

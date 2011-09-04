Factory.define :post, :class => Post do |f|
  f.title         'Prv Blog Zapis'
  f.title_en      'My first blog post'
  f.content       'Ova e prviot blog zapis'
  f.content_en    'This is my first blog post'
  f.publish       true
  f.published_at  { Time.now }
end

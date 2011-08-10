Factory.define :comment, :class => Comment do |f|
  f.name "John Doe"
  f.email "sanatorium@gmail.com"
  f.url "http://www.sanatorium.com.mk"
  f.content "This is my first comment"
  f.approved true
  f.association :post
end

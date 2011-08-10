Factory.define :comment, :class => Comment do |f|
  f.name        'John Doe'
  f.email       'jon.doe@sanatorium.com.mk'
  f.url         'http://www.sanatorium.com.mk'
  f.content     'This is my first comment'
  f.approved    true
end

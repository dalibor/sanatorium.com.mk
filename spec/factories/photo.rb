Factory.define :photo, :class => Photo do |f|
  f.association  :gallery
  f.image        File.open(File.join(Rails.root, 'spec', 'fixtures', 'rails1.png'))
end

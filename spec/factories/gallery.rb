Factory.define :gallery, :class => Gallery do |f|
  f.name         'Gallery name'
  f.description  'Gallery description'
  f.cover        File.open(File.join(Rails.root, 'spec', 'fixtures', 'rails1.png'))
end

Factory.define :download, :class => Download do |f|
  f.name        'Ultra speed'
  f.attachment  File.open(File.join(Rails.root, 'spec', 'fixtures', 'rails1.png'))
  f.raw_type    'Audio'
end

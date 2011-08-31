Factory.define :attachment, :class => Attachment do |f|
  f.name        'Ime na slika'
  f.name_en     'Image name'
  f.attachment  File.open(File.join(Rails.root, 'spec', 'fixtures', 'rails1.png'))
end

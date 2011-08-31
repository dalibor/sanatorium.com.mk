Factory.define :gallery, :class => Gallery do |f|
  f.name            'Ime na galerija'
  f.name_en         'Gallery name'
  f.description     'Opis na galerija'
  f.description_en  'Gallery description'
  f.cover           File.open(File.join(Rails.root, 'spec', 'fixtures', 'rails1.png'))
end

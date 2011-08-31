Factory.define :download, :class => Download do |f|
  f.name        'Na Rabot Na Razumot'
  f.name_en     'The Edge Of Sanity'
  f.attachment  File.open(File.join(Rails.root, 'spec', 'fixtures', 'rails1.png'))
  f.raw_type    'Audio'
end

Factory.define :release, :class => Release do |f|
  f.name            'Na Rabot Na Razumot'
  f.name_en         'The Edge Of Sanity'
  f.description     'Dolg opis'
  f.description_en  'Long description'
  f.year            1992
  f.label           'No-label'
  f.cover           File.open(File.join(Rails.root, 'spec', 'fixtures', 'rails1.png'))
end

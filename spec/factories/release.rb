Factory.define :release, :class => Release do |f|
  f.name         'The Edge Of Sanity'
  f.description  'Long description'
  f.year         1992
  f.label        'No-label'
  f.cover        File.open(File.join(Rails.root, 'spec', 'fixtures', 'rails1.png'))
end

Factory.define :song, :class => Song do |f|
  f.name         'Despot na Adot'
  f.name_en      'Hell Master'
  f.lyrics       'Tekst na pesna'
  f.lyrics_en    'Song lyrics'
  f.position     1
  f.association  :release
end

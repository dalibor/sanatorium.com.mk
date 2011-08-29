Factory.define :song, :class => Song do |f|
  f.name         'Hell Master'
  f.lyrics       'Hell Master'
  f.position     1
  f.association  :release
end

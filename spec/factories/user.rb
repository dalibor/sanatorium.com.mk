Factory.define :user do |f|
  f.email    'user@sanatorium.com.mk'
  f.password 'password'
end

Factory.define :admin, :class => User do |f|
  f.email    'admin@sanatorium.com.mk'
  f.password 'password'
end

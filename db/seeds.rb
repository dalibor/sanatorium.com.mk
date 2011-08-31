User.create!(:email => 'admin@sanatorium.com.mk', :password => 'password')

page            = Page.new
page.key        = 'band'
page.content    = 'Sanatorium Biography'
page.content_en = 'Sanatorium Biography'
page.save!

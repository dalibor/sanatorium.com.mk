User.create!(:email => 'admin@sanatorium.com.mk', :password => 'password')
page = Page.new
page.key = 'bio'
page.content = 'Sanatorium Biography'
page.save!

User.create!(:email => 'admin@sanatorium.com.mk', :password => 'password')

page            = Page.new
page.key        = 'band'
page.content    = 'Sanatorium Biography'
page.content_en = 'Sanatorium Biography'
page.save!

page            = Page.new
page.key        = 'video'
page.content    = '<iframe width="280" height="240" src="http://www.youtube.com/embed/TiIyN0vKfmw" frameborder="0" allowfullscreen></iframe>'
page.content_en = '<iframe width="280" height="240" src="http://www.youtube.com/embed/TiIyN0vKfmw" frameborder="0" allowfullscreen></iframe>'
page.save!

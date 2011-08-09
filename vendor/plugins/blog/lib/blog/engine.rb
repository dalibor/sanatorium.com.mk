module Blog
  class Engine < Rails::Engine
    # isolate_namespace Blog

    config.generators do |g|
      g.template_engine :haml
      g.test_framework  :rspec
    end
  end
end
module Less
  module Rails
    module Bootswatch
      class Engine < ::Rails::Engine
        engine_name 'less-rails-bootswatch'
        initializer 'less-rails-bootswatch.setup', :after => 'less-rails.after.load_config_initializers', :group => :all do |app|
          app.config.less.paths << File.join(config.root, 'vendor', 'frameworks', 'stylesheets')
        end
      end
    end
  end
end

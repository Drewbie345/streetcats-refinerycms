module Refinery
  module Cats
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Cats

      engine_name :refinery_cats

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "cats"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.cats_admin_cats_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/cats/cat',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Cats)
      end
    end
  end
end

module Refinery
  module Cats
    module Admin
      class CatsController < ::Refinery::AdminController

        crudify :'refinery/cats/cat',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end

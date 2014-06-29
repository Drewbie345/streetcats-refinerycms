module Refinery
  module Cats
    class Cat < Refinery::Core::BaseModel
      self.table_name = 'refinery_cats'

      attr_accessible :name, :description, :dob, :gender, :breed, :declawed, :photo_id, :position

      validates :name, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end

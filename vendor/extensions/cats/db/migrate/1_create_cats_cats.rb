class CreateCatsCats < ActiveRecord::Migration

  def up
    create_table :refinery_cats do |t|
      t.string :name
      t.text :description
      t.date :dob
      t.string :gender
      t.string :breed
      t.string :declawed
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-cats"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/cats/cats"})
    end

    drop_table :refinery_cats

  end

end

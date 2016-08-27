class AddDescriptionToIdioms < ActiveRecord::Migration
  def change
    add_column :idioms, :description, :text
  end
end

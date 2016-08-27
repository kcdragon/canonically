class CreateIdioms < ActiveRecord::Migration
  def change
    create_table :idioms do |t|
      t.text :name

      t.timestamps
    end
  end
end

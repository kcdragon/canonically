class CreateImplementations < ActiveRecord::Migration
  def change
    create_table :implementations do |t|
      t.references :idiom, index: true
      t.text :code

      t.timestamps
    end
  end
end

class AddExplanationToImplementations < ActiveRecord::Migration
  def change
    add_column :implementations, :explanation, :text
  end
end

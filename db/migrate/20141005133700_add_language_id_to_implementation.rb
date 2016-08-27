class AddLanguageIdToImplementation < ActiveRecord::Migration
  def change
    add_column :implementations, :language_id, :integer
  end
end

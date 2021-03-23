class RemoveTelephoneFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :telephone, :integer
  end
end

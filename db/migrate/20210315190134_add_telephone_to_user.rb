class AddTelephoneToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :telephone, :integer
  end
end

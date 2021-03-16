class AddCodepostalToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :code_postal, :integer
  end
end

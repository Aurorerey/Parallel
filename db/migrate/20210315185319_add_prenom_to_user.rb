class AddPrenomToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :prenom, :string
  end
end

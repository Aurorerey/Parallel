class AddNameToCabinet < ActiveRecord::Migration[6.0]
  def change
    add_column :cabinets, :name, :string
  end
end

class AddTelephoneToCabinet < ActiveRecord::Migration[6.0]
  def change
    add_column :cabinets, :telephone, :string
  end
end

class RemoveTelephoneFromCabinet < ActiveRecord::Migration[6.0]
  def change
    remove_column :cabinets, :telephone
  end
end

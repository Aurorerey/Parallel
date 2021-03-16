class AddDescriptionToCabinet < ActiveRecord::Migration[6.0]
  def change
    add_column :cabinets, :description, :text
  end
end

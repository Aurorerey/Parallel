class CreateCabinets < ActiveRecord::Migration[6.0]
  def change
    create_table :cabinets do |t|
      t.integer :telephone
      t.integer :cp_cabinet
      t.string :adresse_cabinet
      t.string :email
      t.string :certificate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

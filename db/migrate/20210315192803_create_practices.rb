class CreatePractices < ActiveRecord::Migration[6.0]
  def change
    create_table :practices do |t|
      t.references :activity, null: false, foreign_key: true
      t.references :cabinet, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.double :price
      t.string :description
      t.string :image
      t.string :status
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end

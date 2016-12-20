class CreateActivitis < ActiveRecord::Migration[5.0]
  def change
    create_table :activitis do |t|
      t.int :target_id
      t.string :target
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

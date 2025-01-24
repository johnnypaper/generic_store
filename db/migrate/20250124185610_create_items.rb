class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.float :price, null: false
      t.integer :quantity, default: 0
      t.text :description

      t.timestamps
    end
  end
end

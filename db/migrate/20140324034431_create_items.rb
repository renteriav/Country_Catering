class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price, :precision => 6, :scale => 2
      t.decimal :proportion, :precision => 3, :scale => 2
      t.string :unit
      t.string :category
      t.timestamps
    end

    add_index :items, :name, :unique => true
  end
end

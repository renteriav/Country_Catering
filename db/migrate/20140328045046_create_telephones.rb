class CreateTelephones < ActiveRecord::Migration
  def change
    create_table :telephones do |t|
      t.string :number
      t.string :phoneable_type
      t.integer :phoneable_id

      t.timestamps
    end
  end
end

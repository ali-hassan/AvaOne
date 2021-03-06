class CreateNfts < ActiveRecord::Migration[5.2]
  def change
    create_table :nfts do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :currency
      t.string :price
      t.string :royalities
      t.string :size
      t.integer :copies
      t.string :person_id
      t.string :person_uuid
      t.string :image
      t.boolean :active

      t.timestamps
    end
  end
end

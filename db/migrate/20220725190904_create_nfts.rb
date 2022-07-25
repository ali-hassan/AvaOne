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
      t.integer :person_id
      t.string :image

      t.timestamps
    end
  end
end

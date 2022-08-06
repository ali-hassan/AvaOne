class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.string :person_id
      t.integer :nft_id
      t.boolean :unlike
      t.boolean :status

      t.timestamps
    end
  end
end

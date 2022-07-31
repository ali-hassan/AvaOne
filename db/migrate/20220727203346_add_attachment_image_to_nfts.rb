class AddAttachmentImageToNfts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :nfts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :nfts, :image
  end
end

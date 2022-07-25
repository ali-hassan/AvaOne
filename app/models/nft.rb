# == Schema Information
#
# Table name: nfts
#
#  id          :bigint           not null, primary key
#  name        :string(255)
#  description :text(65535)
#  category    :string(255)
#  currency    :string(255)
#  price       :string(255)
#  royalities  :string(255)
#  size        :string(255)
#  copies      :integer
#  person_id   :integer
#  image       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Nft < ApplicationRecord
  belongs_to :person
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :path => ":rails_root/public/system/mercury/images/:attachment/:id/:style/:filename",
                    :url => "/system/:class/:attachment/:id/:style/:filename"

  validates_attachment_content_type :image,
                                    :content_type => IMAGE_CONTENT_TYPE

end

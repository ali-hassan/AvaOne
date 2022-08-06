# == Schema Information
#
# Table name: likes
#
#  id         :bigint           not null, primary key
#  person_id  :string(255)
#  nft_id     :integer
#  unlike     :boolean
#  status     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord
  belongs_to :nft
  belongs_to :person
end

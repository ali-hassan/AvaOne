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

require 'rails_helper'

RSpec.describe Nft, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

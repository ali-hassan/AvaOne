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

require 'rails_helper'

RSpec.describe Like, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

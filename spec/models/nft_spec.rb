# == Schema Information
#
# Table name: nfts
#
#  id                 :bigint           not null, primary key
#  name               :string(255)
#  description        :text(65535)
#  category           :string(255)
#  currency           :string(255)
#  price              :string(255)
#  royalities         :string(255)
#  size               :string(255)
#  copies             :integer
#  person_id          :string(255)
#  person_uuid        :string(255)
#  image              :string(255)
#  active             :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Nft, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

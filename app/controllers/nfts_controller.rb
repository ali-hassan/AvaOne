class NftsController < ApplicationController
  layout 'ava_one'
  def new
  end

  def index
    @nfts = Nft.where(active: true)
  end

  def create
    @nft = Nft.new nft_params
    @nft.save
    redirect_to root_path
  end

  private
  def nft_params
    params.require(:nft).permit(:image, :name, :description, :category, :currency, :price, :royalities, :size, :copies, :person_id).merge(active: true)
  end
end

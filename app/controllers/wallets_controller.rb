class WalletsController < ApplicationController

  layout 'ava_one'
  before_action :check_logged_in?, only: [:show]


  def show

  end

  def index

  end

  private
  def check_logged_in?
    logged_in?
  end
end

class Public::EndUsersController < ApplicationController
  before_action :authenticate_end_user!
  before_action :set_user, only: [:show, :edit]

  def show
  end

  def update
  end

  def mypage
  end

  def confirm_withdraw
  end

  def withdraw
  end

  private

  def set_user
    @end_user = EndUser.find(params[:id])
  end

end

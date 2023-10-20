class Public::Users::SessionsController < Devise::SessionsController
  def guest_sign_in
    end_user = EndUser.guest
    sign_in end_user
    redirect_to end_user_mypage_path(current_end_user), notice: "guestuserでログインしました。"
  end
end

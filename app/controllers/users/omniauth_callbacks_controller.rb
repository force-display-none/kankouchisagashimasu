class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook

    # Facebook上でメール使用を許可しているかの分岐
    if request.env['omniauth.auth'].info.email.blank?
      redirect_to '/users/auth/facebook?auth_type=rerequest&scope=email'
    end

    # User.from_omniauthはModel側で実装
    user = User.from_omniauth(request.env['omniauth.auth'])

    # すでにuserが登録済みかの判定
    if user
      # 登録済みならログイン
      sign_in_and_redirect user, event: :authentication
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      # 新規登録用にセッションに必要情報を格納
      if (data = request.env['omniauth.auth']['extra']['raw_info'])
        session['devise.omniauth_data'] = {
            email: data['email'],
            name: data['name'],
            facebook_uid: data['id']
        }
      end
      redirect_to new_user_registration_url
    end
  end

  def failure
    redirect_to root_path
  end
end
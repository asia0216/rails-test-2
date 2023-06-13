class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception # これは最後に追加した文 これでうまくいっている理由は全くわからん
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end

# ネットの情報を基に書いたけど、詳しい原理はわかっとらん...
# とりあえず動いてはいる

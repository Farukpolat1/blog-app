class ApplicationController < ActionController::Base
  allow_browser versions: :modern if respond_to?(:allow_browser)
  include Devise::Controllers::Helpers

  # Devise işlemleri yapılıyorsa parametre kontrolünü devreye sok
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # Kayıt olma (sign_up) ve hesap güncelleme (account_update) süreçlerine username'i ekliyoruz
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :username ])
    devise_parameter_sanitizer.permit(:account_update, keys: [ :username ])
  end
end

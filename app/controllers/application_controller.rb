class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?


  puts "SENDGRID USER: #{ENV['MANDRILL_USERNAME']}"
  puts "SENDGRID PASS: #{ENV['MANDRILL_PASSWORD']}"

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

end

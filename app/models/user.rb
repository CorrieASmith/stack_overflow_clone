class User < ActiveRecord::Base
  attr_accessor :password
  validates_confirmation_of :password
  before_save :encrypt_password

  def current_user
   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def encrypt_password
    self.password_salt = BCrypt::Engine.generate_salt
    self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  end

  def self.authenticate(email, password)
    user = User.where(email: email).first
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      UserMailer.signup_confirmation(@user).deliver
    else
      render :new
    end
  end
end

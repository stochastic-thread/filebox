class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, :presence => true, :uniqueness => true

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :remember_me)
    end

end

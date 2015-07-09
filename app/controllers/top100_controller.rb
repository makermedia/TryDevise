class Top100Controller < ApplicationController
  
  def index
    
  end

  def new
    @user = User.new
  end

  def create
    generated_password = Devise.friendly_token.first(8)
    @user = User.create!(:email => users_params, :password => generated_password)
    Top100Mailer.welcome(@user, generated_password).deliver
    @top100 =Top100.create(:user_id => @user.id)
    redirect_to top100_index_path

  end

private
  def users_params
    params.require(:users).permit(:email)
  end

end

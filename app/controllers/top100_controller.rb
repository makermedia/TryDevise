class Top100Controller < ApplicationController
  require 'screencap'

  def index
    
  end

  def new
    @user = User.new
  end

  def create
    screencap
    binding pry
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

  def screencap
    f = Screencap::Fetcher.new('new_top100_url')
  screenshot = f.fetch(
    :output => "tmp/"+"#{users_params[:email]}"+".png", # don't forget the extension!
    # # optional:
    # :div => '.header', # selector for a specific element to take screenshot of
    # :width => 1024,
    # :height => 768,
    # :top => 0, :left => 0, :width => 100, :height => 100 # dimensions for a specific area
  )
  end



end

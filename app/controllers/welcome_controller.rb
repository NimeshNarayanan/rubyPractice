class WelcomeController < ApplicationController
  @@userName = 'np@gmail.com'
  @@password = '123'

  def index
  end
  def login
    @user = params.require(:welcome).permit(:email, :encrypted_password)
    if (@@userName == @user[:email] && (@@password == @user[:encrypted_password]))
      puts  "------------------------------"+@user[:email]
      flash[:success]='welcome,you successfully logged in...'
      render 'cinemas/index'
    else
      flash[:notice] = "invalid username or password"
      render 'welcome/index'
      puts "------invalid---------------"
    end

  end
end

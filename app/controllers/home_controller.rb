class HomeController < ApplicationController
  def index
  end

  def about
  end

  def profile
    @user = current_user
  end
end

class PagesController < ApplicationController
  def welcome
    if user_signed_in?
      @person = current_user
    end
  end

  

  def achievement
  end
end

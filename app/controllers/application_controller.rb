class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def welcome
    if user_signed_in?
      @person = current_user
   		if @person.xp == nil 
     		@person.xp = 0 
  		end 
 		end 
  end
  
  def point
    @achievements = {"Register" => 1,
    "Verify Email" => 2,
    "Finish Pre-work" => 100,
    "Enter link to GitHub repository" => 5,
    "Complete first section" => 5,
    "Click a hidden bonus" => 20,
    "Complete a Quiz (one per quiz)" => 5,
    "Copy source code exactly (cheating)" => 10,
    "Full-Screen video" => 3,
    "Log Out" => 1,
    "minimize window" => 1,
    "exit window" => 1,
    "fullscreen window" => 1,
    "resize window " => 1,
    "click any white space" => 3,
    "Finish full stack development" => 1000,
    "view all your questions" => 4,
    "edit your personal info" => 5,
    "click on every link" => 40,
    "download slack" => 5,
    "download screenhero" => 5 }
    points = @achievements[params[:achievement]]
    if user_signed_in?
      @person = current_user
      if @person.xp == nil
        @person.xp = 0
      end
         @person.update(xp: (@person.xp + points)) 
        
      
    end
  end

  def achievement
  end
end

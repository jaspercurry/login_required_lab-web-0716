class SecretsController < ApplicationController

  def show
    if logged_in?
      render :show
    else
      redirect_to new_session_path
    end


  end

end

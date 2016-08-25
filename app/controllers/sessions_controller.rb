class SessionsController < ApplicationController

def new

end

def create
  if params[:name] == "" || params[:name] == nil
    redirect_to new_session_path
  else
    session[:name] = params[:name]
    redirect_to '/show'
  end
end

def show
@user = current_user

end

def destroy
  session[:name] = nil
redirect_to '/home'
end


end

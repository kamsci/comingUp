class AuthController < ApplicationController
  def callback
    provider_user = request.env['omniauth.auth']
    user = Githubstudent.find_or_create_by(provider_id: provider_user['uid'], 
      provider_name: provider_user['provider']) do |u|
      
      u.provider_token = provider_user['credentials']['token']
      # u.name = provider_user['info']['name']
      # u.email = provider_user['info']['email']
      # u.email = provider_user['info']['image']
    end

    session[:user_id] = user.id
    redirect_to root_path
  end


  def failure
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end

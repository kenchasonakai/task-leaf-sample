class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: session_params[:email])

    if user&.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: '$B%m%0%$%s$7$^$7$?(B'
    else
      render :new
    end

    private

    def session_params
      params.reqire(:session).permit(:email, :password)
    end
  end
end

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        generate_link()

        format.html {}
        format.turbo_stream {}
      else
        format.html { render :new, notice: "Something went wrong, please try again." }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :full_name, :email)
  end
end



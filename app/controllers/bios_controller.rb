class BiosController < ApplicationController
  before_action :set_user, only: [:edit, :update]

  def edit
    @bio = @user.bio
  end

  def update
    @user.bio.destroy
    @user.bio = @user.build_bio(params.require(:bio).permit(:description))
    redirect_to user_show_path(@user)
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

end

class UsersController < ApplicationController
  before_action :set_user
  before_action :check_nil_bio

  def index
  end

  def show
  end

  def new
  end

  private

    def set_user
      @user = current_user
    end

    def check_nil_bio
      if @user.bio == nil
        @user.bio = @user.build_bio(description: 'Default bio')
      end
    end
end

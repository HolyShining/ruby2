class UserController < ApplicationController
    @user = User.find(params[:id])
end

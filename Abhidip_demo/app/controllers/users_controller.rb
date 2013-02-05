class UsersController < ApplicationController
def index
	@users=User.all
end
def new
	@user=User.new
end
def create
  @user=User.create(params[:user])
 if @user.save
  UserMailer.welcome_email(@user).deliver
 else
  render :action=>'create'
 end
 redirect_to users_path
end  
def show
  @user=User.find(params[:id])
end
def edit
  @user=User.find(params[:id])
end
def update
user=User.find(params[:id])
user.update_attributes(params[:user])
user.save!
redirect_to users_path
end
def destroy
 user=User.find(params[:id])
 user.destroy
 redirect_to users_path
end
end

class UsersController < ApplicationController

 def index
  @users=User.all
 end
def new
@user=User.new
end
def create
@user=User.create(params[:user])

redirect_to new_user_path
end
def show
@user=User.find(params[:id])
end
def destroy
 user=User.find(params[:user])
end
def edit 
@user=User.find(params[:id])
end
def update
user=User/find(params[:user])
user.update_attributes
redirect_to user_path
end
end

class UsersController < ApplicationController

 def index
  @users=User.all
 end
def new
@user=User.new
end
def create
@user=User.find(param[:user])
@user.save!
redirect_to :index
end
def show
@user=User.find(param[:id])
end
end

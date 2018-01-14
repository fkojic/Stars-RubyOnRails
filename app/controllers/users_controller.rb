class UsersController < ApplicationController
	before_action @role == 2, except: [:index, :show]

  def index
  	if params[:id] == nil
  		id = session["warden.user.user.key"][0]
  	else
  		id = params[:id]
	end
	@user = User.find_by_id(id)
	@posts = Post.where(:user_id => id)
  end

  def show
  	
  end

  public
  	def role
  		@role = current_user.role_id.to_i
  	end
end

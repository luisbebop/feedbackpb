class UsersController < ApplicationController
  before_filter :login_required
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @user.feedbacks.build
  end
  
  def update
    @user = User.find(params[:id])
    if (@user.update_attributes(params[:user]))
      flash[:notice] = "Seu companheiro recebeu o feedback e lerá em breve."
      redirect_to (user_path(@user))
    else
      render :action => 'show'
    end
  end
  
  
  
  # def update
  #     @project = Project.find(params[:id])
  #     @project.update_attributes(params[:project]) ?
  #       redirect_to(project_path(@project)) : render(:action => :edit)
  #   end

end

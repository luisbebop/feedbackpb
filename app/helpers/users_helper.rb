module UsersHelper
  
  def owner
    current_user.username == @user.username
  end
  
end

class User < ActiveRecord::Base
  has_many :feedbacks
  accepts_nested_attributes_for :feedbacks, :allow_destroy => true
  
  def self.authenticate(username, password)
    return false if username.blank? || password.blank?
    Google::Base.establish_connection(username, password)
    User.find_or_create_by_username(username)
  rescue Google::LoginError
    false
  end
end


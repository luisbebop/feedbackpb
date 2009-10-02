class Feedback < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :start, :message => "Você deve digitar uma ação que a pessoa deve começar a fazer."
  validates_presence_of :continue, :message => "Você deve digitar uma ação que a pessoa deve continuar a fazer."
  validates_presence_of :stop, :message => "Você deve digitar uma ação que a pessoa deve parar de fazer."
  
end

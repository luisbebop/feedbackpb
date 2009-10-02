class Feedback < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :start, :message => "Você deve digitar uma ação que a pessoa deve começar a fazer."
  validates_presence_of :continue, :message => "Você deve digitar uma ação que a pessoa deve continuar a fazer."
  validates_presence_of :stop, :message => "Você deve digitar uma ação que a pessoa deve parar de fazer."
  validates_length_of :start, :maximum => 255, :message => "Tente resumir mais seu feedback. Ele está muito grande."
  validates_length_of :continue, :maximum => 255, :message => "Tente resumir mais seu feedback. Ele está muito grande."
  validates_length_of :stop, :maximum => 255, :message => "Tente resumir mais seu feedback. Ele está muito grande."
  
end

class ChangingFeedbackColumns < ActiveRecord::Migration
  def self.up
    change_column :feedbacks, :start, :text
    change_column :feedbacks, :stop, :text
    change_column :feedbacks, :continue, :text
  end

  def self.down
  end
end

class ChangeFeedbackColumnToText < ActiveRecord::Migration
  def self.up
	change_column :feedbacks, :start, :text, :limit => 2048
	change_column :feedbacks, :continue, :text, :limit => 2048
	change_column :feedbacks, :stop, :text, :limit => 2048
  end

  def self.down
  end
end

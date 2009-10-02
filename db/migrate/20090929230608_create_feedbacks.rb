class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.text :start, :limit => 2048
      t.text :continue, :limit => 2048
      t.text :stop, :limit => 2048
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end
end

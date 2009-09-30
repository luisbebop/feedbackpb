class CreateFeedbacks < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.string :start
      t.string :continue
      t.string :stop
      t.references :user
      t.timestamps
    end
  end

  def self.down
    drop_table :feedbacks
  end
end

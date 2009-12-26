class CreateInspirations < ActiveRecord::Migration
  def self.up
    create_table :inspirations do |t|
      t.integer :idea_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :inspirations
  end
end

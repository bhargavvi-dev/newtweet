class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
    end
  end

  def self.up
    create_table :tweets do |t|
      t.string :content
      t.datetime :created
    end
  end

  def self.down
    drop_table :tweets
  end
  
end

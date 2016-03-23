class Tweet < ActiveRecord::Base

def self.up
  create_table(:tweet) do |t| 
    t.integer :number_of_facebook_friends
  end
 
  change_column :people, :number_of_facebook_friends, :bigint    
end
 end
 
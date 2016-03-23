class Bot < ActiveRecord::Base
	
 def self.search_words words 
 	CLIENT.search(words, lang: "en")
 end		

def self.update words 
	CLIENT.update("I'm tweeting with @gem!")
 	
 end		

def self.follow words 
 	CLIENT.follow(words, lang: "en")
 end		

def self.user words 
 	CLIENT.user(words, lang: "en")
 end		

def self.followers words 
 	CLIENT.followers
 end	

 def self.friends words 
 	CLIENT.friends(words, lang: "en")
 end		

def self.user_timeline words 
 	CLIENT.user_timeline(words, lang: "en")
 end		
	
def self.home_timeline words 
 	CLIENT.home_timeline 
 end		


end

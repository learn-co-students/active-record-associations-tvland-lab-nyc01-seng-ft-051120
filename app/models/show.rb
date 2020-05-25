class Show < ActiveRecord::Base
  
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network
  def actors_list
    actors=[]
    Character.all.each do |ch|
       if ch.show==self
             actors<< "#{ch.actor.first_name} #{ch.actor.last_name}"
       end
       end
       actors
    end


end
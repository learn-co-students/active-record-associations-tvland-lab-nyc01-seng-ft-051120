class Character < ActiveRecord::Base
  belongs_to :actor 
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end
  
#   def build_show(title)
#     Show.new = (name: = title)
#   end

#   def build_network(letters)
#     Network.new = (call_letters: = letters)
#   end


end
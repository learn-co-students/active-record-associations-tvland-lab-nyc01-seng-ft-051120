class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.characters.map { |c| "#{c.actor.first_name} #{c.actor.last_name}" }
  end

  def build_network(call_letters)
    self.network = Network.new(call_letters)
  end

end

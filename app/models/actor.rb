class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
      [first_name, last_name].join(" ")
  end

  def list_roles
   self.shows.map do |show|
      "#{self.characters.find_by(show_id: show.id).name} - #{show.name}"
   end   
  end
end
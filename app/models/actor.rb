class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    actr1 = self.first_name + ' ' + self.last_name
    actr1
  end

  def list_roles
    self.shows.map do |show|
        self.characters.map do |character|
            res ="#{character.name} - #{show.name}"
            
        end.join("\n")
    end
  
  end
end
require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    #returns the first and last name of an actor
   "#{first_name} #{last_name}"
  end

  def list_roles
    # lists all of the characters that actor has alongside the show that the character is in

    "#{shows.first.characters.first.name} - #{shows.first.name}"

  end

end
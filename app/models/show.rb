require 'pry'
class Show < ActiveRecord::Base
  
  # has_many :actors
  has_many :characters
  belongs_to :network
  
  def actors_list
    binding.pry
    "#{characters.first}"
  end 
end
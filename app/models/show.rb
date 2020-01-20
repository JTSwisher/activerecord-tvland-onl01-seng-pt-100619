class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  
  def actors_list 
    actors.collect do |f|
      "#{f.first_name} #{f.last_name}" 
    end 
  end 
  
end
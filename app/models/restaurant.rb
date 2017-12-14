class Restaurant < ApplicationRecord
  has_many :reviews
  belongs_to :user
  
  def update_restaurant(names, locations, descriptions, images)
    self.name = names if names != ''
    self.location = locations if locations != ''
    self.description = descriptions if descriptions != ''
    self.image = images if images != ''
  end
  

end

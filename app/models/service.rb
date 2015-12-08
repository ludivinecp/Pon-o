class Service < ActiveRecord::Base
  belongs_to :centre
  has_many :bookings


  #  def total_price
  #   booking.number_of_people * self.price    
  # end
end

class Booking < ActiveRecord::Base
  belongs_to :centre
  belongs_to :service
  belongs_to :rider

  def total_price
    self.number_of_people * service.price    
  end
end

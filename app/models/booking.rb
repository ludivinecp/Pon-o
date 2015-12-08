class Booking < ActiveRecord::Base
  belongs_to :centre
  belongs_to :service
  belongs_to :rider
  validates_presence_of :number_of_people

  # def total_amount (number_of_people)
  # self.number_of_people * service.price   
  # end
  validates :number_of_people, presence: {
    message: "Le nombre de personne doit être renseigné."
  }
  before_action :authenticate_user!

end

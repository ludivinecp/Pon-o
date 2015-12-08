class Booking < ActiveRecord::Base
  belongs_to :centre
  belongs_to :service
  belongs_to :rider
  validates :number_of_people, presence: {
    message: "Le nombre de personne doit être renseigné."
  }
end

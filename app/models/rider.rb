class Rider < ActiveRecord::Base
  has_many :bookings
  belongs_to :user
#   validates :first_name, presence: {
#     message: "Le prénom doit être renseigné."
#   }
#   validates :last_name, presence: {
#       message: "Le nom doit être renseigné."
#     }
#   validates :level, presence: {
#       message: "Le niveau doit être renseigné."
#     }
#   validates :nickname, presence: {
#       message: "Le Pseudo doit être renseigné."
#     }
#   validates :phone, presence: {
#       message: "Le numéro de téléphone doit être renseigné."
#     }
#    validates :nickname, uniqueness: {
#       message: "Ce Pseudo est déjà pris."
#     }
end

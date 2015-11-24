class Service < ActiveRecord::Base
belongs_to :centre
has_many :bookings
end

class Booking < ActiveRecord::Base
belongs_to :centre
belongs_to :service
belongs_to :rider
end

class Poi < ActiveRecord::Base
  validates :name, presence: true
  validates :latitude, numericality: { greater_than_or_equal_to:  -90, less_than_or_equal_to:  90 }
  validates :longitude, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }

  def lat_lng_string
    "#{self.latitude}, #{self.longitude}"
  end

end

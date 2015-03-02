class District < ActiveRecord::Base
  belongs_to :province
  has_many :townships
  validates :name, uniqueness: { scope: :province_id }
end

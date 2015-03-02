class Province < ActiveRecord::Base
  has_many :districts
  has_many :townships, :through => :districts
  validates :name, uniqueness: true
end

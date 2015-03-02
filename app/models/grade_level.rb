class GradeLevel < ActiveRecord::Base
  has_many :grades
  validates :name, uniqueness: true
end

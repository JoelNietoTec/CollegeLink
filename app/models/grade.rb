class Grade < ActiveRecord::Base
  belongs_to :grade_level
  validates :name, uniqueness: true
end

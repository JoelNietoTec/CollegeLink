class SchoolType < ActiveRecord::Base
  validates :name, uniqueness: true
end

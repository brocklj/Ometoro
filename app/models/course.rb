class Course < ActiveRecord::Base
  belongs_to :page
  has_and_belongs_to_many :Topics
end

class Tag < ActiveRecord::Base
 has_many :tag_assigments
  has_many :courses, through: :tag_assigments
end

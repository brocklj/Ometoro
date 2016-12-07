# == Schema Information
#
# Table name: tag_assigments
#
#  id         :integer          not null, primary key
#  tag_id     :integer
#  course_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TagAssigment < ActiveRecord::Base
  belongs_to :tag
  belongs_to :course
end

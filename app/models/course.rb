# == Schema Information
#
# Table name: coursesedit
#
#  id         :integer          not null, primary key
#  Name       :string
#  page_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Course < ActiveRecord::Base
  belongs_to :page
  has_many :tag_assigments
  has_many :tags, through: :tag_assigments
end

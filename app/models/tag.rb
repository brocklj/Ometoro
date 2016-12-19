# == Schema Information
#
# Table name: tags
#
#  id         :integer          not null, primary key
#  name       :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ActiveRecord::Base
 has_many :tag_assigments
  has_many :courses, through: :tag_assigments
  validates :name, presence: true
  validates :text, presence: false
end

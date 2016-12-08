# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Page < ActiveRecord::Base
  has_many :courses
  validates :title, presence: true,
                    length: {minimum: 5}
  validates :visible, presence: false
end

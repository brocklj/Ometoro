# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  visible    :boolean
#

class Page < ActiveRecord::Base
  has_many :courses
  before_save :default_values
  validates :title, presence: true,
                    length: {minimum: 5}
  validates :visible, presence: false
  before_save :default_values
  validates_associated :courses
  validates :visible, inclusion: { in: ["0", "1"] }


  def default_values
    self.text ||= "Default Text stranky"
  end
end

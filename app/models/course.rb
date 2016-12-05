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
end

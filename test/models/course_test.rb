# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  Name       :string
#  page_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  body       :text
#

require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

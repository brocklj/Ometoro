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

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

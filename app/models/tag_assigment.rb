class TagAssigment < ActiveRecord::Base
  belongs_to :tag
  belongs_to :course
end

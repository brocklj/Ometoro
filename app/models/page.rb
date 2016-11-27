class Page < ActiveRecord::Base
  has_many :courses
  validates :title, presence: true,
                    length: {minimum: 5}
end

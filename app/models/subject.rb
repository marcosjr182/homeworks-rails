class Subject < ActiveRecord::Base
  belongs_to :grade
  has_many :homeworks
end

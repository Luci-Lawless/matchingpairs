class Pair < ApplicationRecord
  belongs_to :student1, :class_name => 'User'
  belongs_to :student2, :class_name => 'User'
end

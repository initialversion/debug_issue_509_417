class Course < ApplicationRecord
  # Direct associations

  belongs_to :professor

  has_many   :class_members,
             :dependent => :destroy

  # Indirect associations

  has_many   :students,
             :through => :class_members,
             :source => :student

  # Validations

end

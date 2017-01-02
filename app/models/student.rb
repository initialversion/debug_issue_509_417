class Student < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :class_members,
             :dependent => :destroy

  # Indirect associations

  has_many   :classes,
             :through => :class_members,
             :source => :class

  # Validations

end

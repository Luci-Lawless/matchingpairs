class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :student1_pairs, :class_name => 'Pair', :foreign_key => 'student1_id'
   has_many :student2_pairs, :class_name => 'Pair', :foreign_key => 'student2_id'

end

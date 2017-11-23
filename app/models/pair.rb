class Pair < ApplicationRecord
belongs_to :user

  @students = User.where(is_admin:false)

  def generate_pairs
    @students = []

    student = @students.dup
    fixed_student = student.shuffle!.pop

    student.size.times do |x|
      puts "Day #{x+1}"
      two_rows = [[fixed_student]+student[0..student.size/2-1],
      student[student.size/2..-1].reverse]
      pairs = two_rows.transpose.shuffle
      pairs.each do {|i| p i}
        student.rotate!
        puts student
      end

  end

  end

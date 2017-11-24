class Pair < ApplicationRecord

  belongs_to :user
  # require 'date'

  def self.generate_pairs
    @students = User.where(is_admin:false)

    students = @students.dup.shuffle
    fixed_student = students.pop
    tomorrow = Date.today + 1

    students.size.times do |i|
      puts "#{tomorrow + i}"
      two_rows = [[fixed_student]+students[0..students.size/2-1],
      students[students.size/2..-1].reverse]
      pairs = two_rows.transpose.shuffle
      pairs.each {|x| p x}
      students.rotate!
      puts @students
    end

  end
end

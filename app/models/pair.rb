class Pair < ApplicationRecord
  def create_pairs
    names = ["Luciana", "Isis", "Henock", "Veranika", "Tea", "Ward", "Rayta", "Ha", "Karla", "Daniil", "Anna", "Gabrijela", "Jesse", "Kyriakos", "Lara", "Lianne", "Jason", "Robin"]

    n = names.dup
    fixed_name = n.shuffle!.pop

    n.size.times do |i|
      puts "Day #{i+1}"
      two_rows = [[fixed_name]+n[0..n.size/2-1], n[n.size/2..-1].reverse]
      pairs = two_rows.transpose.shuffle
      pairs.each{|c| p c }
      n.rotate!
      puts
    end
  end
end

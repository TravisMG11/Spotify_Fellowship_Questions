def change_possibilities(amount, coin_types)
  sorting_table = Array.new(amount + 1) { |idx| Array.new(coin_types.count, idx.zero? ? 1 : nil)}

  (1..amount).each do |idx|
    (0...coin_types.count).each do |idx2|
      sorting_table[idx][idx2] =
      (idx < coin_types[idx2] ? 0 : sorting_table[idx -
      coin_types[idx2]][idx2]) + (idx2 < 1 ? 0 : sorting_table[idx][idx2 - 1])
    end
  end
  sorting_table[-1][-1]
end

p change_possibilities(4, [1,2,3]) # 4
p change_possibilities(5, [1,2,3]) # 5
p change_possibilities(10, [2,3,4]) # 5

def sort_by_string(s, t)
  letters = Hash.new(0)
  s_arr = s.chars
  t_arr = t.chars
  sorted_str = ""
  misc_lttrs = ""

  s_arr.each do |lttr|
    letters[lttr] += 1
    misc_lttrs << lttr unless t_arr.include?(lttr)
  end

  t_arr.each do |lttr|
    if letters.has_key?(lttr)
      letters[lttr].times do
        sorted_str << lttr
      end
    end
  end

  sorted_str << misc_lttrs

end

p sort_by_string("program", "grapo")
# p sort_by_string()

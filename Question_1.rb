def sort_by_string(s, t)
  letters = Hash.new(0)
  s_arr = s.chars
  t_arr = t.chars
  sorted_str = ""
  # instructions unclear, so any letters found in 's' but not in 't'
  #will be added to end in order of appearance
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

p sort_by_string("program", "grapo") #grrapom
p sort_by_string("weather", "therapyw") #theeraw
p sort_by_string("good", "odg") #oodg
p sort_by_string("abcde", "cdef") #cde

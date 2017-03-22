require 'pry'

night_shifts = ["josh", "andrew", "sal", "casey", "beth", "ilana", "lauren", "sal", "casey", "casey", "nate", "beth", "nate", "nate", "casey", "casey", "casey", "andrew"]

night_shift_hash = {}

night_shifts.each do |person|
  if !night_shift_hash[person]
    night_shift_hash[person] = night_shifts.count(person).to_i
  end
end

result = night_shift_hash.sort_by {|key, value| value.to_i}.reverse.to_h
puts result

def stock_picker(stocks)
  result = []
  largest_before_smallest = true
  next_found = true
  smallest = 0
  largest = 0
  while largest_before_smallest == true && next_found == true
    stocks.length.times do
      smallest = stocks.min
      largest = stocks.max
    end
    if smallest.nil? || largest.nil?
      p "no values found, exiting"
      exit
    end
    p "current smallest: #{smallest}, current largest: #{largest}"
    p "index of smallest: #{stocks.index(smallest)}, index of largest: #{stocks.index(largest)}"
    p "profit margin: #{largest - smallest}"
    puts "\n"
    if stocks.index(largest) > stocks.index(smallest)
      p "boolean flipped, largest is before smallest"
      largest_before_smallest = false
    elsif stocks.index(smallest) == stocks.length - 1
      p "smallest is last value, deleting smallest"
      stocks.delete_at(stocks.index(smallest))
    else
      p "smallest after largest, deleting value at #{stocks.index(largest)} and finding next largest"
      stocks.delete_at(stocks.index(largest))
    end
    puts "\n"
  end
  result.push(stocks.index(smallest), stocks.index(largest))
  p result
end

stock_picker([12,48,16,30,4,45,25,43,31,18,3,17,27,36,11,16,27,24,10,33,30,33,13,39]) # rubocop:disable Layout/SpaceAfterComma

# currently, only checks smallest value with largest values afterward, for this to be TRULY complete i'd have to find a way to
# make it check the differences between all values instead of the min and max, but don't wanna sink too much time into this atm
# will revisit at a later date

# NOTE: i saw a solution that did this in one line... fdslkjfdshvnboidsajflk

# how it should work: iterate through, find two values with biggest profit margin (smallest and largest), return said values
# smallest value HAS to come before largest value (description mentions two conditions but this satisfies both)
#
# iterate through everything but last value, find smallest
# iterate through everything but first value, find largest (via subtraction for PROFIT)
# if largest comes before smallest, disregard and find next largest
# if next largest cannot be found, disregard smallest and find next smallest, then repeat
#
# when done correctly, should give two values every time?

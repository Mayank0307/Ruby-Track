# Exercise: 17 Sum Time
# Write a method that sums up 2 24-hour time values(h:m:s). Validate the time using regular expressions. Eg: ("0:45:34","0:15:58") -> 01:01:32 ; ("11:23:07","22:53:45") -> 1 day & 10:16:52. Note: Make use of Time class

require "time"

class SumTime

  PATTERN = /^([0-2]?[0-3]|[0-1]?[0-9]):([0-5][0-9]):([0-5][0-9])/

  def sum(a, b)
    a = PATTERN.match(a)
    b = PATTERN.match(b)
    if a && b
      total_seconds = convert_to_seconds(a) + convert_to_seconds(b)
      display_result(total_seconds)
    else
      "Invalid Inputs"
    end
  end

  def convert_to_seconds(time)
    (time[1].to_i * 3600) + (time[2].to_i * 60) + (time[3].to_i)
  end

  def display_result(seconds)
    days = seconds / 86400
    remaining_seconds = seconds % 86400
    time = Time.at(remaining_seconds).utc.strftime("%T")

    day = "#{days} day & " if days > 0
    "#{day}#{time}"
  end

end
time = SumTime.new

puts time.sum("123:03:59", "23:03:59")
puts time.sum("21:59:59", "23:59:59")
puts time.sum("3:59:59", "3:06:09")

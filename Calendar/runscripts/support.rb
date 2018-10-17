require 'date'

module Calendar
  Day=24
  Week=24*Day
  Month=4*Week

  def Calendar.current
    cloak=DateTime.now
    puts "#{cloak.hour}:#{cloak.minute}"
    puts "Today is #{Date.today.month}/#{Date.today.day} #{Datecheck.day}"
    current_day=Date.today.yday()
    till_end_of_year=365-current_day
    puts "Days this year remaining:#{till_end_of_year}"
  end
  def Calendar.day_time
    puts "Day have #{Day} h"
  end
  def Calendar.week_time
    puts "Week have #{Week} h"
  end
end

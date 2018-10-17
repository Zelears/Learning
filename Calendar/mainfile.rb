$LOAD_PATH << '.'
Dir["./runscripts/*.rb"].each {|file| require file }

class Informator
  include Calendar
  include Datecheck
    def runtime
      Calendar.day_time
      Calendar.week_time
    end
    def current_date
      Calendar.current
    end
end

a1=Informator.new
a1.current_date

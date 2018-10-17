module Datecheck
attr_accessor :day, :month

  def Datecheck.day
    timenow=Time.now
    daychose=timenow.wday
    @day="error"
    case daychose
      when 0
        @day= "Sunday"
      when 1
        @day= "Monday"
      when 2
        @day= "Thuesday"
      when 3
        @day= "Wednesday"
      when 4
        @day= "Thursday"
      when 5
        @day= "Friday"
      when 6
        @day= "Saturday"
      end
    end

    def Datecheck.month
      monthchose = Date.today.month
      @month="error"
      case monthchose
      when 1
        @month= "January"
      when 2
        @month="February"
      when 3
        @month="March"
      when 4
        @month="April"
      when 5
        @month="May"
      when 6
        @month="June"
      when 7
        @month="July"
      when 8
        @month="August"
      when 9
        @month="September"
      when 10
        @month="October"
      when 11
        @month="November"
      when 12
        @month="December"
      end
    end
end

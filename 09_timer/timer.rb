class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end
  def time_string
    hours = 0
    minutes = 0
    secs = 0
    if seconds > (60 * 60)
      hours = (seconds/60)/60
      minutes = (seconds/60) % 60
      secs = seconds % 60
    elsif seconds > 60
      minutes = (seconds/60)
      secs = seconds % 60
    else
      secs = seconds
    end
    "#{add_zero(hours)}:#{add_zero(minutes)}:#{add_zero(secs)}"
  end

  def add_zero(number)
    if number < 10
      "0" + number.to_s
    else
      number
    end
  end
end
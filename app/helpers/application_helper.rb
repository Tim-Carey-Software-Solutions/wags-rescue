module ApplicationHelper

  def format_time(time)
    time.strftime("%-I:%M %p")
  end

  def format_date(date)
    date.strftime("%m/%d/%Y")
  end

  def format_day_of_week(date)
    date.strftime("%A")
  end
end

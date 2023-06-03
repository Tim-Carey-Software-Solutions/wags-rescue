module ApplicationHelper

  def format_time(time)
    time.strftime("%-I:%M %p")
  end

  def format_date(date)
    date.strftime("%-m/%-d/%Y")
  end

  def format_date_time(date_time)
    date_time.in_time_zone.strftime("%-I:%M %p %-m/%-d/%Y")
  end
end

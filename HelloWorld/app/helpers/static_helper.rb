module StaticHelper
  def current_date_and_time
    Time.now.strftime('%-l:%M %p')
  end
end

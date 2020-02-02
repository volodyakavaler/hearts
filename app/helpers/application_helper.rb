module ApplicationHelper
  def nilDate(date)
    date.nil? ? 'не указано' : Date.parse(date.to_s).strftime("%d.%m.%Y")
  end

  def nilTime(date)
    date.nil? ? 'не указано' : DateTime.parse(date.to_s).strftime("%d.%m.%Y %H:%M")
  end
end

require "csv"

CSV.generate do |csv|
  column_names = ["日付","出席", "欠席・遅刻・早退"]
  csv << column_names
  @days.each do |day|
    column_values = [day.dayname, day.member, day.absence]
    csv << column_values
  end
end
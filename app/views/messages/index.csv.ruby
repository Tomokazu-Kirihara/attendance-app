require "csv"

CSV.generate do |csv|
  @messages = Message.joins(:user)
  column_names = ["日付","名前", "内容", "事由"]
  csv << column_names
  @messages.each do |message|
    column_values = [message.dayname, message.user.name, message.absence, message.body]
    csv << column_values
  end
end
require 'rails_helper'

describe Message do
  describe '#create' do
   
    it "daynameとabsence、bodyが存在すれば登録できること" do
      message = build(:message)
      expect(message).to be_valid
    end

    it " daynameがない場合は登録できないこと" do
      message = build(:message, dayname: nil)
      message.valid?
      expect(message.errors[:dayname]).to include("を入力してください")
    end

    it "absenceがない場合は登録できないこと" do
      message = build(:message, absence: "" )
      message.valid?
      expect(message.errors[:absence]).to include("を入力してください")
    end

    it "bodyがない場合は登録できないこと" do
      message = build(:message, body: "" )
      message.valid?
      expect(message.errors[:body]).to include("を入力してください")
    end
  end
end
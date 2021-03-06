require 'rails_helper'

describe User do
  describe '#create' do
   
    it "nameとemail、passwordとpassword_confirmationが存在すれば登録できること" do
      user = build(:user)
      expect(user).to be_valid
    end

    it " nameがない場合は登録できないこと" do
      user = build(:user, name: "" )
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "emailがない場合は登録できないこと" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "passwordがない場合は登録できないこと" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "passwordが存在してもpassword_confirmationがない場合は登録できないこと" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とパスワードの入力が一致しません")
    end

    it "nameがひらがなであれば登録できること" do
      user = build(:user, name: "きりはら")
      user.valid?
      expect(user).to be_valid
    end
    
    it "nameがひらがなでなければ登録できないこと" do
      user = build(:user, name: "kirihara")
      user.valid?
      expect(user.errors[:name]).to include("ひらがなで入力して下さい")
    end

    it "emailに@が存在する場合は登録できること " do
      user = create(:user)
      another_user = build(:user, email: "k@k")
      another_user.valid?
      expect(user).to be_valid
    end

    it "emailに@がない場合は登録できないこと " do
      user = create(:user)
      another_user = build(:user, email: "kk")
      another_user.valid?
      expect(another_user.errors[:email]).to include("は不正な値です")
    end

    it "重複したemailが存在する場合は登録できない" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end
   
    it " passwordが8文字以上であれば登録できること " do
      user = build(:user, password: "password0", password_confirmation: "password0")
      user.valid?
      expect(user).to be_valid
    end

    it " passwordが7文字以下であれば登録できないこと " do
      user = build(:user, password: "p", password_confirmation: "p")
      user.valid?
      expect(user.errors[:password]).to include("は8文字以上で入力してください")
    end
  end
end
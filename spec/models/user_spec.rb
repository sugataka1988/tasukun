require 'rails_helper'
RSpec.describe User, type: :model do
  it "user_name、mail_address、passwordが入力されていてpasswordは6字以上12字以下の場合、有効" do
    user = User.new(user_name: "tanaka", mail_address: "yahoo", password: "password")
    expect(user.valid?).to eq true
  end
  it "user_nameがない場合、無効" do
    user = User.new(user_name: "", mail_address: "yahoo", password: "password")
    expect(user.valid?).to eq false
  end
  it "mail_addressがない場合、無効" do
    user = User.new(user_name: "tanaka", password: "password")
    expect(user.valid?).to eq false
  end
  it "passwordがない場合、無効" do
    user = User.new(user_name: "tanaka", mail_address: "yahoo", password: "")
    expect(user.valid?).to eq false
  end
  it "passwordの字数が5字以下の場合、無効" do
    user = User.new(user_name: "tanaka", mail_address: "yahoo", password: "pas")
    expect(user.valid?).to eq false
  end
  it "passwordの字数が13字以上の場合、無効" do
    user = User.new(user_name: "tanaka", mail_address: "yahoo", password: "passwordpassword")
    expect(user.valid?).to eq false
  end
  
end
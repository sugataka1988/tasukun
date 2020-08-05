require 'rails_helper'
RSpec.describe TaskContent, type: :model do
  it "task_contentとdesired_completion_dateが入力されている場合、有効である" do
    task_content = TaskContent.new(task_content: "naiyou", desired_completion_date: "2017/1/1 10:00")
    # expect(task_content).to be_valid
    expect(task_content.valid?).to eq true
  end
  it "task_contentがない場合、無効である" do
    task_content = TaskContent.new(task_content: "", desired_completion_date: "2017/1/1 10:00")
    expect(task_content.valid?).to eq false
  end
    
  it "desired_completion_dateがない場合、無効である" do
   task_content = TaskContent.new(task_content: "naiyou")
   expect(task_content.valid?).to eq false
  end
end
require 'rails_helper'

RSpec.describe Task, type: :model do
  describe '#create' do
    before do
      @task = FactoryBot.build(:task)
    end
    it '正しく入力されれば登録できる' do
      expect(@task).to be_valid
    end
    it 'titleが空では登録できない' do
      @task.title = ''
      @task.valid?
      expect(@task.errors.full_messages).to include("Title can't be blank")
    end
    it 'textは空でも登録できる' do
      @task.text = ''
      expect(@task).to be_valid
    end
    it 'inportanceが空では登録できない' do
      @task.inportance = ''
      @task.valid?
      expect(@task.errors.full_messages).to include("Inportance can't be blank")
    end
    it 'deadlineが空では登録できない' do
      @task.deadline = ''
      @task.valid?
      expect(@task.errors.full_messages).to include("Deadline can't be blank")
    end
    it 'deadlineが過去の日付では登録できない' do
      @task.deadline = Faker::Date.backward
      @task.valid?
      expect(@task.errors.full_messages).to include("Deadline can't be the post")
    end
    it 'hourが空では登録できない' do
      @task.hour = ''
      @task.valid?
      expect(@task.errors.full_messages).to include("Hour can't be blank")
    end
  end
end

require 'rails_helper'

RSpec.describe Board, type: :model do
  describe '#create' do
    before do
      @board = FactoryBot.build(:board)
    end
    it 'nameがあれば登録できる' do
      expect(@board).to be_valid
    end
    it 'nameが空では登録できない' do
      @board.name = ''
      @board.valid?
      expect(@board.errors.full_messages).to include("Name can't be blank")
    end
  end
end

require 'rails_helper'

RSpec.describe Sushi, type: :model do
  describe 'associations' do
    it { should belong_to :user) }
  end
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :price }
    it { should validate_presence_of :description }
    it { should validate_numericality_of(:price) }
  end
  describe '.sort_by_price' do
    it 'orders by their price ASC' do
      sushi1 = FactoryGirl.create(:sushi, price: 15.15)
      sushi2 = FactoryGirl.create(:sushi, price: 5.50)
      sushi3 = FactoryGirl.create(:sushi, price: 10.10)
      sushis = Sushi.all.sort_by_price
      expect(sushis[0].price).to eq(sushi2.price)
      expect(sushis[1].price).to eq(sushi3.price)
      expect(sushis[2].price).to eq(sushi1.price)
    end
  end
end

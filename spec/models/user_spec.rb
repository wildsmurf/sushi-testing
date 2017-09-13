require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of :email }
    it { should validate_presence_of :password }
    it { should validate_presence_of :first_name }
    it { should validate_presence_of :last_name }
  end

  describe 'associations' do
    it { should have_many :sushi }
  end

  describe 'full name' do
    it 'displays the first and last name' do
      user = FactoryGirl.create(:user)
      expect(user.full_name).to eq("Test Tester")
    end
  end
end

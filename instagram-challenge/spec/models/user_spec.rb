require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validating user name ' do 
    it " standard user name should be valid" do
      user = User.new(name: 'gina', email: 'gina@example.com')
      expect(user).to be_valid
    end 

    it 'user will not be valid if name is entered' do 
      expect(User.new(email: 'gina@example.com')).to_not be_valid
    end 

    it 'user will not  be valid if name is entered' do 
      user = User.new(name: '', email: 'gina@example.com')
      expect(user).to_not be_valid
    end 

    it 'user will not be valid if name is too long' do
      long_name = 'g' * 51
      user = User.new(name: long_name, email: 'gina@example.com')
      expect(user).to_not be_valid
    end
  end

  describe 'validating user email ' do 
    it 'standard email should be valid' do 
      user = User.new(name: 'gina', email: 'gina@example.com')
      expect(user).to be_valid
    end 

    it 'standard email with capitals should still be valid' do 
      user = User.new(name: 'gina', email: 'Gina@Example.com')
      expect(user).to be_valid
    end 

    it 'user will not be valid if no email address is entered' do 
      user = User.new(name: 'gina', email: "")
      expect(user).to_not be_valid
    end 


    it 'user will not be valid if email format is wrong' do 
      invalid_addresses = ['gina.example.com', 'gina@examplecom', 'gina@example_..com']
      invalid_addresses. each do |invalid_address|
        user = User.new(name: 'gina', email: invalid_address)
        expect(user).to_not be_valid
      end 
    end 

    it 'user will not be valided if they enter the same email as another user' do
      existing_user = User.create(name: 'gina', email: 'email@example.com') 
      new_user = User.new(name: 'peter', email: 'email@example.com')
      expect(new_user).to_not be_valid
    end

    it 'user will not be validated if they enter the same email as another user even if they use capital letters' do
      email = 'example@example.com'
      existing_user = User.create(name: 'gina', email: email) 
      new_user = User.new(name: 'peter', email: email.upcase)
      expect(new_user).to_not be_valid
    end
     
  

  end 
end



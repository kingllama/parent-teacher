require 'faker'
FactoryGirl.define do 

  factory :user, class: 'User' do
    sequence(:firstname) {Faker::Name.first_name}
    sequence(:lastname) {Faker::Name.last_name}
  end

  factory :student, :parent => :user, :class =>'Student' do
  end

  factory :teacher, :parent => :user, :class =>'Teacher' do
    sequence(:email) {Faker::Internet.email}
  end

  factory :parent, :parent => :user, :class =>'Parent' do
    sequence(:email) {Faker::Internet.email}
    sequence(:phone) {Faker::PhoneNumber.phone_number}
  end

  factory :school do
    sequence(:name) {Faker::Name.first_name}
  end

  factory :classroom do
    sequence(:subject) {Faker::Commerce.department}
    sequence(:grade) {Faker::Number.digit}
  end

end

30.times{FactoryGirl.create(:student)} 
5.times{FactoryGirl.create(:teacher)} 
30.times{FactoryGirl.create(:parent)} 
1.times{FactoryGirl.create(:school)} 
5.times{FactoryGirl.create(:classroom)} 

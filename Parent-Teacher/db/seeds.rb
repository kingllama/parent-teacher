FactoryGirl.define do 
  
  factory :student do
    sequence(:firstname) {Faker::Name.first_name}
    sequence(:lastname) {Faker::Name.last_name}

  end

  factory :teacher do
    sequence(:firstname) {Faker::Name.first_name}
    sequence(:lastname) {Faker::Name.last_name}
    sequence(:email) {Faker::Internet.email}
  end

  factory :parent do
    sequence(:firstname) {Faker::Name.first_name}
    sequence(:lastname) {Faker::Name.last_name}
    sequence(:email) {Faker::Internet.email}
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

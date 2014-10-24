require 'faker'
FactoryGirl.define do 

factory :user, class: 'User' do
    sequence(:gender) {"M"}
    sequence(:phone) {Faker::PhoneNumber.phone_number}
    sequence(:firstname) {Faker::Name.first_name}
    sequence(:lastname) {Faker::Name.last_name}
  end

  factory :student, :parent => :user, :class =>'Student' do
    sequence(:password) {"12345"}
  end

  factory :teacher, :parent => :user, :class =>'Teacher' do
    sequence(:email) {Faker::Internet.email}
    sequence(:password) {"12345"}
  end

  factory :parent, :parent => :user, :class =>'Parent' do
    sequence(:email) {Faker::Internet.email}
    sequence(:phone) {Faker::PhoneNumber.phone_number}
    sequence(:password) {"12345"}
  end

  factory :school do
    sequence(:name) {Faker::Name.first_name}
    sequence(:email) {Faker::Internet.email}
    sequence(:password) {"12345"}
  end

  factory :classroom do
    sequence(:subject) {Faker::Commerce.department}
    sequence(:grade) {Faker::Number.digit}
  end

end
10.times{FactoryGirl.create(:teacher)} 
100.times{FactoryGirl.create(:student)} 
30.times{FactoryGirl.create(:parent)} 
3.times{FactoryGirl.create(:school)} 
10.times{FactoryGirl.create(:classroom)} 


# first_teachers_students = [
#   ['David','Armstrong','darmstrong@gmail.com','M','1'],
#   ['Alexander','Adams','Aadams@gmail.com','M','1'],
#   ['Brendan','Sadler','Bsadler@gmail.com','M','1'],
#   ['Marlon','Shelley','Mshelley@gmail.com','M','1'],
#   ['Daniel','Shepard','Dshepard','M','1'],
#   ['Kieran','Oliver','Koliver@gmail.com','M','1'],
#   ['Shannon','Oden','Soden@gmail.com','F','1'],
#   ['Chloe','Hunt','ChloeH@gmail.com','F','1'],
#   ['Taylor','Dion','Tdion@gmail.com','F','1'],
#   ['Julie','Cooke','Jcooke@gmail.com','F','1'],
#   ['Hannah','Omalley','Homalley@gmail.com','F','1']
# ]
# first_teachers_students.each do |firstname, lastname, email, gender, teacher_id|
#     Student.create( firstname: firstname, lastname: lastname, email: email, gender: gender, teachers: teacher_id)
# end

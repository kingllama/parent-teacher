# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    title "MyString"
    description "MyText"
    start_time "2014-10-22 18:14:33"
    end_time "2014-10-22 18:14:33"
  end
end

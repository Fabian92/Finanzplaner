# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :finanz do
    Title "MyString"
    Datum "2013-01-14"
    Zahlungstyp "MyString"
    Wert "MyString"
  end
end

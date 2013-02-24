# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :finanzposition do
    FinanzenNr 1
    Art "MyString"
    Beschreibung "MyString"
    Wert 1.5
  end
end

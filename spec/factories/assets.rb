# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :asset do
    asset_file_name "MyString"
    asset_contet_type "MyString"
    asset_file_size 1
    asset_updated_at "2013-02-20 11:34:29"
    user_id 1
  end
end

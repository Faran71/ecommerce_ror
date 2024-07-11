FactoryBot.define do
  factory :user do
    first_name {"Test"}
    last_name {"Joe"}
    email { '@gmail' }
    password { '12345' }
    wallet {2000}
    # password_confirmation { 'password' }
  end
end

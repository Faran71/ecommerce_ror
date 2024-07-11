require 'rails_helper'

# RSpec.describe User, type: :model do
#   it { should validate_presence_of(:email) }
#   it { should validate_uniqueness_of(:email).case_insensitive }
#   # it { should validate_presence_of(:password_digest) }
#   # Add more tests as per your application requirements
# end


RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    expect(build(:user)).to be_valid
  end

  it { should validate_presence_of(:email) }
end

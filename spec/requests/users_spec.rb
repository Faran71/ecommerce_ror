require 'rails_helper'

# RSpec.describe "Users API", type: :request do
#   describe "GET /users" do
#     it "returns all users" do
#       FactoryBot.create_list(:user, 5)
#       get '/users'
#       expect(response).to have_http_status(:ok)
#       expect(JSON.parse(response.body).size).to eq(5)
#     end
#   end

#   # Add more request specs for other endpoints
# end

require 'rails_helper'

RSpec.describe "Users API", type: :request do
  describe 'GET /users' do
    it 'returns a list of users' do
      create_list(:user, 10)

      get '/users'

      expect(response).to have_http_status(:ok)
      # expect(JSON.parse(response.body).size).to eq(10)
    end
  end
end

require 'rails_helper'

RSpec.describe "Coins", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/coins/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/coins/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/coins/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/coins/update"
      expect(response).to have_http_status(:success)
    end
  end

end

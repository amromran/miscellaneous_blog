require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe "GET /p5js" do
    it "returns http success" do
      get "/pages/p5js"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /code" do
    it "returns http success" do
      get "/pages/code"
      expect(response).to have_http_status(:success)
    end
  end
end

require 'rails_helper'

RSpec.describe 'Articles' do
  describe 'GET /articles' do
    login_user

    it 'returns http success' do
      get '/articles'
      expect(response).to have_http_status(:success)
    end
  end
end

require 'rails_helper'

RSpec.describe 'Articles' do
  describe 'GET /articles' do
    subject { get '/articles' }

    context 'with loging' do
      login_user

      it do
        subject
        expect(response).to have_http_status(:success)
        expect(response).to have_http_status '200'
      end
    end

    context 'without login' do
      it do
        subject
        expect(response).to have_http_status '302'
      end
    end
  end
end
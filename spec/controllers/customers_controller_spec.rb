require 'rails_helper'

describe CustomersController, type: :controller do
  context 'when saving a user' do
    it 'returns 201' do
      post :create, body: JSON.dump(name: 'maria da silva')

      expect(response).to have_http_status(201)
    end

    it 'returns the customer created' do
      post :create, body: JSON.dump(name: 'maria da silva')

      response_body = JSON.parse(response.body)
      expect(response_body['id']).not_to be_nil
      expect(response_body['name']).to eq 'maria da silva'
    end
  end
end

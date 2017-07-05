require 'rails_helper'

RSpec.describe Api::V1::EventsController, type: :request do
  let!(:event) { create(:event,
    title: 'Beach Party',
    content: 'Enjoy your summer vacation at Boracay')}

  describe 'GET /v1/events' do
    it 'should return all the event titles and content' do
      get '/api/v1/events'

      expected_response = [{
        'id' => event.id,
        'title' => 'Beach Party',
        'content' => 'Enjoy your summer vacation at Boracay',
        'date' => events.created_at.strftime('%F %H:%M')
      }]

      expect(response_json).to eq expected_response
      expect(response.status).to eq 200
    end
  end
end

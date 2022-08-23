require 'rails_helper'

describe V1::ActivitiesController, type: :controller do
  it 'get /v1/activities and should return 200 OK' do
    get :index

    expect(response.status).to eq 200
  end

  context 'get /v1/activities/:id' do
    it 'success' do
      activity = Activity.create!(name: 'Squats', series: 3, repeat: 15,  weight: 10)

      get :show, params: { id: activity.id }

      expect(response.status).to eq 200
      expect(response.content_type).to include 'application/json'
      json_response = JSON.parse(response.body)
      expect(json_response['name']).to eq 'Squats'
      expect(json_response['series']).to eq '3'.to_i
      expect(json_response.keys).not_to include 'created_at'
    end
  end
  
end

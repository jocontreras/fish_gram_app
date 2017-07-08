require 'rails_helper'

RSpec.describe Api::V1::RegistrationsController, type: :request do
    let(:headers) { { HTTP_ACCEPT: 'application/json' } }
    describe 'create member' do
        it 'creates member when passed in valid attributes' do
            post '/api/v1/auth', params: { email: 'user@random.com',
                                           password: 'password',
                                           password_confirmation: 'password' },
                                 headers: headers
            expect(response).to have_http_status(200)
            expect(User.last.email).to eq 'user@random.com'
        end
    end

    describe 'create admin' do
        it 'creates admin when passed in valid attributes' do
            post '/api/v1/auth', params: { email: 'admin@random.com',
                                           password: 'password',
                                           password_confirmation: 'password',
                                           role: 'admin' },
                                 headers: headers
            expect(response).to have_http_status(200)
            expect(User.last.role).to eq 'admin'
        end

        describe 'create member with email missing' do
            it 'returns error when email is missing' do
                post '/api/v1/auth', params: { email: '',
                                               password: 'password',
                                               password_confirmation: 'password' },
                                     headers: headers
                expect(response).to have_http_status(422)
            end
        end

        describe 'create member with invalid password confirmation' do
            it 'returns error if password confirmation is not a match' do
                post '/api/v1/auth', params: { email: 'user@random.com',
                                               password: 'password',
                                               password_confirmation: 'word' },
                                     headers: headers
                expect(response).to have_http_status(422)
            end
        end
    end
end

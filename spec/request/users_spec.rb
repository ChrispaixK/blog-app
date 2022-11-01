require 'rails_helper'
RSpec.describe 'Users', type: :request do
  before(:example) do
    @user = User.create(name: 'John Doe', id: 1)
    @post = Post.create(user: @user, title: 'Post title', text: 'Random text in test')
  end

  describe 'Get and checks User ' do
    before(:example) { get users_path }

    it 'Checks if the status response is succes(OK)' do
      expect(response.status).to be(200)
    end

    it 'Checks if it render the correct template' do
      expect(response).to render_template(:index)
    end

    it 'Check the placeholder text' do
      expect(response.body).to include('<h1>Users</h1>')
    end
  end

  describe 'Check specific user' do
    before(:example) do
      get '/users/1'
    end

    it 'Checks if the status response is succes(OK)' do
      expect(response.status).to be(200)
    end

    it 'Checks if it render the correct template' do
      expect(response).to render_template(:show)
    end
  end
end

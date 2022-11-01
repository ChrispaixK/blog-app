require 'rails_helper'
RSpec.describe PostsController, type: :request do
  before(:example) do
    @user = User.create(name: 'Chrispaix Kaze', id: 1)
    @post = Post.create(author: @user, title: 'Post title', text: 'Random text in post for test purpose')
  end

  describe 'Check post main page' do
    before(:example) do
      before(:example) { get users_posts_path(1) }

      it 'Renders the correct template' do
        expect(response).to render_template(:index)
      end
      it 'Checks if the status response is succes(OK)' do
        expect(response.status).to be(200)
      end

      it 'Check the if the rendered template is correct' do
        expect(response.body).to include('<h1>User Posts page</h1>')
      end
    end
  end

  describe 'Check posts for specific user' do
    before(:example) do
      get '/users/1/posts/:id'
      expect(response).to render_template(:show)
    end
  end
end

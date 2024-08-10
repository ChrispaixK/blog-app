# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Users and user page contents', type: :feature do
  describe 'GET /' do
    describe 'Check the user show page' do
      it 'Check if the users profile picture is present' do
        visit '/users/1'
        img = page.find('img')
        expect(img['src']).to have_content('https://i.postimg.cc/yx8BkpTj/4.png')
      end

      it 'Check the username' do
        visit '/users/1'
        username = page.find('.user-infos')
        expect(username).to have_content('Abdel Oumer Ali')
      end

      it 'Check the users posts counter' do
        visit '/users/1'
        posts_counter = page.find('.user-infos')
        expect(posts_counter).to have_content('Number of Posts : 1')
      end

      it 'Check the users bio' do
        visit '/users/1'
        bio = page.find('.bio')
        expect(bio).to have_content('Tech Enthousiast.')
      end
    end
  end
end

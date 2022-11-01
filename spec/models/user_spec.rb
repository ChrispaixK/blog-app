require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(
      name: 'Chrispaix Kaze', photo: 'https://i.postimg.cc/yx8BkpTj/4.png ',
      bio: 'Hey there, I am Chrispaix Kaze software developer.', posts_counter: 0
    )
  end

  before { subject.save }

  it 'Check if it accept to add a name' do
    subject.name = 'Chrispaix Kaze'
    expect(subject).to be_valid
  end

  it 'Check if it accept posts_counter' do
    subject.posts_counter = 8
    expect(subject).to be_valid
  end

  it 'Check if it disallow blank name input' do
    subject.name = ''
    expect(subject).to_not be_valid
  end

  it 'Check if it disallow non numerical posts_counter' do
    subject.posts_counter = 'count'
    expect(subject).to_not be_valid
  end

  it 'Check if it disallow negative posts_counter' do
    subject.posts_counter = -1
    expect(subject).to_not be_valid
  end
end

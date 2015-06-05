require 'rails_helper'

describe Post do

  let(:jeffs_post) { Post.new(author: 'Jeff', description: 'My lovely Post') }
 
  it 'must have an author' do 
    post = Post.new
    expect(post.valid?).to eq false
  end

  it 'must have a post description' do
    post = Post.new(author: 'Jeff')
    expect(post.valid?).to eq false
  end
end

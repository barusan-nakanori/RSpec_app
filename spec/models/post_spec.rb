require 'rails_helper'

RSpec.describe Post, type: :model do

	context 'データが正しく保存される' do
		before do
				@post = Post.new
				@post.title = '今日の天気'
				@post.content = '晴れ'
				@post.save
		end

		it '全て入力されているので保存される' do
			expect(@post).to be_valid
		end
	end

	context 'データが正しく保存されない' do
		before do 
			@post = Post.new
			@post.title = ''
			@post.content = 'くもり'
			@post.save
		end

		it 'titleが入力されていないので保存されない' do
			expect(@post).to be_invalid
			expect(@post.errors[:title]).to include("can't be blank")
		end
	end
end

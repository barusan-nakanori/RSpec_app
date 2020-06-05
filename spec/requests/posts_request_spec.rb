require 'rails_helper'

RSpec.describe "Posts", type: :request do
	describe '新規投稿テストに関するテスト' do
		context '新規投稿ページが正しく表示される' do
			before do
				get posts_new_path
			end

			it 'リクエストは200 OK となる' do
				expect(response.status).to eq 200
			end

			it 'ページ内容が正しいこと' do
				expect(response.body).to include('ようこそ新規投稿ページへ')
			end
		end
	end

end

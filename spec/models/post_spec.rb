require 'rails_helper'
RSpec.describe Post, type: :model do
  describe '#create' do
    before do
      @post = FactoryBot.build(:post)
    end
    describe '投稿' do
      context '投稿がうまくいくとき' do
        it 'imageとuser、titleとtextが存在すれば登録できる' do
          expect(@post).to be_valid
        end
      end

      context '投稿がうまくいかないとき' do
        it 'imageが空だと保存できない' do
          @post.image = nil
          @post.valid?
          expect(@post.errors.full_messages).to include('画像を入力してください')
        end
        it 'titleが空だと保存できない' do
          @post.title = ''
          @post.valid?
          expect(@post.errors.full_messages).to include('タイトルを入力してください')
        end
        it 'textが空だと保存できない' do
          @post.text = ''
          @post.valid?
          expect(@post.errors.full_messages).to include('投稿内容を入力してください')
        end
      end
    end
  end
end
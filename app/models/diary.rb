class Diary < ApplicationRecord
  has_many :records, dependent: :destroy
  # 画像投稿機能のActiveStorageでの書き方
  has_one_attached :image
end

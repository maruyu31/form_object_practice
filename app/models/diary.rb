class Diary < ApplicationRecord
  has_many :records, dependent: :destroy
  
  # 画像投稿機能のActiveStorageでの書き方
  has_one_attached :image

  # ActiveStorageのバリデーション実装
  validate :image_type

  private

  def image_type
    if !image.blob.content_type.in?(%('image/jpeg image/png'))
      image.purge #rails6では必要ない
      errors.add(:image, 'ははJPEGまたはPNG形式を選択してアップロードしてください')
    end
  end
end

class PostDiary

  include ActiveModel::Model

  attr_accessor :title, :image, :text

  validates :title, presence: true

  def save
    diary = Diary.create(title: title, image: image)
    diary.records.create(text: text)
  end
end

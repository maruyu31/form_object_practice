class PostDiary

  include ActiveModel::Model

  attr_accessor :title, :image, :text

  validates :title, presence: true

  def save
    diary = Diary.create(title: title, image: image)
    Record.create(text: text, diary_id: diary.id)
  end
end
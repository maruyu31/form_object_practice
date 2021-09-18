class DiariesController < ApplicationController
  def new
    @diary = PostDiary.new
  end

  def index
    @diaries = Diary.all
  end

  def show
    @diary = Diary.find(params[:id])
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def create
    @diary = PostDiary.new(diary_params)
    @diary.save
    binding.pry
    redirect_to root_path
  end

  def update

  end

  def delete

  end

  private

  def diary_params
    params.require(:post_diary).permit(:title, :image, :text)
  end

end

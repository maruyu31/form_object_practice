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
    if @diary.save
      redirect_to root_path
    else
      render :new
    end
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

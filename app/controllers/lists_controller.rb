class ListsController < ApplicationController
  def new
    # viewへ渡すためのインスタンス変数に空のmodelオブジェクトを生成
    @list = List.new
  end

  def create
    list = List.new(list_params) #データを受け取って新規登録するインスタンス
    list.save #データベースに保村
    redirect_to '/top' # topへリダイレクト
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end

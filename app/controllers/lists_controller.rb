class ListsController < ApplicationController
  def new
    # viewへ渡すためのインスタンス変数に空のmodelオブジェクトを生成
    @list = List.new
  end

  def create
    list = List.new(list_params) #データを受け取って新規登録するインスタンス
    list.save #データベースに保村
    redirect_to list_path(list.id) #リダイレクト
  end

  def index #一覧画面用のアクション
    @lists = List.all #.all: テーブルの全てレコードを取得
  end

  def show
    @list = List.find(params[:id]) #idカラムを参照してレコードを取得
  end

  def edit
  end

  private
  def list_params
    params.require(:list).permit(:title, :body)
  end
end

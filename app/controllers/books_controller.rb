class BooksController < ApplicationController

  def new
  # @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    # 保存
   if @book.save
    # フラッシュメッセージ表示用
    flash[:notice] = "Book was successfully created."
    # 詳細画面へのリダイレクト
    redirect_to book_path(@book.id)
   else
    @books = Book.all
    render :index
   end
  end


  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    # @bookにBookテーブルのIDが(params[:id])のレコードを取得して格納
    @book = Book.find(params[:id])
  end

  def edit
    # findメソッドでデータを取得　@bookに格納
    @book = Book.find(params[:id])
  end

  def update
    # bookにBookテーブルのIDが(params[:id])のレコードを取得して格納
    @book = Book.find(params[:id])
    # 格納されたレコードを更新
    if @book.update(book_params)
      flash[:notice] = "Book was successfully updated."
      redirect_to book_path(@book.id)
    else
      render :edit
    end
  end

  def destroy
    # bookにBookテーブルのIDが(params[:id])のレコードを取得して格納
    book = Book.find(params[:id])
    # 削除
    book.destroy
    # 一覧画面にリダイレクト
    redirect_to '/books'
  end

private

def book_params
  params.require(:book).permit(:title, :body)
end


end

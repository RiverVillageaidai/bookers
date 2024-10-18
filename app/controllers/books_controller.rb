class BooksController < ApplicationController
  
  def new
  # @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
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
    book = Book.find(params[:id])
    # 格納されたレコードを更新
    book.update(book_params)
    redirect_to book_path(book.id)
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

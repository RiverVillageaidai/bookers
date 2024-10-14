class BooksController < ApplicationController
  def new
    @Book = Book.new

  end

  def create
    @Book = Book.new(book_params)

    if @book.save

      flash[:notice] ="投稿成功あとで変更します"

      redirect_to book_path(@book.id)

    else
      render :index
    end
  end

  def index
    @Book = Book.new
  end

  def show
  end

  def edit
  end
  
end

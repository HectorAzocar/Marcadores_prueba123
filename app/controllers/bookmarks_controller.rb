class BookmarksController < ApplicationController
  before_action :set_bookmark, only: %i[ show edit update destroy ]

  def index
    @bookmarks = Bookmark.all
    @bookmark = Bookmark.new
    #Tipos y Categorias
    @categories = Category.all
    @types = Type.all

    #Categorias publicas
    @public_categories = Category.where("public is true")
    #respuesta
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def edit
    @categories = Category.all
    @types = Type.all
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    respond_to do |format|
      if @bookmark.save
        format.html { redirect_to @bookmark, notice: "El marcador fue creado con éxito" }
        format.js {}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.js {}
      end
    end
  end

  def update
    respond_to do |format|
      if @bookmark.update(bookmark_params)
        format.html { redirect_to root_path, notice: "El marcador fue editado con éxito" }
        format.js { @bookmark }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.js { render :index }
      end
    end
  end

  def destroy
    @bookmark.destroy
    respond_to do |format|
      format.html { redirect_to bookmarks_url, notice: "El marcador fue borrado con éxito" }
      format.js {}
    end
  end

  private
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    def bookmark_params
      params.require(:bookmark).permit(:url, :type_id, :category_id)
    end
end

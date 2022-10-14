class FlatsController < ApplicationController
  before_action :find, except: %i[index new create]

  def index
    @flats = Flat.all
    if params[:query].present?
      # Query inside where
      @flats = Flat.where("name LIKE '%#{params[:query]}%'")
    end
  end

  def show; end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(article_params)
    if @flat.save
      redirect_to flats_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @flat.update(article_params)
    redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def article_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :picture_url)
  end

  def find
    @flat = Flat.find(params[:id])
  end
end

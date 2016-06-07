class FavoritesController < ProtectedController
  before_action :set_favorite, only: [:show, :update, :destroy]

  # GET /favorites
  # GET /favorites.json
  def index
    @favorites = current_user.favorites

    render json: @favorites
  end

  # GET /favorites/1
  # GET /favorites/1.json
  def show
    render json: @favorite
  end

  # POST /favorites
  # POST /favorites.json
  def create
    @favorite = current_user.favorites.build(favorite_params)

    if @favorite.save
      render json: @favorite, status: :created, location: @favorite
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /favorites/1
  # PATCH/PUT /favorites/1.json
  def update
    # @favorite = current_user.favorites.find(params[:id])

    if @favorite.update(favorite_params)
      render json: @favorite, status: :ok
    else
      render json: @favorite.errors, status: :unprocessable_entity
    end
  end

  # DELETE /favorites/1
  # DELETE /favorites/1.json
  def destroy
    @favorite.destroy

    head :no_content
  end

  private

    def set_favorite
      @favorite = current_user.favorites.find(params[:id])
    end

    def favorite_params
      params.require(:favorite).permit(:tag, :name)
    end

    private :set_favorite, :favorite_params, :current_user
end

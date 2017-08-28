class GamesController < ProtectedController
  before_action :set_game, only: [:show]

  # GET /games
  def index
    @games = Game.all

    render json: @games
  end

  # GET /games/1
  def show
    render json: @game
  end

  # POST /games
  def create
    @game = Game.new(game_params)

    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    @user = User.find(params[:id])
    @id = params[:game][:id]
    @game = @user.games.find(@id)
    @game.update(game_params)
  end

  # DELETE /games/1
  def destroy
    @user = User.find(params[:id])
    @id = params[:game][:id]
    @game = @user.games.find(@id)
    @game.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @user = User.find(params[:id])
      @game = @user.games
      # @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.require(:game).permit(:game_name, :game_platform, :game_genre, :game_year, :user_id)
    end
end

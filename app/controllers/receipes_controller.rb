class ReceipesController < ApplicationController
  before_action :set_receipe, only: [:show, :edit, :update, :destroy]
  before_action :set_collection

  # GET /receipes
  # GET /receipes.json
  def index
    if params[:collection_id] != nil
      @receipes = Receipe.where(collection_id: params[:collection_id])
    else
      @receipes = Receipe.all
    end
    

    # @receipes = Receipe.all
    # raise
  end

  # GET /receipes/1
  # GET /receipes/1.json
  def show
  end

  # GET /receipes/new
  def new
    @receipe = Receipe.new
  end

  # GET /receipes/1/edit
  def edit
  end

  # POST /receipes
  # POST /receipes.json
  def create
    @receipe = Receipe.new(receipe_params)
    @receipe.collection_id = @collection.id

    respond_to do |format|
      if @receipe.save
        format.html { redirect_to collection_receipe_path(@collection,@receipe), notice: 'Receipe was successfully created.' }
        format.json { render :show, status: :created, location: @receipe }
      else
        format.html { render :new }
        format.json { render json: @receipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receipes/1
  # PATCH/PUT /receipes/1.json
  def update
    respond_to do |format|
      if @receipe.update(receipe_params)
        format.html { redirect_to collection_receipe_path(@collection,@receipe), notice: 'Receipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @receipe }
      else
        format.html { render :edit }
        format.json { render json: @receipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receipes/1
  # DELETE /receipes/1.json
  def destroy
    @receipe.destroy
    respond_to do |format|
      format.html { redirect_to collection_receipes_path(@collection), notice: 'Receipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receipe
      @receipe = Receipe.find(params[:id])
    end

    def set_collection
      @collection = Collection.find(params[:collection_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receipe_params
      params.require(:receipe).permit(:receipe_name, :image_url, :prep_time_minutes, :cooking_time_minutes, :difficulty_level, :servings, :ingredients, :how_to_cook, :collection_id)
    end
end

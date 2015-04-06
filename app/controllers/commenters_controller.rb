class CommentersController < ApplicationController
  before_action :set_commenter, only: [:show, :edit, :update, :destroy]

  # GET /commenters
  # GET /commenters.json
  def index
    @commenters = Commenter.all
  end

  # GET /commenters/1
  # GET /commenters/1.json
  def show
  end

  # GET /commenters/new
  def new
    @commenter = Commenter.new
  end

  # GET /commenters/1/edit
  def edit
  end

  # POST /commenters
  # POST /commenters.json
  def create
    @commenter = Commenter.new(commenter_params)

    respond_to do |format|
      if @commenter.save
        format.html { redirect_to @commenter, notice: 'Commenter was successfully created.' }
        format.json { render action: 'show', status: :created, location: @commenter }
      else
        format.html { render action: 'new' }
        format.json { render json: @commenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commenters/1
  # PATCH/PUT /commenters/1.json
  def update
    respond_to do |format|
      if @commenter.update(commenter_params)
        format.html { redirect_to @commenter, notice: 'Commenter was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @commenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commenters/1
  # DELETE /commenters/1.json
  def destroy
    @commenter.destroy
    respond_to do |format|
      format.html { redirect_to commenters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commenter
      @commenter = Commenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commenter_params
      params.require(:commenter).permit(:name, :comment, :has_cat)
    end
end

class ZwierzaksController < ApplicationController
  before_action :set_zwierzak, only: [:show, :edit, :update, :destroy]

  # GET /zwierzaks
  # GET /zwierzaks.json
  def index
    if params[:search]
				@zwierzaks = Zwierzak.search(params[:search]).paginate(:page => params[:page], :per_page => 20)
				else
        @zwierzaks = Zwierzak.paginate(:page => params[:page], :per_page => 20)
    end
  end

  # GET /zwierzaks/1
  # GET /zwierzaks/1.json
  def show
  end

  # GET /zwierzaks/new
  def new
    @zwierzak = Zwierzak.new
  end

  # GET /zwierzaks/1/edit
  def edit
  end

  # POST /zwierzaks
  # POST /zwierzaks.json
  def create
    @zwierzak = Zwierzak.new(zwierzak_params)

    respond_to do |format|
      if @zwierzak.save
        format.html { redirect_to @zwierzak, notice: 'Zwierzak was successfully created.' }
        format.json { render :show, status: :created, location: @zwierzak }
      else
        format.html { render :new }
        format.json { render json: @zwierzak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zwierzaks/1
  # PATCH/PUT /zwierzaks/1.json
  def update
    respond_to do |format|
      if @zwierzak.update(zwierzak_params)
        format.html { redirect_to @zwierzak, notice: 'Zwierzak was successfully updated.' }
        format.json { render :show, status: :ok, location: @zwierzak }
      else
        format.html { render :edit }
        format.json { render json: @zwierzak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zwierzaks/1
  # DELETE /zwierzaks/1.json
  def destroy
    @zwierzak.destroy
    respond_to do |format|
      format.html { redirect_to zwierzaks_url, notice: 'Zwierzak was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zwierzak
      @zwierzak = Zwierzak.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zwierzak_params
      params.require(:zwierzak).permit(:imie, :gatunek, :rasa, :data_ur)
    end
end

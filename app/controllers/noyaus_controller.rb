class NoyausController < ApplicationController
  before_action :set_noyau, only: [:show, :edit, :update, :destroy]

  # GET /noyaus
  # GET /noyaus.json
  def index
    @noyaus = Noyau.all
  end

  # GET /noyaus/1
  # GET /noyaus/1.json
  def show
  end

  # GET /noyaus/new
  def new
    @noyau = Noyau.new
  end

  # GET /noyaus/1/edit
  def edit
  end

  # POST /noyaus
  # POST /noyaus.json
  def create
    @noyau = Noyau.new(noyau_params)

    respond_to do |format|
      if @noyau.save
        format.html { redirect_to @noyau, notice: 'Noyau was successfully created.' }
        format.json { render :show, status: :created, location: @noyau }
      else
        format.html { render :new }
        format.json { render json: @noyau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /noyaus/1
  # PATCH/PUT /noyaus/1.json
  def update
    respond_to do |format|
      if @noyau.update(noyau_params)
        format.html { redirect_to @noyau, notice: 'Noyau was successfully updated.' }
        format.json { render :show, status: :ok, location: @noyau }
      else
        format.html { render :edit }
        format.json { render json: @noyau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /noyaus/1
  # DELETE /noyaus/1.json
  def destroy
    @noyau.destroy
    respond_to do |format|
      format.html { redirect_to noyaus_url, notice: 'Noyau was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_noyau
      @noyau = Noyau.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def noyau_params
      params.require(:noyau).permit(:role, :nom, :prenom, :parole, :photo , :photo_name, :photo_uid)
    end
end

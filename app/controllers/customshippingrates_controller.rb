class CustomshippingratesController < ApplicationController
  before_action :set_customshippingrate, only: %i[ show edit update destroy ]

  # GET /customshippingrates or /customshippingrates.json
  def index
    @customshippingrates = Customshippingrate.all
  end

  # GET /customshippingrates/1 or /customshippingrates/1.json
  def show
  end

  # GET /customshippingrates/new
  def new
    @customshippingrate = Customshippingrate.new
  end

  # GET /customshippingrates/1/edit
  def edit
  end

  # POST /customshippingrates or /customshippingrates.json
  def create
    @customshippingrate = Customshippingrate.new(customshippingrate_params)

    respond_to do |format|
      if @customshippingrate.save
        format.html { redirect_to customshippingrate_url(@customshippingrate), notice: "Customshippingrate was successfully created." }
        format.json { render :show, status: :created, location: @customshippingrate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customshippingrate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customshippingrates/1 or /customshippingrates/1.json
  def update
    respond_to do |format|
      if @customshippingrate.update(customshippingrate_params)
        format.html { redirect_to customshippingrate_url(@customshippingrate), notice: "Customshippingrate was successfully updated." }
        format.json { render :show, status: :ok, location: @customshippingrate }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customshippingrate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customshippingrates/1 or /customshippingrates/1.json
  def destroy
    @customshippingrate.destroy

    respond_to do |format|
      format.html { redirect_to customshippingrates_url, notice: "Customshippingrate was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customshippingrate
      @customshippingrate = Customshippingrate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customshippingrate_params
      params.require(:customshippingrate).permit(:nombre_tarifa, :comuna, :etiqueta, :precio)
    end
end

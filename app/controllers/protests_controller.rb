class ProtestsController < ApplicationController
  before_action :set_protest, only: %i[ show edit update destroy ]

  # GET /protests or /protests.json
  def index
    @protests = Protest.all.order(created_at: :desc)
  end

  # GET /protests/new
  def new
    @protest = Protest.new
  end

  # GET /protests/1/edit
  def edit
  end

  # POST /protests or /protests.json
  def create
    @protest = Protest.new(protest_params)

    respond_to do |format|
      if @protest.save
        format.html { redirect_to protests_path, notice: "המחאה נוצרה בהצלחה." }
        format.json { render :show, status: :created, location: @protest }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @protest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /protests/1 or /protests/1.json
  def update
    respond_to do |format|
      if @protest.update(protest_params)
        format.html { redirect_to protests_path, notice: "המחאה עודכנה בהצלחה." }
        format.json { render :show, status: :ok, location: @protest }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @protest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /protests/1 or /protests/1.json
  def destroy
    @protest.destroy
    respond_to do |format|
      format.html { redirect_to protests_url, notice: "המחאה נמחקה בהצלחה." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_protest
      @protest = Protest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def protest_params
      params.require(:protest).permit(:description, :location, :contact_organization, :contact_name, :contact_phone, :present, :num_in_series, :is_repeated, :kind, images: [])
    end
end

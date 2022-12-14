class MarkersController < ApplicationController
  before_action :set_marker, only: %i[ show edit update destroy ]

helper_method :sort_column, :sort_column

  # GET /markers or /markers.json
  def index
    @markers = Marker.order(sort_column + " " + sort_direction).paginate(:per_page => 2, :page => params[:page])
  end



  # GET /markers/1 or /markers/1.json
  def show
  end

  # GET /markers/new
  def new
    @marker = Marker.new
  end

  # GET /markers/1/edit
  def edit
  end

  def search
    @marker = Marker.where("marker LIKE ?","%" + params[:q] + "%")
  end


  # POST /markers or /markers.json
  def create
    @marker = Marker.new(marker_params)

    respond_to do |format|
      if @marker.save
        format.html { redirect_to marker_url(@marker), notice: "Marker was successfully created." }
        format.json { render :show, status: :created, location: @marker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @marker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /markers/1 or /markers/1.json
  def update
    respond_to do |format|
      if @marker.update(marker_params)
        format.html { redirect_to marker_url(@marker), notice: "Marker was successfully updated." }
        format.json { render :show, status: :ok, location: @marker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @marker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /markers/1 or /markers/1.json
  def destroy
    @marker.destroy

    respond_to do |format|
      format.html { redirect_to markers_url, notice: "Marker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marker
      @marker = Marker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marker_params
      params.require(:marker).permit(:marker, :platform, :frequency, :livemetrics, :customerimpact, :description)
    end

    private
    def sort_column
      Marker.column_names.include?(params[:sort]) ? params[:sort] : "markers"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end

end

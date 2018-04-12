class DeliversController < ApplicationController
  before_action :set_deliver, only: [:show, :edit, :update, :destroy,:done, :approve, :cancel]

  # GET /delivers
  # GET /delivers.json
  def index
    @per_page = params[:per_page] || Deliver.per_page || 20
    @delivers = Deliver.all.paginate(:page => params[:page], :per_page => @per_page)
    respond_to do |format|
      format.html
      format.csv { send_data @delivers.to_csv }
    end
  end

  # GET /delivers/1
  # GET /delivers/1.json
  def show
    @user = User.all
  end

  # GET /delivers/new
  def new
    @deliver = Deliver.new
    @user = User.all
  end

  # GET /delivers/1/edit
  def edit
    @user = User.all
  end

  # POST /delivers
  # POST /delivers.json
  def create
    @deliver = Deliver.new(deliver_params)
    @user = User.all
    respond_to do |format|
      if @deliver.save
        format.html { redirect_to @deliver, notice: 'Deliver was successfully created.' }
        format.json { render :show, status: :created, location: @deliver }
      else
        format.html { render :new }
        format.json { render json: @deliver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivers/1
  # PATCH/PUT /delivers/1.json
  def update
    @user = User.all
    respond_to do |format|
      if @deliver.update(deliver_params)
        Rails.logger.debug @deliver
        format.html { redirect_to @deliver, notice: 'Deliver was successfully updated.' }
        format.json { render :show, status: :ok, location: @deliver }
      else
        format.html { render :edit }
        format.json { render json: @deliver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivers/1
  # DELETE /delivers/1.json
  def destroy
    @deliver.destroy
    respond_to do |format|
      format.html { redirect_to delivers_url, notice: 'Deliver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def done
    @deliver.state = 'done'
    @deliver.save
    redirect_back(fallback_location: root_path)
  end

  def approve
    @deliver.state = 'approved'
    @deliver.save
    redirect_back(fallback_location: root_path)
  end

  def cancel
    @deliver.state = 'cancel'
    @deliver.save
    redirect_back(fallback_location: root_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deliver
      @deliver = Deliver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deliver_params
      params.require(:deliver).permit(:name, :address, :objectlist, :is_deliverd, :driver, :approved, :state)
    end
end

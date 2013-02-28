class FianzensController < InheritedResources::Base
# GET /Fianzens
  # GET /Fianzens.json
   load_and_authorize_resource

  def index
    @Fianzens = Fianzen.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @Fianzens }
    end
  end

  # GET /Fianzens/1
  # GET /Fianzens/1.json
  def show
    @Fianzen = Fianzen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @Fianzen }
    end
  end

  # GET /Fianzens/new
  # GET /Fianzens/new.json
  def new
    @Fianzen = Fianzen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @Fianzen }
    end
  end

  # GET /Fianzens/1/edit
  def edit
    @Fianzen = Fianzen.find(params[:id])
  end

  # POST /Fianzens
  # POST /Fianzens.json
  def create
    @Fianzen = Fianzen.new(params[:Fianzen])
    @Fianzen.users << current_user

    respond_to do |format|
      if @Fianzen.save
        format.html { redirect_to @Fianzen, notice: 'Fianzen was successfully created.' }
        format.json { render json: @Fianzen, status: :created, location: @Fianzen }
      else
        format.html { render action: "new" }
        format.json { render json: @Fianzen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Fianzens/1
  # PUT /Fianzens/1.json
  def update
    @Fianzen = Fianzen.find(params[:id])

    respond_to do |format|
      if @Fianzen.update_attributes(params[:Fianzen])
        format.html { redirect_to @Fianzen, notice: 'Fianzen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @Fianzen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Fianzens/1
  # DELETE /Fianzens/1.json
  def destroy
    @Fianzen = Fianzen.find(params[:id])
    @Fianzen.destroy

    respond_to do |format|
      format.html { redirect_to Fianzens_url }
      format.json { head :no_content }
    end
  end
end

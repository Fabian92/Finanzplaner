class FinanzensController < InheritedResources::Base
  # GET /finanzens
  # GET /finanzens.json
   #load_and_authorize_resource

  def index
      @finanzens = Finanzen.all 
      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @finanzens }
    end
  end

  # GET /finanzens/1
  # GET /finanzens/1.json
  def show
    @finanzen = Finanzen.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @finanzen }
    end
  end

  # GET /finanzens/new
  # GET /finanzens/new.json
  def new
    @finanzen = Finanzen.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @finanzen }
    end
  end

  # GET /finanzens/1/edit
  def edit
    #@finanzen = Finanzen.find(params[:id])
  end

  # POST /finanzens
  # POST /finanzens.json
  def create
    @finanzen = Finanzen.new(params[:finanzen])
    #@finanzen.users << current_user

    respond_to do |format|
      if @finanzen.save
        format.html { redirect_to @finanzen, notice: 'finanzen was successfully created.' }
        format.json { render json: @finanzen, status: :created, location: @finanzen }
      else
        format.html { render action: "new" }
        format.json { render json: @finanzen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /finanzens/1
  # PUT /finanzens/1.json
  def update
    @finanzen = Finanzen.find(params[:id])

    respond_to do |format|
      if @finanzen.update_attributes(params[:finanzen])
        format.html { redirect_to @finanzen, notice: 'finanzen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @finanzen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finanzens/1
  # DELETE /finanzens/1.json
  def destroy
    @finanzen = Finanzen.find(params[:id])
    @finanzen.destroy

    respond_to do |format|
      format.html { redirect_to finanzens_url }
      format.json { head :no_content }
    end
  end
end

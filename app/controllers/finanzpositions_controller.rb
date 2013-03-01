class FinanzpositionsController < InheritedResources::Base
	 # GET /finanzpositions
  # GET /finanzpositions.json
   #load_and_authorize_resource
def auswertung
   
end
  def index
    #@finanzpositions = Finanzposition.where("FinanzenNr = ?", @finanzens  )
@finanzpositions = Finanzposition.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @finanzpositions }
    end
  end

  # GET /finanzpositions/1
  # GET /finanzpositions/1.json
  def show
    @finanzposition = Finanzposition.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @finanzposition }
    end
  end

  # GET /finanzpositions/new
  # GET /finanzpositions/new.json
  def new
    @finanzposition = Finanzposition.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @finanzposition }
    end
  end

  # GET /finanzpositions/1/edit
  def edit
    @finanzposition = Finanzposition.find(params[:id])
  end

  # POST /finanzpositions
  # POST /finanzpositions.json
  def create
    @finanzposition = Finanzposition.new(params[:finanzposition])
    #@finanzposition.users << current_user
    #@finanzposition.FinanzenNr << current_finanzens
    respond_to do |format|
      if @finanzposition.save
        format.html { redirect_to @finanzposition, notice: 'finanzposition was successfully created.' }
        format.json { render json: @finanzposition, status: :created, location: @finanzposition }
      else
        format.html { render action: "new" }
        format.json { render json: @finanzposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /finanzpositions/1
  # PUT /finanzpositions/1.json
  def update
    @finanzposition = Finanzposition.find(params[:id])

    respond_to do |format|
      if @finanzposition.update_attributes(params[:finanzposition])
        format.html { redirect_to @finanzposition, notice: 'finanzposition was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @finanzposition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finanzpositions/1
  # DELETE /finanzpositions/1.json
  def destroy
    @finanzposition = Finanzposition.find(params[:id])
    @finanzposition.destroy

    respond_to do |format|
      format.html { redirect_to finanzpositions_url }
      format.json { head :no_content }
    end
  end
end

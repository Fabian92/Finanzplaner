class FinanzsController < ApplicationController
  # GET /finanzs
  # GET /finanzs.json
  def index
    @finanzs = Finanz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @finanzs }
    end
  end

  # GET /finanzs/1
  # GET /finanzs/1.json
  def show
    @finanz = Finanz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @finanz }
    end
  end

  # GET /finanzs/new
  # GET /finanzs/new.json
  def new
    @finanz = Finanz.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @finanz }
    end
  end

  # GET /finanzs/1/edit
  def edit
    @finanz = Finanz.find(params[:id])
  end

  # POST /finanzs
  # POST /finanzs.json
  def create
    @finanz = Finanz.new(params[:finanz])

    respond_to do |format|
      if @finanz.save
        format.html { redirect_to @finanz, notice: 'Finanz was successfully created.' }
        format.json { render json: @finanz, status: :created, location: @finanz }
      else
        format.html { render action: "new" }
        format.json { render json: @finanz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /finanzs/1
  # PUT /finanzs/1.json
  def update
    @finanz = Finanz.find(params[:id])

    respond_to do |format|
      if @finanz.update_attributes(params[:finanz])
        format.html { redirect_to @finanz, notice: 'Finanz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @finanz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /finanzs/1
  # DELETE /finanzs/1.json
  def destroy
    @finanz = Finanz.find(params[:id])
    @finanz.destroy

    respond_to do |format|
      format.html { redirect_to finanzs_url }
      format.json { head :no_content }
    end
  end
end

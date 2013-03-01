class ContactMessagesController < InheritedResources::Base

 # GET /contactmessages/1
  # GET /contactmessages/1.json
  def show
    @contact_message = ContactMessage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact_message }
    end
  end
# GET /contactmessages/new
  # GET /contactmessages/new.json
  def new
    @contact_message = ContactMessage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @contact_message }
    end
  end

  # POST /contactmessages
  # POST /contactmessages.json
def create
  @contact_message = ContactMessage.new( params[:contact_message])
  if @contact_message.save
      ContactMailer.deliver_confirmation
      flash[:notice] = 'Vielen Dank für Ihre Nachricht.'
      redirect_to(@contact_message)
  else
     render :action => "new"
  end
end
end

def create
  @contact_message = ContactMessage.new(params[:contact_message])
  if @contact_message.save
    ContactMailer.deliver_confirmation(@contact_message.email)
    ContactMailer.deliver_message(@contact_message)
    flash[:notice] = 'Vielen Dank für Ihre Nachricht.'
    redirect_to(@contact_message)
  else
    render :action => "new"
  end
end

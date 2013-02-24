class ContactMailer < ActionMailer::Base

  def confirmation(sent_at = Time.now)
    @subject    = 'Ihre Kontaktnachrichten erhalten'
    @body       = {}
    @recipients = email
    @from       = 'fabianwessling@web.de'
    @sent_on    = sent_at
    @headers    = {}
  end

  def message(sent_at = Time.now)
    @subject    = 'Neue Kontaktanfrage'
    @body       = {:contact_message => contact_message}
    @recipients = 'fabianwessling@web.de'
    @from       = contact_message.email
    @sent_on    = sent_at
    @headers    = {}
  end

end

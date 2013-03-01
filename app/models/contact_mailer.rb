class ContactMailer < ActionMailer::Base

  def confirmation(sent_at = Time.now)
     @subject    = 'Ihre Kontaktnachricht erhalten'
  @body       = {}
  @recipients = 'tanja@test.lu'
  @from       = 'info@railsbuch.de'
  @sent_on    = sent_at
  @headers    = {}

  end

  def message(sent_at = Time.now)
    @subject    = 'ContactMailer#message'
    @body       = {}
    @recipients = ''
    @from       = ''
    @sent_on    = sent_at
    @headers    = {}
  end
end

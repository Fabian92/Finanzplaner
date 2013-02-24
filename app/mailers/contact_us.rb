class ContactUs < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_us.view1.subject
  #
  def view1
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_us.view2.subject
  #
  def view2
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

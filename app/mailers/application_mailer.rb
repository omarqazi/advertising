# frozen_string_literal: true

# ApplicationMailer is a subclass of ActionMailer for this rails application
class ApplicationMailer < ActionMailer::Base
	default from: 'from@example.com'
	layout 'mailer'
end

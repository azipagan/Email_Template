class TemplateMailer < ActionMailer::Base
  
  #layout Template.body.html_safe
  default from: "azipagan@gmail.com"

  def sample_template(user)
    @user = user
    @template = Template.find 1
    mail(:to => user.email, :subject => @title)
  end

  # def apply_leave(candidate, success_dates, failed_dates, leave_info)
  #   @candidate = candidate
  #   @success_dates = success_dates
  #   @failed_dates = failed_dates
  #   @leave_info = leave_info
  #   @url = "http://#{HOST}/login"
  #   @title = "#{Leave::LONG_FORMAT[@leave_info[:leave_type]]} Application"

  #   @to = Rails.env.production? ? @candidate.email : ALL_TECH_EMAIL
  #   mail(:to => @to, :subject => @title)
  # end

end

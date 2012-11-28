class TradeMessage < ActionMailer::Base
  default from: "zahra.arch@gmail.com"

  def pendingtrade(user)
  	@user = user
  	@greeting = "You have a trade waiting for you"
  	mail to: "larrybuch@gmail.com", :subject => "Proposed Trade..."
  end

end

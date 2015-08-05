require 'mailchimp'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :setup_mcapi
 
	def setup_mcapi
	  @mc = Mailchimp::API.new("9796bdf9880bced3a60e7d6f551d3723-us7")
	  @list_id = "8e24d21e11"
	end
end

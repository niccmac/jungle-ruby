class AboutController < ApplicationController
  #Might not really need an auth here
  before_action :authorize

  def about
    render "show"
  end

  protect_from_forgery with: :exception

end

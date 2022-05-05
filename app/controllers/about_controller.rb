class AboutController < ApplicationController
  #Might not really need an auth here
  before_filter :authorize

  def about
    render "show"
  end
end

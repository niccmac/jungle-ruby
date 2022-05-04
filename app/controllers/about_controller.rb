class AboutController < ApplicationController
  def about
    puts "IN here"
    render "show"
  end
end

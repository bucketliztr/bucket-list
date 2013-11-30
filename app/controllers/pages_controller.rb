class PagesController < ApplicationController
  def index
  	@user = User.first
  end

  def about
  end
end

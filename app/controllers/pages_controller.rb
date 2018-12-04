class PagesController < ApplicationController
  def index
  	@write - Write.all
  end
end

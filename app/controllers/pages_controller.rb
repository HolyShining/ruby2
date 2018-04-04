class PagesController < ApplicationController
  def home
    @delivers = Deliver.all
  end
  def about
  end
  def location
  end
end

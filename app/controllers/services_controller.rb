class ServicesController < ApplicationController

  def index
    @services = Service.active
  end
end

class ServicesController < ApplicationController

  def index
    @services = Service.active

    respond_to do |format|
      format.html
      format.xml  { render :xml  => @services, only: Service.public_fields }
      format.json { render :json => @services, only: Service.public_fields }
    end
  end

end

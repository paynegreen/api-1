class CribsController < ApplicationController

	def index
		@cribs = Crib.all
	end

	def show
		@crib = Crib.find(params[:id])
		@owner = @crib.owner
		@tenants = @crib.tenants

		rescue Exception
  		head :not_found, :text => "404 Not found"
	end

end

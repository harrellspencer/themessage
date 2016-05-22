class SermonsController < ApplicationController

def new
  @sermon = Sermon.new
end
def index
	@sermons = Sermons.all
end
		def create
    @sermon = Sermon.new(sermon_params)

    respond_to do |format|
      if @sermon.save
        format.html { redirect_to @sermon, notice: 'Your sermon was successfully created.' }
        format.json { render :show, status: :created, location: @sermon }
      else
        format.html { render :new }
        format.json { render json: @sermon.errors, status: :unprocessable_entity }
      end
  end
end

def destroy
	@sermon.destroy 
	respond_to do |format|
  end
end

private 
      def sermon_params
      	params.require(:sermon).permit(:name, :about, :date)
      end
end


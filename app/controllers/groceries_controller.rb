class GroceriesController < ApplicationController
	  before_action :set_grocery, only: [:show, :edit, :update, :destroy]

	def index
	  @groceries = Grocery.all
  end

  def show
  end

  def new
    @grocery = Grocery.new
  end

  def edit
  end

  def create
  	@grocery = Grocery.new(kkgrocery_params)

  respond_to do |format|
  		if @grocery.save
  			format.html { redirect_to root_path, notice: "Grocery list item was successfully created."}
  		else
  			format.html { render action: 'new'}
		    end
		  end
		end

	def update
		respond_to do |format|
			if @grocery.update(kkgrocery_params)
				format.html { redirect_to root_path, notice: "Grocery list item was successfully updated."}
			else
				format.html { render acton: 'edit'}
			  end
		  end
		end

		#Delete list item
	def destroy
			@grocery.destroy
			respond_to do |format|
				format.html { redirect_to groceries_url }
		  end
		end


		  #Use callbacks to share common setup or constraints between actions.
			#set strong parameters
		private
			def set_grocery
			@grocery = Grocery.find(params[:id])
		end

		def kkgrocery_params
			params.require(:grocery).permit(:item)
		end
	end

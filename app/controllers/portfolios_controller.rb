class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all 
    end
<<<<<<< Updated upstream
=======
    def new
        @portfolio_item=Portfolio.new
    end
    def create
        @portfolio_item=Portfolio.new(portfolio_params)

        # @portfolio_item=Portfolio.new(params.required(:portfolio).permit(:title, :subtitle,:body))
        respond_to do |format|
            if @portfolio_item.save
                format.html { redirect_to portfolios_url, notice: "The record was successfully destroyed." }
            else 
                format.html{render :new}
            end
        end
    end
    def edit
    @portfolio_item=Portfolio.find(params[:id])
    end
    def update
         @portfolio_item=Portfolio.find(params[:id])
    respond_to do|format|
        if @portfolio_item.update(portfolio_params)
        # if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle,:body))
            format.html { redirect_to portfolios_path,notice: 'The record successfully updated.'}
        else 
            format.html { render :edit}
        end
    end

    end
    def show
    @portfolio_item=Portfolio.find(params[:id])    
    end

    def destroy 
        #Perform the lookup
    @portfolio_item=Portfolio.find(params[:id])  
    #Destroy/delete the record
    @portfolio_item.destroy
    #Redirect
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: "The record was successfully destroyed." }
      
    end
end

private
def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)

end 
>>>>>>> Stashed changes
end

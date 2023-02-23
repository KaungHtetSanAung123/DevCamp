class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all 
    end

    def new
        @portfolio_item = Portfolio.new
    end


    def portfolio_params
        params.require(:portfolio).permit(:title, :subtitle, :body)
      end

    def create
        @portfolio_item = Portfolio.new(portfolio_params)
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to blogs_url, notice: "Your Portfolio was successfully created." }
            # format.html { redirect_to portfolios_path(@portfolio_item), notice: "Your Portfolio was successfully created." }
            # format.html { redirect_to blog_url(@portfolio_item), notice: "Your Portfolio was successfully created." }
           format.json { render :show, status: :created, location: @portfolio_item }
          else
            format.html { render :new, status: :unprocessable_entity }
           format.json { render json: @portfolio_item.errors, status: :unprocessable_entity }
          end
        end
      end

      def edit
        @portfolio_item = Portfolio.find(params[:id])
      end

      # def show
      #   @portfolio_item = Portfolio.find(params[:id] )
      # end

      def update
        @portfolio_item = Portfolio.find(params[:id])
        respond_to do |format|
            if @portfolio_item.update (portfolio_params)
            format.html { redirect_to portfolios_path, notice: "Portfolio was successfully updated." }
            format.json { render :show, status: :ok, location: @blog }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @blog.errors, status: :unprocessable_entity }
          end
        end
      end

      def destroy
        # Perform the lookup
        @portfolio_item = Portfolio.find(params[:id])

        # Destroy / delete the record
        @portfolio_item.destroy

        #redirect 
        respond_to do |format|
          format.html { redirect_to blogs_url, notice: "Portfolio was successfully destroyed." }
        end
      end
      
    
end
class InterestsController < ActionController::Base
  
  # GET /interests
  # GET /interests.json
  def index
    @interests = Interest.order(:name)
      respond_to do |format|
      format.xml { render :xml => @interests }
    end
  end

  # GET /interests/1
  # GET /interests/1.json
  def show
    @interest = Interest.find(params[:id])

    respond_to do |format|
      format.json { render json: @interest }
    end
  end

  # GET /interests/new
  # GET /interests/new.json
  def new
    @interest = Interest.new

    respond_to do |format|
      format.json { render json: @interest }
    end
  end

  # GET /interests/1/edit
  def edit
    @interest = Interest.find(params[:id])
  end

  # POST /interests
  # POST /interests.json
  def create
    @interest = Interest.new(params[:interest])
    
    respond_to do |format|
      if @interest.save
        format.xml { render :xml => @interest,
        :status => :created, :location => @interest }
      else
        format.xml { render :xml => @interest.errors,
        :status => :unprocessable_entity }
      end
    end
  end

  # PUT /interests/1
  # PUT /interests/1.json
  def update
    @interest = Interest.find(params[:id])
    
    respond_to do |format|
      if @interest.update_attributes(params[:interest])
        format.xml { head :ok }
      else
        format.xml { render :xml => @interest.errors,
        :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /interests/1
  # DELETE /interests/1.json
  def destroy
    @interest = Interest.find(params[:id])
    @interest.destroy

    respond_to do |format|
      format.json { head :ok }
    end
    
 end
 
end

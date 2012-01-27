class InterestsController < ActionController::Base
  
  before_filter :get_interests_by_persona
  
  # GET personas/1/interests
  # GET personas/1/interests.json
  def index
    @interests = Interest.find(@interestsId)
    
    respond_to do |format|
      format.json { render :json => @interests }
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
        format.json { render :json => @interest,
        :status => :created, :location => @interest }
      else
        format.json { render :json => @interest.errors,
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
        format.json { head :ok }
      else
        format.json { render :json => @interest.errors,
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
 
 private 
  def get_interests_by_persona
    interest_persona = InterestPersona.where("persona_id = ?", params[:persona_id])
    
    @interestsId = Array.new
    
    interest_persona.each do |i|
      @interestsId << i.interest_id
    end
    
  end
end

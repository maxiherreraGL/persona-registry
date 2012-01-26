class PersonasController < ActionController::Base
  
  # GET /personas
  # GET /personas.json
  def index
    @personas = Persona.order(:name)
    
      respond_to do |format|
      format.json { render json: @personas }
    end
  end

  # GET /personas/1
  # GET /personas/1.json
  def show
    @persona = Persona.find(params[:id])

    respond_to do |format|
      format.json { render json: @persona }
    end
  end

  # GET /personas/new
  # GET /personas/new.json
  def new
    @persona = Persona.new

    respond_to do |format|
      format.json { render json: @persona }
    end
  end

  # GET /personas/1/edit
  def edit
    @persona = Persona.find(params[:id])
  end

  # POST /personas
  # POST /personas.json
  def create
    @persona = Persona.new(params[:persona])
    
    respond_to do |format|
      if @persona.save
        format.json { render :json => @persona,
        :status => :created, :location => @persona }
      else
        format.json { render :json => @persona.errors,
        :status => :unprocessable_entity }
      end
    end
  end

  # PUT /personas/1
  # PUT /personas/1.json
  def update
    @persona = Persona.find(params[:id])
    
    respond_to do |format|
      if @persona.update_attributes(params[:persona])
        format.json { head :ok }
      else
        format.json { render :json => @persona.errors,
        :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /personas/1
  # DELETE /personas/1.json
  def destroy
    @persona = Persona.find(params[:id])
    @persona.destroy

    respond_to do |format|
      format.json { head :ok }
    end
    
 end
 
end

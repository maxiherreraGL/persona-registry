class RolsController < ActionController::Base
  
  before_filter :get_rols_by_person
  
  # GET people/1/rols
  # GET people/1/rols.json
  def index
    @rols = Rol.find(@rolsId)
    
    respond_to do |format|
      format.json { render :json => @rols }
    end
  end

  # GET /rols/1
  # GET /rols/1.json
  def show
    @rol = Rol.find(params[:id])

    respond_to do |format|
      format.json { render json: @rol }
    end
  end

  # GET /rols/new
  # GET /rols/new.json
  def new
    @rol = Rol.new

    respond_to do |format|
      format.json { render json: @rol }
    end
  end

  # GET /rols/1/edit
  def edit
    @rol = Rol.find(params[:id])
  end

  # POST /rols
  # POST /rols.json
  def create
    @rol = Rol.new(params[:rol])
    
    respond_to do |format|
      if @rol.save
        format.json { render :json => @rol,
        :status => :created, :location => @rol }
      else
        format.json { render :json => @rol.errors,
        :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rols/1
  # PUT /rols/1.json
  def update
    @rol = Rol.find(params[:id])
    
    respond_to do |format|
      if @rol.update_attributes(params[:rol])
        format.json { head :ok }
      else
        format.json { render :json => @rol.errors,
        :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rols/1
  # DELETE /rols/1.json
  def destroy
    @rol = Rol.find(params[:id])
    @rol.destroy

    respond_to do |format|
      format.json { head :ok }
    end 
 end
 
 private 
  def get_rols_by_person
    rol_person = PersonRol.where("person_id = ?", params[:person_id])
    
    @rolsId = Array.new
    
    rol_person.each do |i|
      @rolsId << i.rol_id
    end
    
  end
end

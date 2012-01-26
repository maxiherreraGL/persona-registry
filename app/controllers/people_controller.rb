class PeopleController < ActionController::Base
  
  # GET /people
  # GET /people.json
  def index
    @people = Person.order(:name)
    
      respond_to do |format|
      format.json { render json: @people }
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @person = Person.find(params[:id])

    respond_to do |format|
      format.json { render json: @person }
    end
  end

  # GET /people/new
  # GET /people/new.json
  def new
    @person = Person.new

    respond_to do |format|
      format.json { render json: @person }
    end
  end

  # GET /people/1/edit
  def edit
    @person = Person.find(params[:id])
  end

  # POST /people
  # POST /people.json
  def create
    @person = Person.new(params[:person])
    
    respond_to do |format|
      if @person.save
        format.json { render :json => @person,
        :status => :created, :location => @person }
      else
        format.json { render :json => @person.errors,
        :status => :unprocessable_entity }
      end
    end
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    @person = Person.find(params[:id])
    
    respond_to do |format|
      if @person.update_attributes(params[:person])
        format.json { head :ok }
      else
        format.json { render :json => @person.errors,
        :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    respond_to do |format|
      format.json { head :ok }
    end
    
 end
 
end

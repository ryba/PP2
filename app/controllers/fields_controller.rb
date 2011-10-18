class FieldsController < UserApplicationController

  before_filter :get_village, :only => [:show]

  def new
    @field = Field.new
  end

  def create
    @field = Field.new(params[:field])
    @field.user = current_user
    respond_to do |format|
      if @field.save
        format.html { redirect_to root_path, :notice => 'Utworzono pole.' }
      else
        format.html { render :action => :new }
      end
    end
  end

  def show
    @field = @village.fields.find(params[:id])
  end

  def get_village
    @village = Village.find_by_slug!(params[:village_id])
  end
end

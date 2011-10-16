class FieldsController < UserApplicationController
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
end

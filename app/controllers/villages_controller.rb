class VillagesController < UserApplicationController
  def index
    @villages = Village.order('created_at asc').all
  end

  def show
    @village = Village.find_by_slug!(params[:id])
    @fields = @village.fields
  end
end

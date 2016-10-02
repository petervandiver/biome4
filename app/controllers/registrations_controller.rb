class RegistrationsController < OrgAdmins::RegistrationsController
 
  def new
    build_resource({})
    self.resource.organization = Organization.new
    respond_with self.resource
  end
 
  def create
    super
  end

  def edit

  end

  def update
  	super
  end
 
  private
 
	  def sign_up_params
      params.require(resource_name).permit(:email, :password, :password_confirmation, organization_attributes: [:name, :description, :fed_tax_id, :hq_zip, :field_id, :annual_rev_id, :org_size_id])
      end

end
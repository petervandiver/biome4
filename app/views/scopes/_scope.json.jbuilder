json.extract! scope, :id, :name, :description, :visible_to_public, :csi_division_id, :billing_period_id, :sov_used, :stored_materials_used, :owner_id, :contributor_id, :send_invite_to, :project_id, :created_at, :updated_at
json.url scope_url(scope, format: :json)
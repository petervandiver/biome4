json.extract! material_line_item, :id, :scope_cycle_id, :description, :stored_at_cycle_start, :received_this_cycle, :installed_this_cycle, :stored_at_cycle_end, :created_at, :updated_at
json.url material_line_item_url(material_line_item, format: :json)
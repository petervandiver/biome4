class Document < ActiveRecord::Base

	belongs_to :scope_cycle

	mount_uploader :doc, DocUploader
end

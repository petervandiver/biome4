class LibraryDoc < ActiveRecord::Base

belongs_to :organization

mount_uploader :doc, DocUploader

end

class Upload < ActiveRecord::Base
    belongs_to :user
    has_attached_file :content
    validates_attachment :content, :content_type => { :content_type => %w(application/pdf application/force-download) }
end

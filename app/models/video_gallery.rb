class VideoGallery < ActiveRecord::Base
    belongs_to :album

    has_attached_file :video, :styles => { :medium => "300x300>", :thumb => "100x100>" }
    validates_attachment_content_type :video, :content_type => ["video/mp4", "image/jpg", "image/jpeg", "image/png", "image/gif"]

    validates :video, presence: false

end

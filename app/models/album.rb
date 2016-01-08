class Album < ActiveRecord::Base
    has_many :image_galleries
    has_many :video_galleries
end

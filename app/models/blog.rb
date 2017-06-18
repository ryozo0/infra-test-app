class Blog < ApplicationRecord
  mount_uploader :image, BlogImageUploader
end

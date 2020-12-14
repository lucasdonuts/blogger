class Attachment < ApplicationRecord
  belongs_to :article

  has_attached_file :image
end

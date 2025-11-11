class Product < ApplicationRecord
  has_one_attached :image

  # broadcast changes to the Product model to any clients that are listening.
  after_commit -> { broadcast_refresh_later_to "products" }
end

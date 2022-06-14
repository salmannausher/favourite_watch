class FavoriteWatch < ApplicationRecord
    belongs_to :user
    belongs_to :watch
end

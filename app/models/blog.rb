class Blog < ApplicationRecord
<<<<<<< HEAD
    enum status: { draft: 0, published: 1}
    # extend FriendlyId
    # friendly_id :title, use: :slugged

    validates_presence_of :title, :body
    belongs_to :topic
=======
>>>>>>> 2d224dbfd481fb3e282cc0e5d41131657b06a1e3
end

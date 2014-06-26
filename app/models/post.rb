class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongo::Voteable
  include Mongoid::Slug

  field :title, type: String
  field :content, type: String
  slug :title, history: true

  searchkick

  belongs_to :user

  voteable self, :up => +1, :down => -1

  validates :title, presence: true
end

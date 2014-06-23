class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongo::Voteable

  field :title, type: String
  field :content, type: String

  searchkick

  belongs_to :user

  voteable self, :up => +1, :down => -1

  validates :title, presence: true
end

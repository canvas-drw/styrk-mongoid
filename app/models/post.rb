class Post
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :content, type: String

  searchkick

  belongs_to :user
end

class SearchResultsController < ApplicationController
  def index
    @results = Post.search(params[:search])
    Kaminari.paginate_array(@results).page(params[:page])
  end
end
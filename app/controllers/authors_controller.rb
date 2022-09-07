class AuthorsController < ApplicationController
  
  def show
    author = Author.find(params[:id])

    render json: author
  end

  def create
    author = Author.create!(author_params)
    render json: author, status: :created
  rescue ActiveRecord::RecordInvalid => invalid
    render json: { errors: invalid.record.errors }, status: 422
    # author = Author.new(author_params)
    # if author.save
    #   render json: author, status: :created
    # else
    #   render json: { errors: author.errors.full_messages }, status: 422
    # end
  end

  private
  
  def author_params
    params.permit(:email, :name)
  end
  
end

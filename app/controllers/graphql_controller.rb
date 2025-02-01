class GraphqlController < ApplicationController
  def execute
    result = GraphqlRubySchema.execute(
      params[:query],
      variables: params[:variables],
    )
    render json: result
  end
end

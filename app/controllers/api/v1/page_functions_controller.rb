class Api::V1::PageFunctionsController < ApplicationController
  def index
    page_functions = PageFunction.all
    render json: page_functions, each_serializer: PageFunctionSerializer
  end

  def show
    if params[:id]
      page_function = PageFunction.find_by(id: params[:id])
    elsif params[:key]
      page_function = PageFunction.find_by(key: params[:key])
    end
    if page_function
      render json: page_function, serializer: PageFunctionSerializer
    else
      render json: { error: 'Not found' }, status: :not_found
    end
  end

  def update
    page_function = PageFunction.find_by(key: params[:key])
    if page_function&.update(page_function_params)
      render json: page_function, serializer: PageFunctionSerializer
    else
      render json: { error: 'Update failed', details: page_function&.errors }, status: :unprocessable_entity
    end
  end

  private

  def page_function_params
    params.require(:page_function).permit(:content, :is_active)
  end
end

class IngredientsController < ApplicationController
  
    def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(student_params)
    if @ingredient.save
      redirect_to @ingredient
    else
      render 'new'
    end
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def index
    @ingredients = Ingredient.all
  end
  
  def update
    @ingredient = Ingredient.find(params[:id])
    if @ingredient.update(student_params)
      redirect_to @ingredient
    else
      render 'edit'
    end
  end
  
  

  def student_params
    params.require(:ingredient).permit(:name)
  end
end

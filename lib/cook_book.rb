class CookBook
  attr_reader :recipes

  def initialize
   @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients 
    @recipes.each_with_object([]) do |recipe, names|
      recipe.ingredients_required.each do |ingredient, qty|
        names << ingredient.name 
      end
    end.uniq
  end
end
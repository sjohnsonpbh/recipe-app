module RecipesHelper
  def select_array_set 
    select_array = []
    i = 0
    while i <= 60 
      nest_array = [i, i]
      select_array << nest_array
      i += 1
    end
    select_array
  end
end

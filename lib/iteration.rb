def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  ingredients = []
  ingredients2 = []
  outer_i = 0
  ingredients_i = 0 
  while outer_i < src.count do 
    inner_i = 0
    while inner_i < src[outer_i].count do 
      ingredients[ingredients_i] = src[outer_i][inner_i]
      inner_i += 1 
      ingredients_i += 1 
    end 
  outer_i += 1 
  #ingredients_i += 1
  end 
  iri = 0 
  iri2 = 0 
  while iri < ingredients.count do 
    ingredients2[iri2] = "I love #{ingredients[iri]} and #{ingredients[iri + 1 ]} on my pizza"
    iri += 2
    iri2 += 1 
  end
  ingredients2 
end

def find_greater_pair(src)
  max_src = []
  i = 0
  while i < src.count do
    max_src[i] = src[i].max 
    i += 1 
  end
  max_src
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  total = 0 
  outer_i = 0 
  while outer_i < src.count do 
    inner_total = 0 
    if src[outer_i][0] % 2 === 0 && src[outer_i][1] % 2 === 0 
      total += (src[outer_i][0] + src[outer_i][1])
    end
    outer_i += 1 
  end  
  #return total 
  total 
end

class InsertBasicRecipesToRecipe < ActiveRecord::Migration[6.1]
  BASIC_RECIPES = [
    {
      title: "Golden Sweet Cornbread",
      cook_time: 25,
      prep_time: 10,
      rating: 474,
      cuisine: "",
      category: "Cornbread",
      author: "bluegirl",
      image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2021%2F10%2F26%2Fcornbread-1.jpg"
    },
    {
      title: "Monkey Bread I",
      cook_time: 35,
      prep_time: 15,
      rating: 4.74,
      cuisine: "",
      category: "Monkey Bread",
      author: "deleteduser",
      image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2018%2F11%2F546316.jpg"
    },
    {
      title: "Whole Wheat Beer Bread",
      cook_time: 50,
      prep_time: 10,
      rating: 4.52,
      cuisine: "",
      category: "Quick Bread",
      author: "Betty Latvala",
      image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F9443508.jpg"
    },
  ].freeze

  def up
    BASIC_RECIPES.each do |recipe_data|
      next if Recipe.find_by title: recipe_data[:title]
      Recipe.create! recipe_data
    end
  end

  def down; end
end

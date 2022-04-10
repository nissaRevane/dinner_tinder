import Model, { attr, hasMany } from '@ember-data/model';

export default class RecipeModel extends Model {
  @attr('string') title;
  @attr('number') cookTime;
  @attr('number') prepTime;
  @attr('number') rating;
  @attr('string') cuisine;
  @attr('string') category;
  @attr('string') author;
  @attr('string') imageUrl;
  @hasMany('recipeIngredient', { async: true }) recipeIngredients;
}

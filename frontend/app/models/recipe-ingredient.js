import Model, { attr, belongsTo } from '@ember-data/model';

export default class RecipeIngredientModel extends Model {
  @attr('string') quantity;
  @belongsTo('ingredient') ingredient;
  @belongsTo('recipe') recipe;
}

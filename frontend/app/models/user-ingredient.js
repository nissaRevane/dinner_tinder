import Model, { attr, belongsTo } from '@ember-data/model';

export default class UserIngredientModel extends Model {
  @attr('string') quantity;
  @belongsTo('ingredient') ingredient;
}

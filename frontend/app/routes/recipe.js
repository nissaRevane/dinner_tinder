import Route from '@ember/routing/route';
import { service } from '@ember/service';

export default class RecipesRoute extends Route {
  @service store;

  model(params) {
    return this.store.findRecord('recipe', params.recipe_id, {
      include: 'recipeIngredients',
    });
  }
}

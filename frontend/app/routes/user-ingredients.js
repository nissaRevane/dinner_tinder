import Route from '@ember/routing/route';
import { service } from '@ember/service';

export default class UserIngredientsRoute extends Route {
  @service store;

  model() {
    return this.store.findAll('userIngredient', {
      include: 'ingredient'
    });
  }
}

import Component from '@ember/component';
import { inject as service } from '@ember/service';

export default Component.extend({
  store: service(),

  actions: {
    create(quantity, ingredientId) {
      let newRecord = this.store.createRecord('userIngredient', {
        quantity: quantity,
        ingredientId: ingredientId,
      });
      newRecord.save();
    },
  },
});

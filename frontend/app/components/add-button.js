import Component from '@ember/component';
import { inject as service } from '@ember/service';

export default Component.extend({
  store: service(),

  actions: {
    start() {
      let newRecord = this.store.createRecord('userIngredient', {
        quantity: 'Undefined ingredient',
        ingredient: 1452,
      });
      newRecord.save();
    },
  },
});

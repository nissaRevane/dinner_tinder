import Component from '@ember/component';
import { inject as service } from '@ember/service';

export default Component.extend({
  store: service(),

  actions: {
    delete(recordId) {
      const userIngredient = this.store.peekRecord('userIngredient', recordId);
      userIngredient.destroyRecord();
    },
  },
});

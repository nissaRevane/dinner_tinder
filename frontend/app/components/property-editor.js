import Component from '@ember/component';
import { inject as service } from '@ember/service';

export default Component.extend({
  store: service(),

  actions: {
    update(recordId, name, value) {
      this.store.findRecord('userIngredient', recordId).then(function(userIngredient) {
        userIngredient[name] = value;
        userIngredient.save();
      });
    },
  },
});

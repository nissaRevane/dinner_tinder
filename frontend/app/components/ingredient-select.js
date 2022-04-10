import Component from '@ember/component';
import { inject as service } from '@ember/service';
import { computed } from '@ember/object';

export default Component.extend({
  store: service(),

  ingredients: computed(function() {
    return this.get('store').findAll('ingredient');
  }),
});

<%= _.classify(appname) %>.<%= _.classify(name) %>EditRoute = Ember.Route.extend({
  model: function(params) {
    return <%= _.classify(appname) %>.<%= _.classify(name) %>.find(params.<%= _.slugify(name) %>_id);
  },
  setupController: function(controller, model){
    controller.set('model', model);
    buffer = model.get('attributes').map(function(attr){
      return { key: attr.get('key'), value: attr.get('value') }
    });
    controller.set('buffer', buffer)
  }
});




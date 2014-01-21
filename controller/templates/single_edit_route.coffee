<%= _.classify(appname) %>.<%= _.classify(name) %>EditRoute = Ember.Route.extend(
  model: (params) ->
    <%= _.classify(appname) %>.<%= _.classify(name) %>.find(params.<%= _.slugify(name) %>_id);
  setupController: (controller, model) ->
    controller.set 'model', model
    buffer = model.get('attributes').map (attr)->
      { key: attr.get('key'), value: attr.get('value') }
    controller.set 'buffer', buffer
)


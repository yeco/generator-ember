<%= _.classify(appname) %>.<%= _.classify(name) %>Route = Ember.Route.extend(
  model: (params) ->
    <%= _.classify(appname) %>.<%= _.classify(name) %>.find(params.<%= _.slugify(name) %>_id)
)


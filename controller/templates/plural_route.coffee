<%= _.classify(appname) %>.<%= _.classify(pluralized_name) %>Route = Ember.Route.extend(
  model: ->
    <%= _.classify(appname) %>.<%= _.classify(name) %>.find();

)
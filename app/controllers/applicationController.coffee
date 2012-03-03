class Wordup.ApplicationController extends Tower.Controller
  @layout "application"
  
  index: ->
    @render template: "index"

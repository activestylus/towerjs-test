class Wordup.SitesController extends Wordup.ApplicationController
  @param "companyName"
###
  index: ->
    Wordup.Site.where(@criteria()).all (error, collection) =>
      @render "index"
    
  new: ->
    resource = new Wordup.Site
    @render "new"
    
  create: ->
    Wordup.Site.create @params.site, (error, resource) =>
      if error
        @redirectTo "new"
      else
        @redirectTo @urlFor(resource)
    
  show:  ->
    Wordup.Site.find @params.id, (error, resource) =>
      if resource
        @render "show"
      else
        @redirectTo "index"
    
  edit: ->
    Wordup.Site.find @params.id, (error, resource) =>
      if resource
        @render "edit"
      else
        @redirectTo "index"
      
  update: ->
    Wordup.Site.find @params.id (error, resource) =>
      if error
        @redirectTo "edit"
      else
        resource.updateAttributes @params.site, (error) =>
          @redirectTo @urlFor(resource)
    
  destroy: ->
    Wordup.Site.find @params.id, (error, resource) =>
      if error
        @redirectTo "index"
      else
        resource.destroy (error) =>
          @redirectTo "index"
    
###

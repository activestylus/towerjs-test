window.designer ||= new DesignIO("wordup", port: 4181)

class Wordup extends Tower.Application
  @configure ->
    @use Tower.Middleware.Agent
    @use Tower.Middleware.Location
    @use Tower.Middleware.Router

window.Wordup = new Wordup

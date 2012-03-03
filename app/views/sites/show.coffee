contentFor "title", "Site #{@site.toLabel()}"

dl class: "content", ->
  dt "Company name:"
  dd @site.get("companyName")

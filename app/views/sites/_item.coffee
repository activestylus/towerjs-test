li class: "undefined", ->
  header class: "header", ->
    h3 @site.toLabel()
  dl class: "content", ->
    dt "Company name:"
    dd @site.get("companyName")
  footer class: "footer", ->
    menu ->
      menuItem "Edit", urlFor(@site, action: "edit")

tableFor "sites", (t) ->
  t.head ->
    t.row ->
      t.cell "companyName", sort: true
      t.cell()
      t.cell()
      t.cell()
  t.body ->
    for site in @sites
      t.row ->
        t.cell -> site.get("companyName")
        t.cell -> linkTo 'Show', urlFor(site)
        t.cell -> linkTo 'Edit', urlFor(site, action: "edit")
        t.cell -> linkTo 'Destroy', urlFor(site), method: "delete"
  linkTo 'New Site', urlFor(Wordup.Site, action: "new")

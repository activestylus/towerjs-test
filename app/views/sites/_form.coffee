formFor @site, (form) ->
  p -> "Come on"
  form.fieldset (f) ->
    f.field "companyName", as: "string"
    f.field "domainName", as: "string"

  form.fieldset (f) ->
    f.submit "Submit"

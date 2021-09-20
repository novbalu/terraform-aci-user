module "aci_user" {
  source  = "netascode/user/aci"
  version = ">= 0.0.1"

  username         = "USER1"
  password         = "PASSWORD1"
  status           = "inactive"
  certificate_name = "CERT1"
  description      = "My Description"
  email            = "aa.aa@aa.aa"
  expires          = true
  expire_date      = "2031-01-20T10:00:00.000+00:00"
  first_name       = "First"
  last_name        = "Last"
  phone            = "1234567"
  domains = [{
    name = "all"
    roles = [{
      name           = "admin"
      privilege_type = "write"
    }]
  }]
}

provider "huaweicloud" {
  access_key  = "AK"
  secret_key  = "SK"
  auth_url    = "https://iam.cn-north-1.myhwclouds.com:443/v3"
  region      = "cn-north-1"
  tenant_name = "cn-north-1"
}

module "example" {
  source ="../.."

  name              = "sfs"
  description       = "sfs module"
  size              = 1
  share_proto       = "NFS"
  access_level      = "rw"
  access_type       = "cert"
  access_to         = "8eed4fc7-e5e5-44a2-b5f2-23b3e5d46235"
  availability_zone = "cn-north-1a"
  is_public         = false
}

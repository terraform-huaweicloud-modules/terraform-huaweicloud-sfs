# Huawei Cloud SFS Terraform Module

Terraform moudle which creates SFS resource on Huawei Cloud.

These types of resources are supported:

* [SFS](https://www.terraform.io/docs/providers/huaweicloud/r/sfs_file_system_v2.html)

## Usage

```hcl
module "example" {
  source = "terraform-huaweicloud-modules/sfs/huaweicloud"

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
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name  | The name of the SFS  | string  | `""`  | yes  |
| description  | The description of the SFS  | string  | `""`  | no  |
| size  | The size of the SFS  | int  | 1  | no  |
| share_proto  | The protocol of the SFS  | string  | `"NFS"`  | no  |
| access_level  | The access level of the SFS  | string  | `""`  | yes  |
| access_type | The access type of the SFS  | string  | `""`  | yes  |
| access_to  | The access that the back end grants or denies  | string  | `""`  | yes  |
| availability_zone  | The availability zone of the SFS  | string  | `""`  | yes  |
| is_public  | The level of visibility for the SFS  | bool  | false  | no  |

## Outputs

| Name | Description |
|------|-------------|
| this_sfs | The ID of the SFS |

Authors
----
Created and maintained by [Zhenguo Niu](https://github.com/niuzhenguo)

License
----
Apache 2 Licensed. See LICENSE for full details.

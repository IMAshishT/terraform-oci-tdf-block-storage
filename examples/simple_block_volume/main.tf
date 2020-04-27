# Copyright (c) 2020 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

module "example1" {
  source                     = "../.."
  default_compartment_id     = var.compartment_id
  default_ad                 = 0
  default_size_in_gbs        = 50
  default_backup_policy_name = "Bronze"
  default_defined_tags  = null
  default_freeform_tags = null

  vols = {

    bv1 = {
      compartment_id     = null
      ad                 = null
      size_in_gbs        = 62
      backup_policy_name = null
      defined_tags       = null
      freeform_tags      = null
      source_id          = null
      source_type        = null
      vol_grp_name       = null
      kms_key_id         = null
    },
    bv2 = {
      compartment_id     = var.compartment_id
      ad                 = 0
      size_in_gbs        = 66
      backup_policy_name = "Gold"
      defined_tags       = null
      freeform_tags      = null
      source_id    = null
      source_type  = null
      vol_grp_name = null
      kms_key_id   = null
    },
    bv3 = {
      compartment_id     = var.compartment_id
      ad                 = 0
      size_in_gbs        = 65
      backup_policy_name = "Silver"
      defined_tags  = null
      freeform_tags = null
      source_id     = null
      source_type   = null
      vol_grp_name  = null
      kms_key_id    = null
    }
  }

  vol_grps = null
  /*vol_grps = {
    vg1 = {
      compartment_id = null
      ad             = 0
      ext_vol_ids   = ["<update>"]
      defined_tags  = null
      freeform_tags = null
    },
    vg2 = {
      compartment_id = null
      ad             = 0
      ext_vol_ids   = ["<update>"]
      defined_tags  = null
      freeform_tags = null
    }
  }*/
}

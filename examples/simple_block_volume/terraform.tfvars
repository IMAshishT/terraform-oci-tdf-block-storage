# GETTING STARTED
#
# 1. Download and install TerraForm (https://www.terraform.io/downloads.html)
# 2. Download and install the OCI TerraForm provider (https://github.com/oracle/terraform-provider-oci/)
# 3. Make sure that you have an OCI API key setup
#       See https://docs.us-phoenix-1.oraclecloud.com/Content/API/Concepts/apisigningkey.htm for directions on creating an API signing key
#       See https://docs.us-phoenix-1.oraclecloud.com/Content/Identity/Tasks/managingcredentials.htm on how to manage API keys in the OCI UI or API
# 4. Copy your tenancy OCID below (bottom part of OCI screen, after Tenancy OCID: heading)
# 5. Copy your OCI user account OCID (login to OCI > Identity > Users)
# 6. Copy the required API key fingerprint and private key path (below)
# 7. Fill-in the full path to the SSH public and private keys (this can be used when creating new instances)
#       See https://docs.us-phoenix-1.oraclecloud.com/Content/GSG/Tasks/creatingkeys.htm for directions on how to create this key pair
#
# HELPFUL URLs
# * https://github.com/oracle/terraform-provider-oci/blob/master/docs/Table%20of%20Contents.md
#

# RUNNING TerraForm
#
# Once you've gone through the steps mentioned above, you need to populate your environment variables, by sourcing this file... steps are below:
# 1. Modify this file (so it reflects your OCIDs, etc.)
# 2. $ terraform init
#       You only have to do this once after installing or upgrading your TerraForm plugins
# 3. $ terraform plan
#       This will show you what TerraForm might do if you applied it
# 4. $ terraform apply

# Get this from the bottom of the OCI screen (after logging in, after Tenancy ID: heading)
tenancy_id="ocid1.tenancy.oc2..aaaaaaaamcew2mgy575szfvydak7xwwodavsdnfdxtt63vppxoktnf3oy2ba"
# Get this from OCI > Identity > Users (for your user account)
user_id="ocid1.user.oc2..aaaaaaaanoowslx3dfdrtekstwlp5u2ga32rgo3tmpz6ojqynee6aturjc4a"
# the fingerprint can be gathered from your user account (OCI > Identity > Users > click your username > API Keys fingerprint (select it, copy it and paste it below))
fingerprint="2d:ee:aa:a9:45:ea:86:88:2a:bd:0d:d6:83:aa:87:72"
# this is the full path on your local system to the private key used for the API key pair
private_key_path="../../keys/oci_api_key.pem"
# region (us-phoenix-1, ca-toronto-1, etc)
region="us-langley-1"
# Compartment
compartment_id="ocid1.compartment.oc2..aaaaaaaaqsxarpknpuetrceqst6ulc7vaptsdviwao6ittajvfodzma34oda"
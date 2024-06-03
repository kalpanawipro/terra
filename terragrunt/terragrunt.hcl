terraform {
    source = "./modules"
}
 inputs = {
    region = "us-west-2"
    vpc_id = ""
    availability_zones = ["us-west-2a", "us-west-2b", "us-west-2c"]
    public_cidr_blocks = ["10.60.80.0/20", "10.60.96.0/20", "10.60.112.0/20"]
    private_cidr_blocks = ["10.60.16.0/20" , "10.60.32.0/20" , "10.60.48.0/20", "10.60.128.0/20" ,"10.60.144.0/20", "10.60.160.0/20"]
    public_subnet_names = ["spaces-prod-public-1", "spaces-prod-public-1b", "spaces-prod-public-1c"]
    private_subnet_names = ["spaces-prod-app-1a","spaces-prod-app-1b", "spaces-prod-app-1c", "spaces-prod-db-1a", "spaces-prod-db-1b", "spaces-prod-db-1c"]
    nat_gateways_count = 2
}


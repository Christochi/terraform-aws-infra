output "network" {

    value = module.vpc.network-data
    description = "display subnet, vp and sg id"
    
}
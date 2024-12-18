# This is a Terraform configuration for bootstrapping the cluster that is used for ArgoCD management.
# This configuration will create a new EKS cluster and apply the ArgoCD manifests to the cluster.
# From there, ArgoCD takes over and manages the rest of the cluster (including itself).

terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "3.51.0"
        }
        kubernetes = {
        source  = "hashicorp/kubernetes"
        version = "2.4.1"
        }
    }
}

provider "aws" {
    region = "us-gov-west-1"
}

provider "kubernetes" {
    config_path = "~/.kube/config"
}



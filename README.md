# Terraform Intro with AWS

Different Exercices done to introduce on who to use Terraform with AWS and Terraform features
You will need to create an AWS account and Access keys to use the templates. You need to put them in the providers.tf files

**Please Note that it is not a best practice to use Access Keys !!!
But we will only use them for the purpose of these exercices**

## 01 EC2

Deploying a EC2 instance and launching a Web Server using user data via Terraform
Also added a Key Pair so we can SSH into it

## 02 S3

Deploy a S3 bucket with public access for web hosting

## 03 EIP

Same Exercice as 01 but this time, we add an Elastic IP so that even if we restart the instance, we still have the same IP.
However, if you deploy the template another time, it will replace the EIP because we are creating the EIP using Terraform

## 04 Import

Short Exercice about adding an existing resource to our TF template so we can manage it easily

## 05 Provisioner

Exercice about provisioners. You shouldn't use provisioners because it adds too much complexity to your TF stack
There is always a better alternative to what you want to do instead of using provisioners like user data and so on.

## 06-07 Modules

A Exercice in two parts about modules. You can use them to easily deploy a stack in different environment like dev or prod

## 08 Workspace

Same as Modules but instead of creating many folders and files, we can use command line and variable to change environment

## 09 Alias

Short exercice with aliases so you can deploy easily your stack in different regions

## 10 List Count

Exercice about List type that we used briefly during previous exercices and count. We will use them to deploy our resource in different AZ and give them name according to the AZ 

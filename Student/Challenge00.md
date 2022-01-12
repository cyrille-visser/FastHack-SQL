# Challenge 0 - Setup

**[Home](../README.md)** - [Next Challenge >](./Challenge01.md)

## Pre-requisites 

An Azure subscription is required that can deploy Azure SQL Database.

## Introduction

The objective of the setup is to ensure you have access to a subscription where resources may be deployed. You also need an environment to host the tools required and to host the databases -- for the purposes of this hack, we'll refer to this as the customer's on-premises environment, even if it is located the cloud.

## Description

The scenarios presented simulate on-premises environments; teams have flexibility to choose how to configure these environments based on preferences and environmental considerations.  For example, a team with limited bandwidth or networking constraints (such as difficulty in forwarding ports to connect to SQL Server from the cloud) may choose to set up the simulated "on-premises" environments in an Azure VM with SQL Server. Another team may install the databases on a local machine or configure them in docker. Choose what works best for the team and hints will be provided along the way.

In this hack, some prerequisites will be challenge-specific: for example, a challenge might say, "This challenge requires the AdventureWorks database..." along with any necessary configuration. As such, this setup is designed to provide general requirements while each challenge will list specific needs for that challenge only, as not all databases and tools are required for all challenges.

Every company needs a name! You and your team are part of a new SI start-up that is developing a practice on migrating and modernizing data solutions. Then, decide on a hosting environment for your on-premises simulation: you have a lot of flexibility here! Your team may choose to deploy everything into Azure to mimic an on-premises environment, or you may choose to host on a desktop, Docker container, etc.! 

The databases required include:
* AdventureWorks2017
* WideWorldImporters (OLTP)
* WideWorldImporters (DW)

When you have restored the databases please run this [Issue script](./Resources/cdb_query.sql) ("Save link as..."). This script assumes you have AdventureWorks2017 and WideWorldImporters databases running in your VM.

## Success Criteria

* Pick a cool team name!  
* Verify on-premises environment has been deployed with the required databases.
* Install Azure Data Studio and SQL Management Studio.


## Advanced Challenges (Optional)

*Too comfortable?  Eager to do more?  Try these additional challenges!*

* Install and get familiar with this tool to [generate workload](https://geohernandez.net/generating-a-workload-for-sql-server/) against SQL Server and reuse it against your migrated databases in the upcoming challenges.
* Create a [Jupyter Notebook](https://docs.microsoft.com/en-us/sql/azure-data-studio/notebooks/notebooks-guidance?view=sql-server-ver15) with your most used DMVs to run against your databases before and after migration. 

## Learning Resources

* [Azure SQL Fundamentals](https://aka.ms/azuresqlfundamentals)
* [Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15)
* [SQL Management Studio](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15)
* [AdventureWorks Databases](https://docs.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver15&tabs=ssms)
* [WideWorldImporters-Full.bak](https://github.com/Microsoft/sql-server-samples/releases/tag/wide-world-importers-v1.0)
* [WideWorldImportersDW-Full.bak](https://github.com/Microsoft/sql-server-samples/releases/tag/wide-world-importers-v1.0)
* [SQL Server Data Tools (SSDT)](https://docs.microsoft.com/en-us/sql/ssdt/download-sql-server-data-tools-ssdt?view=sql-server-ver15)


# Challenge 1 - Migration

[< Previous Challenge](./Challenge00.md) - **[Home](../README.md)** - [Next Challenge >](./Challenge02.md)

## Introduction

Your fledgling company has two migration tasks at hand. In both cases, your clients would like to migrate their SQL Server instances into Azure. Each solution has different requirements. 

To make this task a bit more interesting please run this [Issue script](./Resources/cdb_query.sql) ("Save link as...") on your source database. This script assumes you have AdventureWorks2017 and WideWorldImporters databases running in your VM.

## Description

The objective of this challenge is to migrate AdventureWorks and WWI Databases (OLTP and OLAP) to Azure SQL database. Each presents a unique set of customer requirements; be sure to read the optional advanced challenges -- while completing the advanced challenges is not required for this challenge, it may impact your implementation choices.

### AdventureWorks 

AdventureWorks has provided the following requirements and guidelines:

1. Database must be able to scale rapidly and easily for seasonal demand.
1. Requires database backups to be maintained for 1 year, with weekly granularity.
1. Database can be migrated offline during one of the nightly maintenance windows.
1. If there are any migration blockers/remediation steps, document them with any suggested fixes.
    1. These fixes do not need to be implemented, but should be called out.

### Wide World Importers

Wide World Importers has provided the following requirements and guidelines:

1. Both WWI OLTP and data warehouse databases are to be migrated.
1. Database migration for the OLTP database should be done online with minimum downtime.
1. Database migration for the data warehouse can be done offline.

## Success Criteria

* Ensure AdventureWorks database is migrated, noting any blockers with suggestions for remediation.
* Complete offline migration of the Wide World Importers DW
* Understand online migration requirement options of the Wide World Importers OLTP database and note any blockers.
* Complete offline migration of the Wide World Importers OLTP database.


## Tips

* Learn about the [Azure Database Migration Service](https://azure.microsoft.com/en-us/services/database-migration/) and leverage the [Azure Database Migration Guide.](https://datamigration.microsoft.com/)
* Read up on [Microsoft Data Migration Assistant](https://www.microsoft.com/en-us/download/details.aspx?id=53595) including [this overview](https://docs.microsoft.com/en-us/sql/dma/dma-overview?view=sql-server-ver15) for more information.
* Read more on getting started with [Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15), and refer to this [Azure Data Studio Quickstart](https://docs.microsoft.com/en-us/sql/azure-data-studio/quickstart-sql-server?view=sql-server-ver15) for more information.
* Any assessment tool may be used to perform an assessment; DMA (Data Migration Assistant) includes assessment and SKU recommendation tools.


## Learning Resources

* [Azure SQL Fundamentals](https://aka.ms/azuresqlfundamentals)
* Download the Workload Driver solution or executable here:
    * [WWI Order Insert Solution](https://github.com/microsoft/sql-server-samples/tree/master/samples/databases/wide-world-importers/workload-drivers/order-insert)
    * [WWI Order Insert Executable (workload-drivers.zip)](https://github.com/Microsoft/sql-server-samples/releases/tag/wide-world-importers-v1.0)
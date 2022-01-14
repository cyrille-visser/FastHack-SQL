# Challenge 2 - Performance & Tuning

[< Previous Challenge](./Challenge01.md) - **[Home](../README.md)** - [Next Challenge>](./Challenge03.md)

## Introduction

Although SQL Server is easier than ever to deploy with Azure SQL Database, knowing how to properly use the monitoring and evaluation tools, like Query Store, can make a difference between an application that simply "performs ok" to one that "flies."  While SQL Server has evolved with features over the years, it's a good idea to understand how these changes might impact an application.

## Description

The purpose of this challenge is threefold:

* Explore new features of SQL Server that may improve performance intrinsically.
* Ensure would-be data engineers and DBAs are comfortable monitoring, evaluating performance. 
* Leverage newer tools like Azure Data Studio Notebooks and [Azure Monitor SQL Insights](https://docs.microsoft.com/en-us/azure/azure-monitor/insights/sql-insights-overview).

### Explore new features

To begin, download and open the [Intelligent Query Processing notebook](./Resources/SQLWTH_Challenge3_IntelligentQueryProcessing.ipynb?raw=true) (either "Save link as..." or save the JSON text as a file) using Azure Data Studio or another tool of your choice that can work with a standard Jupyter Notebook. The Notebook will walk you through the test, comparing performance of an analytical query using compatibility mode 130 vs 150.

While it's clear the SQL Server 2019 version performs better, the challenge is to understand why. Leverage Query Store to evaluate the differences in performance and execution plans.  

### Understand key blockers

There's a saying, "If you can't measure it, you can't improve it." Perhaps for code optimizations, it's more accurate to say, "To effectively improve something, you begin by measuring it." Looking at the execution plan is a key way to understand how a query is parsed and executed so that changes can be intentional and evaluated. This part of the challenge involves understanding the indexing and reading the execution plan. While altering a table and its indexes to improve a query may impact other queries, the goal is to find the appropriate tradeoffs.

The WWI team powers a dashboard that uses a query similar to the below to track current invoices for a given day. Execute and evaluate its execution plan. 

```sql
SELECT InvoiceId, CustomerId, TotalChillerItems, TotalDryItems, ConfirmedDeliveryTime
FROM Sales.Invoices
WHERE ConfirmedDeliveryTime BETWEEN '2016-01-07 00:00:00.000' AND '2016-01-07 23:59:59.998'
ORDER BY ConfirmedDeliveryTime DESC
```

Working with your team, improve the performance of the query. Provide any scripts needed that implement the changes your team suggests, and provide before/after results as documentation.

## Success Criteria

* Complete an evaluation using the Notebook in the [Explore New Features](#explore-new-features) section.
* Optimize the query in [Understand Key Blockers](#understand-key-blockers) section.

## Tips

* If you are able to evaluate and see what how the plans are different but not sure why, read up on [Intelligent Query Processing](https://docs.microsoft.com/en-us/sql/relational-databases/performance/intelligent-query-processing?view=sql-server-ver15); cross reference your observations with the details in the document.
* Use the [Azure SQL Database tips script](https://github.com/microsoft/azure-sql-tips/wiki/Azure-SQL-Database-tips) to check for best practices.
* Look at [Azure Monitor SQL Insights](https://docs.microsoft.com/en-us/azure/azure-monitor/insights/sql-insights-overview) for information on how to monitor health, diagnose problems, and tune performance.

## Advanced Challenges (Optional)

* Monitor your SQL deployments with Azure Monitor SQL Insights [log queries](https://docs.microsoft.com/en-us/azure/azure-monitor/logs/get-started-queries).

## Learning Resources

* [Azure SQL Fundamentals](https://aka.ms/azuresqlfundamentals)
* [SQL Server Compatibility Levels](https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-database-transact-sql-compatibility-level?view=sql-server-ver15)
* [Administering Relational Databases Exam](https://docs.microsoft.com/en-us/learn/certifications/exams/dp-300)
* [Microsoft Ground-to-Cloud](https://github.com/microsoft/sqlworkshops-sqlg2c/blob/master/README.md) series.

## I'm stuck

* [Help! I don't know how to optimize the query and I need a fix!](./Resources/fix_query.sql?raw=true) ("Save link as...").
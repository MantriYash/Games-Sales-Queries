# Games-Sales-Queries
This project involves analyzing game sales data using SQL to uncover meaningful insights. By working with two datasets—Games and Game Sales, the analysis focuses on tasks such as inserting, updating, and deleting data, as well as performing joins, aggregate operations, and filtering records. The ultimate goal is to evaluate game performance across different platforms and regions.

**Objective**
The project aims to perform SQL operations to clean, modify, and analyze the game sales data, yielding actionable insights.

**Tasks Performed**
1. Data Insertion
2. Data Updates
3. Data Deletion
4. Aggregate Calculations
5. Highest Sales Identification
6. Data Joining and Exploration
7. Missing Data Exploration
8. Regional Filtering and Deduplication

**Insights**
--Insights into which regions and platforms drive the most sales.
--Pricing updates can be data-driven to maximize revenue.
--Focus on high-performing regions or underperforming genres for targeted campaigns.
--Predict demand for future releases based on past sales.
--Address games with no sales or missing metadata to improve database accuracy.


_**Datasets**_
**1. Games.csv**
Contains metadata about games, including:
GameID – Unique identifier for each game
GameTitle – Name of the game
Genre – Category of the game
ReleaseDate – Launch date of the game
Developer – Studio or company behind the game

**2. Game Sales.csv**
Captures sales data for games, including:
GameID – Links the game to its metadata
Platform – Platform where the game was sold (e.g., PlayStation, Xbox)
SalesRegion – Geographic region of the sale (e.g., North America, Europe)
UnitsSold – Total units sold
Price – Price of the game

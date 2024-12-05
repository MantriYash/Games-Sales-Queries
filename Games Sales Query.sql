SELECT * FROM Ass2.games;
Select * From Ass2.sales;

#Insert a new game
INSERT INTO Ass2.games (GameID, GameTitle, Genre, ReleaseDate, Developer)
VALUES (151, 'Future Racing', 'Racing', '2024-10-01', 'Speed Studios');

Update Ass2.games
set GameID = 151
where GameID Is NULL;

DELETE FROM Ass2.games
where GameID = 151 ;

#Update the price of the game
Update Ass2.sales
set price =60
where Platform = 'Playstation';

Set SQL_Safe_UPDATES= 0;

#Delete the record of the game
Delete From Ass2.sales
where GameID=5;

#Calculate the total number of units sold for each game across all platforms and regions.
Select GameID, Sum(UnitsSold) as TotalSales
From Ass2.sales
Group By GameID;

#Identify the game with the highest number of units sold in North America.
Select GameID, Sum(UnitsSold) as TotalSales
From Ass2.sales
WHERE SalesRegion = 'North America'
Group By GameID
order by TotalSales DESC
Limit 1;

#Get the game titles, platforms, and sales regions along with the units sold for eachgame
Select g.GameTitle, s.Platform, s.SalesRegion, s.UnitsSold
FROM Ass2.games as  g
JOIN Ass2.sales as s ON g.GameID = s.GameID;

#Find all games, including those that have no sales data in the Game Sales table.
Select g.GameID,g.GameTitle,g.Genre,g.Developer,s.Platform,s.SalesRegion
From Ass2.games as g
left join Ass2.sales as s
on g.GameID=s.GameID
where s.GameID is null;

#Retrieve sales records where the game details are missing in the Games table.
Select s.GameID,s.Platform, s.SalesRegion, s.UnitsSold, s.Price 
From Ass2.sales as s
left join Ass2.games as g
on g.GameID=s.GameID
where g.gameid is null;

#Retrieve game sales data for North America and Europe removing duplicate records
Select Distinct * from Ass2.sales
where SalesRegion in ("North America", "Europe");

#Retrieve all game sales data from North America and Europe without removing duplicate records.
Select * from Ass2.sales
where SalesRegion in ("North America", "Europe");
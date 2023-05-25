select * from Netflix.dbo.['netflix-rotten-tomatoes-metacri$']


--Awards Received by Country for global graph
--tableu query, make sure to run Awards Received as sum.
--table1


select  distinct CountryAvailability, sum(cast(AwardsReceived as int)) as totalrewards 
from Netflix.dbo.['netflix-rotten-tomatoes-metacri$']
group by   CountryAvailability
order by totalrewards desc


select  distinct Writer, sum(cast(AwardsReceived as int)) as totalrewards
from Netflix.dbo.['netflix-rotten-tomatoes-metacri$']
group by Writer
order by totalrewards desc

select Writer , sum(cast(AwardsReceived as int)) as quenties 
from Netflix.dbo.['netflix-rotten-tomatoes-metacri$']
Where Writer like '%Quentin Tarantino%'
group by Writer
order by quenties desc

select sum(cast(AwardsReceived as int)) as allrewards, sum(cast(AwardsNominatedFor as int)) as allnominations
from Netflix.dbo.['netflix-rotten-tomatoes-metacri$']

--all rewards=53244 / all nominations= 107125 * 100 = 49.7% AwardRateWhenNominated

select Writer , sum(cast(AwardsReceived as int)) as writerrewards 
from Netflix.dbo.['netflix-rotten-tomatoes-metacri$']
--Where Writer like '%Quentin Tarantino%'
group by Writer
order by writerrewards desc
 

 --awards received by genre
 --table 2

 select Top 10 Genre, sum(cast( AwardsReceived as int)) as totalrewards 
 from Netflix.dbo.['netflix-rotten-tomatoes-metacri$']
 group by Genre
 order by totalrewards desc
 
 --top ten films by box office

 select top 10 Title, Boxoffice 
 from Netflix.dbo.['netflix-rotten-tomatoes-metacri$']
 order by Boxoffice desc

 
 
 --Awards by movie or series
 --table 3

 select [SeriesOr Movie], sum(cast(AwardsReceived as int)) as totalrewards
 from Netflix.dbo.['netflix-rotten-tomatoes-metacri$']
 group by [SeriesOr Movie]
 order by totalrewards desc
use mydb;
create table finaly as
SELECT cost_of_living_index_2022.Country,cost_of_living_index_2022.`Cost of Living Index` as 'Living index', gdp_per_capita.`2020` as 'gpd per capita',`gender development index`.`Gender Development Index (2021)`,hci_malefemale_september_2020.`HUMAN CAPITAL INDEX 2020`,output.`Political stability, 2022`, 
socialprogress.SocialProgressScore,socialprogress.BasicHumanNeeds,socialprogress.Opportunity,socialprogress.`Water andSanitation`,socialprogress.PersonalSafety,socialprogress.`Accessto BasicKnowledge`,socialprogress.EnvironmentalQuality,socialprogress.PersonalRights,
socialprogress.HealthandWellness,socialprogress.Inclusiveness,socialprogress.`Access toAdvancedEducation`,
`world-happiness-report-2021`.`Social support`
FROM cost_of_living_index_2022 
left JOIN gdp_per_capita ON cost_of_living_index_2022.Country = gdp_per_capita.`Country Name`
left JOIN `gender development index` ON cost_of_living_index_2022.Country = `gender development index`.Country
left JOIN hci_malefemale_september_2020 ON cost_of_living_index_2022.Country = hci_malefemale_september_2020.`Country Name`

left JOIN output ON cost_of_living_index_2022.Country = output.Countries
left JOIN socialprogress ON cost_of_living_index_2022.Country = socialprogress.Country
left JOIN `world-happiness-report-2021` ON cost_of_living_index_2022.Country = `world-happiness-report-2021`.`п»їCountry name`;


create table finaly3 as
select continents.`п»їContinent` 
from finaly
left join continents on result_sin.Country=continents.Country;

create database crew_analytics;
use crew_analytics;
create table crew (Crew_Utilized float(4,2),Planned int(2),Crew_Rank varchar(20),Base_Station varchar(20));
alter table crew add column home_ratio float GENERATED ALWAYS AS (utilized_airport_standby/departures) stored;

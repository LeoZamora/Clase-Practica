use SGEP

create table Destinatarios(
Id_Dest int identity(1,1) primary key not null,
PND nvarchar(15) not null,
SND nvarchar(15),
PAD nvarchar(15) not null,
SAD nvarchar(15),
TelD char(8) check (TelD like '[2|5|7|8][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
DirD nvarchar(50) not null,
Id_Depto int foreign key references Deptos(Id_Depto) not null
)

select * from Deptos
select*from Municipios
select * from Comarcas
select * from Conductores

insert into Conductores values('001-281167-0050Q','Angel','','Zuniga','',10000,'76005355',
'Waspan Norte',1)

insert into Destinatarios values('Evelyn','','Espinoza','Aragon','83295424','Managua',1)

select * from Destinatarios

backup database SGEP to disk='C:\Program Files\Microsoft SQL Server\MSSQL15.SA\MSSQL\Backup\SGEP.bak'

create table envio(
CodP char(4) primary key not null,
fecha nvarchar(15),
DirD nvarchar(50) not null,
) 

select * from envio 

insert into envio values ('1023','03-12-23','Carretera  norte ')
insert into envio values ('1111','03-12-22','Carretera  sur 3 abajo ')



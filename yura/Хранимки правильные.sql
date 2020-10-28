--use Razrab_Andryuschenko
alter proc ins_dol
@Nam_dol varchar(100)
as 
begin
insert into Dolshnost(Nam_dol) values(@Nam_dol)
end
--exec ins_dol  '�������������'
--select * from Dolshnost

alter proc ins_etap
@Nam_etap varchar(150)
as
begin
insert into Etap(Nam_etap) values(@Nam_etap)
end
exec ins_etap  'planing'
select * from Etap

alter proc ins_proect
@Nam_proect varchar(200),
@janr  varchar(50),
@data_nash date,
@menager char(50)
as
begin
insert into Proect ( Nam_proect,janr,data_nash,menager) values(@Nam_proect,@janr,@data_nash,@menager)
end
exec ins_proect  '�����2', '���������','2020-12-03','������'
select * from Proect
create proc ins_rabotnic
@Fio varchar(100),
@N_Dol  int,
@Iphone int,
@St_rab char(50),
@Date_pr date
as
begin
insert into Rabotnik(Fio,N_Dol,Iphone ,St_rab ,Date_pr) values(@Fio,@N_Dol,@Iphone,@St_rab,@Date_pr)
end
exec ins_rabotnic '������ ',1,234,'2020-03-02','2020-03-02'
select  * from Rabotnik
create proc upd_rab
@N_rab int,
@date_yv date
as
begin
update Rabotnik set  Date_yv =@date_yv where Rabotnik.N_Rab=@N_rab
end
select * from Work
create proc ins_work
@Nam_work varchar(100),
@T_days date,
@N_Etap int
as 
begin
insert into Work(Nam_work,T_days,N_Etap) values(@Nam_work,@T_days,@N_Etap)
end
exec ins_work '�������������� ','2020-02-02',1
select * from Zadanie
create proc ins_zadanie
@Sr_vip date,
@N_Rab int,
@St_rab char(50),
@Data_nash date,
@N_Proekta int,
@N_Work int 
as
 begin
 insert into Zadanie(Sr_vip,N_Rab,St_rab,Data_nash,N_Proekta,N_Work) values(@Sr_vip,@N_Rab,@St_rab,@Data_nash,@N_Proekta,@N_Work)
 end
exec ins_zadanie '2020-12-12',1,'�����������','2020-02-05',1,1 
select * from Zadanie
create proc vip_zadan
@N_zad int,
@date_fakt date
as
begin
update Zadanie set Date_fakt=@date_fakt where N_Zad=@N_zad
end
/*
добавляем стоимость и правим процедуру ins_proekt
*/
use Razrab_Andryuschenko
select * from Proect
update Proect set cost_plan=100,cost_fact=1000
ALTER proc [dbo].[ins_proect]
@Nam_proect varchar(200),
@janr  varchar(50),
@data_nash date,
@menager char(50),
@cost_plan decimal(10,2), 
@cost_fact decimal(10,2)
as
begin
insert into Proect ( Nam_proect,janr,data_nash,menager,cost_plan, cost_fact) values(@Nam_proect,@janr,@data_nash,@menager,@cost_plan,@cost_fact)
end
exec ins_proect 'doom2','game','2020-12-12','Петроова',100.0000,100.0000
select * from Proect




















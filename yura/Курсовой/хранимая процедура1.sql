create procedure ins_isp
@FioIsp varchar(100),
@Dol varchar(100),
@Tel decimal(12,0),
@Dat_pr date
as
Insert into ispolnitel (FioIsp,Dol,Tel,Dat_pr)
Values (@FioIsp,@Dol,@Tel,@Dat_pr)

exec ins_isp '���������� ���� ���������','��������',89185421831,'12-12-2012'
select * from ispolnitel
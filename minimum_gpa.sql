select d.DepartmentName as Department,s.Name as Name,s.GPA as GPA 
from Students s
join Departments d
on s.DepartmentId = d.DepartmentId
where (s.DepartmentId, s.GPA) in(
select DepartmentId, min(GPA) as GPA
from Students
group BY DepartmentId
)
order by DepartmentName

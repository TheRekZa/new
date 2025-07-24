--กิติธัช ไชยสัจ 67040249108
-- แบบฝึกหัดคำสั่ง SQL ใช้ฐานข้อมูล Northwind
--1. ต้องการรหัสพนักงาน คำนำหน้า ชื่อ นามสกุล ของพนักงานที่อยู่ในเมือง London
select * from Employees
select EmployeeID, titleofcourtesy , FirstName , LastName from Employees where City = 'London'
--2. ต้องการข้อมูลสินค้าที่มีรหัสประเภท 1,2,4,8 และมีราคา ช่วง 50-100$
select * from Products where CategoryID in (1,2,4,6) and UnitPrice between 50 and 100 
--3. ต้องการประเทศ เมือง ชื่อบริษัทลูกค้า ชื่อผู้ติดต่อ เบอร์โทร ของลูกค้าทั้งหมด
select country,city,companyname,contactname,Phone from Customers 
order by 1,2,3
--4. ข้อมูลของสินค้ารหัสประเภทที่ 1 ราคาไม่เกิน 50 หรือสินค้ารหัสประเภทที่ 8 ราคาไม่เกิน 75
select * from Products where (CategoryID=1 and UnitPrice <= 50) or (CategoryID=8 and UnitPrice <= 75)
--5. ชื่อบริษัทลูกค้า ที่อยู่ใน ประเทศ USA ที่ไม่มีหมายเลข FAX  เรียงตามลำดับชื่อบริษัท 
select companyname from Customers where fax is null and country = 'USA'
--6. ต้องการรหัสลูกค้าชื่อบริษัท และ ชื่อผู้ติดต่อ เฉพาะชื่อบริษัทที่มีคำว่า 'con'
select customerID, companyname, contactName from Customers where CompanyName like '%con%'

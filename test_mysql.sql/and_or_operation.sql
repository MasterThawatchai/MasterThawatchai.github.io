-- ! การเชื่อมเงือนไขต่อกัน ด้วยการใช้ keyword "AND” นำหน้าแต่ละเงื่อนไขที่เพิ่มเข้ามา
SELECT id, name_customer, SALARY FROM customers WHERE SALARY > 2000 AND age_customer < 25; 

-- ! การเชื่อมเงือนไขต่อกัน ด้วยการใช้ keyword "OR” นำหน้าแต่ละเงื่อนไขที่เพิ่มเข้ามา
SELECT id, name_customer, SALARY FROM customers WHERE SALARY > 2000 OR age_customer < 25;
--  ! การดึงข้อมูลจาก table CUSTOMERS เพื่อแสดง column NAME รวมถึง SALARY รวมทั้งหมดของ NAME เดียวกัน จากการจัดกลุ่ม
 SELECT name_customer, SUM(SALARY) FROM customers GROUP BY name_customer;
 
--  ? เอาไว้ทดสอบเพื่อให้เห็นภาพ
-- UPDATE customers set name_customer = 'Ramesh' WHERE id = 2;
-- UPDATE customers set name_customer = 'kaushik' WHERE id = 5;
-- ! การดึงข้อมูลจาก table CUSTOMERS ทุก column โดยจัดเรียงข้อมูลด้วย column ที่ชื่อ NAME และ SALARY จากน้อยไปมาก
SELECT * FROM customers ORDER BY name_customer, SALARY;

-- ! การดึงข้อมูลจาก table CUSTOMERS ทุก column โดยจัดเรียงข้อมูลด้วย column ที่ชื่อ NAME จากมากไปน้อย
SELECT * FROM customers ORDER BY SALARY DESC;
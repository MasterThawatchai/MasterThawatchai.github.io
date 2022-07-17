-- ? เราสามารถใส่ keyword “DISTINCT” นำหน้า column name ที่ต้องการเอาข้อมูลที่ซ้ำออก

SELECT DISTINCT SALARY FROM customers ORDER BY SALARY;

-- ! เมื่อ execute ดู ผลลัพธ์ที่ได้ จะเห็นว่า SALARY ที่มีค่าซ้ำกันเช่น 2000 จะถูกนำเอาบรรทัดที่ซ้ำออกให้เหลือเพียงบรรทัดเดียว
-- ? Database SQL – Like Clause
-- ! การนำเอา LIKE operator มาใช้งาน เราจะใช้ Percent (%) หรือ Underscore (_) เป็นตัวระบุค่า widecard
-- Percent (%) มีค่าเท่ากับตัวอักษรอะไรก็ได้ และจำนวนกี่ตัวก็ได้
-- Underscore (_) มีค่าเท่ากับตัวอักษรอะไรก็ได้ เพียงแค่ 1 ตัว

-- ? การนำเอา LIKE operator มาใช้งาน เราจะใช้ Percent (%) หรือ Underscore (_) เป็นตัวระบุค่า widecard

SELECT * FROM customers WHERE SALARY LIKE '200%'; -- ! WHERE SALARY LIKE ‘200%’ = ค้นหาข้อมูลที่ขึ้นต้นด้วย 200

SELECT * FROM customers WHERE SALARY LIKE '%200%'; -- ! ค้นหาข้อมูลที่มีส่วนประกอบ 200

SELECT * FROM customers WHERE SALARY LIKE '_00%'; -- !ค้นหาข้อมูลที่ขึ้นต้นด้วนอะไรก็ได้ 1 ตัว แล้วตามด้วย 00

SELECT * FROM customers WHERE SALARY LIKE '2_%_%'; -- !ค้นหาข้อมูลที่ขึ้นต้นด้วย 2 และข้อมูลต้องมีอย่างน้อย 3 ตัวอักษรขึ้นไป

SELECT * FROM customers WHERE SALARY LIKE '%2'; -- !ค้นหาข้อมูบที่ลงท้ายด้วย 2

SELECT * FROM customers WHERE SALARY LIKE '_2%3'; -- !ค้นหาข้อมูลที่ตัวอักษรตัวที่ 2 มีค่าเท่ากับ 2 และ ลงท้ายด้วย 3

SELECT * FROM customers WHERE SALARY LIKE '2___3'; -- !ค้นหาข้อมูลที่ขึ้นต้นด้วย 2 และ ลงท้ายด้วย 3 ข้อมูลทั้งหมดรวมกันต้องมี 5 ตัวอีกษร
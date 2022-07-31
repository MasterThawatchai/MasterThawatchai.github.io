/*อ้างอิงจาก Constraint ซึ่งเป็นการจำกัดข้อมูลภายใน table หรือ column หนึ่งในนั้นคือ NOT NULL Constraint 
โดยปกติแล้ว column สามารถมีข้อมูลที่เป็นค่า NULL ได้ แต่ถ้าเราไม่ต้องการให้มีค่า NULL หรือ ค่าว่างเลยใน column นั้น 
เราสามารถกำหนดได้จาก NOT NULL Constraint จากนั้น column นั้น จะไม่อนุญาตให้มีค่าว่างได้
ในความเป็นจริง NULL ไม่ได้หมายความว่าไม่มีข้อมูล แต่หมายถึงไม่ทราบข้อมูล (unknown data)*/

/* !ตัวอย่าง NOT NULL Constraint
เราสร้าง table ชื่อ CHAMPION_LOL ที่ประกอบด้วย 5 column คือ ID, CHAMPION, LOCATIONS, GEN, PRICE ซึ่ง  3 ใน 5 column 
นั้นมีการกำหนด NOT NULL Constraint คือ ID, CHAMPION LOCATIONS ทำให้ 3 column นี้ห้ามมี่ค่า NULL*/

CREATE TABLE CHAMPION_LOL(
   ID INT NOT NULL,
   CHAMPION VARCHAR (30) NOT NULL,
   LOCATIONS  VARCHAR  NOT NULL,
   ADDRESS  CHAR (30) ,
   PRICE   DECIMAL (25),       
   PRIMARY KEY (ID)
);

-- ? ในกรณีที่สร้าง table ไปแล้ว แต่ต้องการเพิ่มข้อจำกัด NOT NULL Constraint เราสามารถใช้คำสั่ง SQL ALTER เช่นการเพิ่ม NOT NULL Constraint กับ PRICE column
ALTER TABLE CUSTOMERS MODIFY SALARY  DECIMAL (18, 2) NOT NULL; -- ! ตำสั่ง SQL ALTER เช่นการเพิ่ม NOT NULL Constraint กับ PRICE column

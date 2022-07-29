<!-- V5VyTox6GSeoa3MqCvsDJv9MNv4efYR5GP4ovYbM3FS -->
<!-- ! test -->
<!-- ? test -->
<!-- * test -->
# Thawatchai Ngaosee

## javascript

```js
console.log("hello")
```
# Github Avtion
1. สร้าง Floder ``` .github ```
2. สร้าง floder ``` .github ``` ชื่อ ``` workflows ```
3. สร้าง file coconut-actions-demo-yml ไว้ใน folder workflows 
4. ใส่ code ไว้ใน yml


``` yml
name: GitHub Actions Demo
on: [push]
jobs:
  First-Job: # ! ชื่อ job
    runs-on: ubuntu-latest # ! os ที่ใช้งาน
    steps:
      - run: echo "🎉 อาผ้าลงเครื่องซักผ้า" # ? ! ชื่อ job
      - uses: snow-actions/line-notify@v1.0.0 # ?lib line
        with: # ? ตัวแปรที่ต้องส่ง
          access_token: V5VyTox6GSeoa3MqCvsDJv9MNv4efYR5GP4ovYbM3FS
          message: เอาผ้าลงเครื่องซักผ้า

  secound-Job: # ! ชื่อ job
    runs-on: ubuntu-latest # ! os ที่ใช้งาน
    needs: First-Job
    steps:
      - run: echo "🎉 ใส่ผงซักฟอก" # ? ! ชื่อ job
      - uses: snow-actions/line-notify@v1.0.0 # ?lib line
        with: # ? ตัวแปรที่ต้องส่ง
          access_token: V5VyTox6GSeoa3MqCvsDJv9MNv4efYR5GP4ovYbM3FS
          message: ใส่ผงซักฟอก

  thrid-Job: # ! ชื่อ job
    runs-on: ubuntu-latest # ! os ที่ใช้งาน
    needs: secound-Job
    steps:
      - run: echo "🎉 ใส่ผงซักฟอก" # ? ! ชื่อ job
      - uses: snow-actions/line-notify@v1.0.0 # ?lib line
        with: # ? ตัวแปรที่ต้องส่ง
          access_token: V5VyTox6GSeoa3MqCvsDJv9MNv4efYR5GP4ovYbM3FS
          message: ใส่ผงซักฟอก

  fouth-Job: # ! ชื่อ job
    runs-on: ubuntu-latest # ! os ที่ใช้งาน
    needs: thrid-Job
    steps:
      - run: echo "🎉 หยอดเหรียญ" # ? ! ชื่อ job
      - uses: snow-actions/line-notify@v1.0.0 # ?lib line
        with: # ? ตัวแปรที่ต้องส่ง
          access_token: V5VyTox6GSeoa3MqCvsDJv9MNv4efYR5GP4ovYbM3FS
          message: หยอดเหรียญ รอดำเนินการ จนซักเสร็จ

  five-Job: # ! ชื่อ job
    runs-on: ubuntu-latest # ! os ที่ใช้งาน
    needs: fouth-Job
    steps:
      - run: echo "🎉 ตากผ้า" # ? ! ชื่อ job
      - uses: snow-actions/line-notify@v1.0.0 # ?lib line
        with: # ? ตัวแปรที่ต้องส่ง
          access_token: V5VyTox6GSeoa3MqCvsDJv9MNv4efYR5GP4ovYbM3FS
          message: นำผ้าตากแดด
```



# database With Docker

1. สิ่งที่ต้องมี คือไฟล์ ```docker-compose.yml ```
2. extenstion ของ vscode ชื่อ ``` MySQL ```
3. rundocker compose ด้สยคำสั่ง 
```bash 
docker compose up 
```

...
## คำสั่ง  mysql พื้นฐาน
1. การเลือกข้อมูลมา show
```sql 
SELECT xxx, xxx2 FROM products
```

```sql 
SELECT products.* FROM products
```

2. การเปลี่ยนชื่อคอลัมน์

```sql 
SELECT products.* , products.price * 0.07 As vat FROM products
```

3. ตาราง (Table) 
   
```SQL – AND & OR Clauses  คือ การเชื่อมความสัมพันธ์ของเงื่อนไข
SELECT id, name_customer, SALARY FROM customers WHERE SALARY > 2000 AND age_customer < 25; 
SELECT id, name_customer, SALARY FROM customers WHERE SALARY > 2000 OR age_customer < 25;
``` 

```SQL ORDER BY  คือ การจัดเรียงข้อมูลที่แสดงผลตามลำดับ
SELECT * FROM customers ORDER BY name_customer, SALARY; 
SELECT * FROM customers ORDER BY SALARY DESC;
``` 

```SQL – Group By  คือ การจัดกลุ่มข้อมูลตาม column ที่กำหนด
 SELECT name_customer, SUM(SALARY) FROM customers GROUP BY name_customer;
``` 

```SQL – Like Clause คือ การเปรียบเทียบค่าแบบส่วนประกอบ
SELECT * FROM customers WHERE SALARY LIKE '200%'; -- ! WHERE SALARY LIKE ‘200%’ = ค้นหาข้อมูลที่ขึ้นต้นด้วย 200

SELECT * FROM customers WHERE SALARY LIKE '%200%'; -- ! ค้นหาข้อมูลที่มีส่วนประกอบ 200

SELECT * FROM customers WHERE SALARY LIKE '_00%'; -- !ค้นหาข้อมูลที่ขึ้นต้นด้วนอะไรก็ได้ 1 ตัว แล้วตามด้วย 00

SELECT * FROM customers WHERE SALARY LIKE '2_%_%'; -- !ค้นหาข้อมูลที่ขึ้นต้นด้วย 2 และข้อมูลต้องมีอย่างน้อย 3 ตัวอักษรขึ้นไป

SELECT * FROM customers WHERE SALARY LIKE '%2'; -- !ค้นหาข้อมูบที่ลงท้ายด้วย 2

SELECT * FROM customers WHERE SALARY LIKE '_2%3'; -- !ค้นหาข้อมูลที่ตัวอักษรตัวที่ 2 มีค่าเท่ากับ 2 และ ลงท้ายด้วย 3

SELECT * FROM customers WHERE SALARY LIKE '2___3'; -- !ค้นหาข้อมูลที่ขึ้นต้นด้วย 2 และ ลงท้ายด้วย 3 ข้อมูลทั้งหมดรวมกันต้องมี 5 ตัวอีกษร
``` 

```SQL – Distinct คือ การแสดงข้อมูลโดยไม่ซ้ำกันจาก column ที่กำหนด

SELECT DISTINCT SALARY FROM customers ORDER BY SALARY; -- !ค่าซ้ำกันเช่น 2000 จะถูกนำเอาบรรทัดที่ซ้ำออกให้เหลือเพียงบรรทัดเดียว
``` 

``` วิธีลง cypress
1. cypresss บนเว็บไซต์ download now
2. โลหด เสร็จแล้วแตกไฟล์เก็บไว้ซักที่บนเครื่อง
3. เปิดไฟล์ แล้ว ดับเบิ้ลคลิกที่ Cypress Type Application
4. open project เรา
5. เลือก E2E test > continue > เลือก chrome > start E2E Testing
6. ลง 
- npm install --save-dev typescript
- สร้างไฟล์ josn tsconfig.json ที่ floder cypress
- npm i @types/testing-library__cypress
```

```js ขั้นตอนการ upload image cypress
1 npm install --save-dev cypress-file-upload 
2 นำไฟล์ ภาพเก็บไว้ที่ folder fixtures
3. folder support > commands.ts ให้ import 'cypress-file-upload';
4. ไฟล์ funtion.ts ที่เราใช้ run test ให้ import '../../support/commands';
5. const p = 'divas.jpg';  // เพิ่มตัวแปลเพื่อเก็บไฟล์รูปภาพ
6. เพิ่มโค้ด cy.get('input[type="file"]').attachFile(p) // เพิ่มโค้ดอัปโหลดไฟล์ โดยใช้ input type file ตัวที่ใช้อัปโหลดรูป หรือ อาจจะ id แทนได้

```

 ```การออก report หลังจาก test
 1. นำโค้ดด้านล่างไปเก็บที่ cypress.config.ts
 "reporter": "mochawesome",
  "reporterOptions": {
     "reportDir": "cypress/reporters",
     "overwrite": false,
     "html": true,
     "json": true
  }
  2. npm install mochawesome --save-dev
  3. สร้าง folder reporters ไว้ใน folder cypress
  4. npx cypress run // เป็นการ run ออก report ไฟล์ ที่เรา test ทั้งหมด
  5. หรือ จะออก report แค่ไฟล์เดียว  npx cypress run --spec .\cypress\e2e\register.cy.ts // register.cy.ts คือไฟล์เดียวที่เราจะออก report

 ```
CREATE DATABASE my_restaurant;
CREATE EXTENSION 'uuid-ossp';

CREATE TABLE category (
  category_id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
  category_name varchar(40) not null
);

CREATE TABLE restaurant (
  restaurant_id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
  restaurant_name varchar(64) not null,
  category_id uuid REFERENCES category(category_id)
);


CREATE TABLE menu (
  menu_id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
  menu_name varchar(34) not null,
  menu_price varchar(40) not null,
  restaurant_id uuid not null,
    FOREIGN KEY(restaurant_id)
    REFERENCES restaurant(restaurant_id)
    ON DELETE CASCADE
);

INSERT INTO category(category_name) VALUES ('Fast_food');
INSERT INTO category(category_name) VALUES ('Milliy_taomlar');
INSERT INTO category(category_name) VALUES ('Shirinliklar');

INSERT INTO restaurant(restaurant_name, category_id, restaurant_img) VALUES ('MAX_WAY','cfc7adba-34fa-4c00-830a-4130966f98e9', 'https://play-lh.googleusercontent.com/JuX9yN8Dz_SWrWA9-ovJZCGszkxo5mtr8aCZq2joLklJpCfTargUI3tfba7vzB79rsQS');
INSERT INTO restaurant(restaurant_name, category_id, restaurant_img) VALUES ('OQ TEPA Lavash','cfc7adba-34fa-4c00-830a-4130966f98e9','https://pasta.uz/upload/products/IMG_20211128_175546_719.jpg');

INSERT INTO restaurant(restaurant_name, category_id, restaurant_img) VALUES ('Rayhon','b35d9f08-4e38-49b1-993f-3edd38982bcf', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1GxAEbe5Tq3qjUtEtfejQXh-anXs2wYKRrw&usqp=CAU');
INSERT INTO restaurant(restaurant_name, category_id, restaurant_img) VALUES ('Yalpiz','b35d9f08-4e38-49b1-993f-3edd38982bcf', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_pk_vodwbXnw6bnNMDD6KOE8lQGdE7jyDzg&usqp=CAU');
INSERT INTO restaurant(restaurant_name, category_id, restaurant_img) VALUES ('Mazza milliy_taomlar','b35d9f08-4e38-49b1-993f-3edd38982bcf', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_XyjhaRsM8J-9dGPcPZdCQye0TnRDFi1nxQ&usqp=CAU');
INSERT INTO restaurant(restaurant_name, category_id, restaurant_img) VALUES ('Nihol', 'b35d9f08-4e38-49b1-993f-3edd38982bcf', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBzvoDbipF7c0gvRJ1QQbEG2aCwAQBtjxBsQ&usqp=CAU');
INSERT INTO restaurant(restaurant_name, category_id, restaurant_img) VALUES ('Multi_mafe','b35d9f08-4e38-49b1-993f-3edd38982bcf', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQIgGCo7Q3ZhmbBQw7KYmsHMb-VjeyEdJFNw&usqp=CAU');



INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Pizza Americano','99.999', 'ec137ca6-fb4e-42e1-88ce-f611796861d8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6MzawnHrJHdIz-OmG_RjJFg5R4bIssu4-CA&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Shaurma','17.999', 'ec137ca6-fb4e-42e1-88ce-f611796861d8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpowT1gv7AiE5ZVnYT1F-cTLKMbrm6ZZr1ZQ&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Pizza Uchsi','100.000', 'ec137ca6-fb4e-42e1-88ce-f611796861d8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfpSjA65NvlwNG4hDyU3tQyQVyo6bqMjHdDs-hp8APEEz7lyNOcDPJjaBtlrIjYSaHqkY&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Pizza combo', '135.000', 'ec137ca6-fb4e-42e1-88ce-f611796861d8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpJZFZeljzXwPZeZICOU-RlVOUMPKNAqA7RnHjXAIKfDqUClABxnIUH49rCmE2ANfVHOg&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Claab burger','20.000', 'ec137ca6-fb4e-42e1-88ce-f611796861d8', 'https://pasta.uz/upload/products/IMG_20211126_123138_000.jpg');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Lavash tandir','24.000', 'ec137ca6-fb4e-42e1-88ce-f611796861d8', 'https://pasta.uz/upload/products/IMG_20211126_123117_225.jpg');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Xot dog','15.000', 'ec137ca6-fb4e-42e1-88ce-f611796861d8', 'https://pasta.uz/upload/products/kingdog.jpg');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('free','12.000', 'ec137ca6-fb4e-42e1-88ce-f611796861d8', 'https://pasta.uz/upload/products/IMG_20211126_123136_317.jpg');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Gamburger','26.000', 'ec137ca6-fb4e-42e1-88ce-f611796861d8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSnIRMGIfLS6g2ou8kgc-aVvwPlHDCaEZzWPHQ_hdP1r_90QkjXryNJM_14eStg7FZUUA&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Gamburger combo','38.000', 'ec137ca6-fb4e-42e1-88ce-f611796861d8', 'https://pasta.uz/upload/products/IMG_20211126_123158_562.jpg');





INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Lavash','24.999', '36a1430a-bb2c-491b-8c4c-3c9ff46656b8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGz3CYN8msbW_qXP8gaF-WAiLCK16iWcpZpMI6cStOQuY_LqPhInQnZ0SNJJaNUksyEIU&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Clab sendwich','25.999', '36a1430a-bb2c-491b-8c4c-3c9ff46656b8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5IhBueZIydGMjDktXMQcefRbvSAMZfnkA2fCIZOLEQTbya4xrfyGkBdFLiUxWcJXwWGc&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Lavash tandir','26.000', '36a1430a-bb2c-491b-8c4c-3c9ff46656b8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwpBrop2ntaY_dOXgEtfcFVpRynPhcMmFlrqufSF6SK-ZGCL9DN_QAx0Bi93ofXZnjrr0&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Gamburger', '25.000', '36a1430a-bb2c-491b-8c4c-3c9ff46656b8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQr5xyXffDkudi-lo7xEzGjQnSLAtTadn1Cv1I6_LIbwS_usahIYv296UR4tPlIwzxn4oE&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Qizil Pasta','4.000', '36a1430a-bb2c-491b-8c4c-3c9ff46656b8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtRWpbkFE6kmckiHPMJ4aZJ9UCYo0YYW4a8mtLLoBvf7rwJ36O4xdpmv08IuTKLZwPKWY&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Pasta','4.000', '36a1430a-bb2c-491b-8c4c-3c9ff46656b8', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXaykphlNq1jBFDVhlp3Nj-N3OQUcRtF6RV4dJuvnZNXep1Ce2NOGXl_XFkARzDiViASc&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Max fre','16.000', '36a1430a-bb2c-491b-8c4c-3c9ff46656b8', 'https://pasta.uz/upload/products/%D0%9D%D0%90%D0%93%D0%93%D0%95%D0%A2%D0%A1%D0%AB.jpg');



INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Osh','39.999', '88c03669-0c1a-4d53-a9eb-be0840f10ad7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmOvd5kAg8RPTy3UcYlwtwxBZX1SGuv-N3WQ&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Shashlik','16.999', '88c03669-0c1a-4d53-a9eb-be0840f10ad7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw3HSytYbrDZMsIqTxP9Jxm1czMrJ0ngG9jg&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Norin', '21.000', '88c03669-0c1a-4d53-a9eb-be0840f10ad7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhtJkgKqq4u4l71avFgJu0oeLvPa8dCVUi5g&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Noxat shorak','36.000', '88c03669-0c1a-4d53-a9eb-be0840f10ad7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZR7OU2rhcqcf9JmU_yCLp5OYtgP-FjHserg&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Koza shorva','19.000', '88c03669-0c1a-4d53-a9eb-be0840f10ad7','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShGEqyeV7KWP04tepy0E5jpk1YnC9l_r-54A&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Asarti','110.000', '88c03669-0c1a-4d53-a9eb-be0840f10ad7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpqQkjbGKajLMJly53bowVtoLLAHu4yG4sAw&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Manti','8.000', '88c03669-0c1a-4d53-a9eb-be0840f10ad7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR91qdOE1U4YeHfOchBgFyPVlGICQAZN4IgeA&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Grill','48.000', '88c03669-0c1a-4d53-a9eb-be0840f10ad7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIVVf5scibyEo-0nlP1ZW6yMzDVoGRdy79mg&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Qozon kabob','48.000', '88c03669-0c1a-4d53-a9eb-be0840f10ad7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKutreAEv1DPDq_elB1gkP9reVMwh7R8iE_g&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Shorva','28.000', '88c03669-0c1a-4d53-a9eb-be0840f10ad7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqPSoPsZi5iZyBKpBgAc3dpPdbZQUDq83Tew&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Somsa','6.500', '88c03669-0c1a-4d53-a9eb-be0840f10ad7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9aXaSQ5W9SKVmL1ObtVKCQNQMcxVljZiAGA&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Dimlama','41.000', '88c03669-0c1a-4d53-a9eb-be0840f10ad7', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeRGAx-ChUIR0bt6ue25oHDSoJTFWFOPY5Ew&usqp=CAU');


INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Osh','36.999', '213867c7-a378-41db-8aab-f72135507c6c', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmOvd5kAg8RPTy3UcYlwtwxBZX1SGuv-N3WQ&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Shashlik','13.999', '213867c7-a378-41db-8aab-f72135507c6c', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw3HSytYbrDZMsIqTxP9Jxm1czMrJ0ngG9jg&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Koza shorva','17.000', '213867c7-a378-41db-8aab-f72135507c6c','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShGEqyeV7KWP04tepy0E5jpk1YnC9l_r-54A&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Norin', '21.000', '213867c7-a378-41db-8aab-f72135507c6c', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhtJkgKqq4u4l71avFgJu0oeLvPa8dCVUi5g&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Noxat shorak','34.000', '213867c7-a378-41db-8aab-f72135507c6c', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZR7OU2rhcqcf9JmU_yCLp5OYtgP-FjHserg&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Asarti','110.000', '213867c7-a378-41db-8aab-f72135507c6c', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpqQkjbGKajLMJly53bowVtoLLAHu4yG4sAw&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Manti','5.000', '213867c7-a378-41db-8aab-f72135507c6c', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR91qdOE1U4YeHfOchBgFyPVlGICQAZN4IgeA&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Grill','55.000', '213867c7-a378-41db-8aab-f72135507c6c', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIVVf5scibyEo-0nlP1ZW6yMzDVoGRdy79mg&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Qozon kabob','49.000', '213867c7-a378-41db-8aab-f72135507c6c', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKutreAEv1DPDq_elB1gkP9reVMwh7R8iE_g&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Shorva','25.000', '213867c7-a378-41db-8aab-f72135507c6c', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqPSoPsZi5iZyBKpBgAc3dpPdbZQUDq83Tew&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Somsa','8.000', '213867c7-a378-41db-8aab-f72135507c6c', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9aXaSQ5W9SKVmL1ObtVKCQNQMcxVljZiAGA&usqp=CAU');
INSERT INTO menu(menu_name, menu_price, restaurant_id, menu_img) VALUES ('Dimlama','42.000', '213867c7-a378-41db-8aab-f72135507c6c', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeRGAx-ChUIR0bt6ue25oHDSoJTFWFOPY5Ew&usqp=CAU');






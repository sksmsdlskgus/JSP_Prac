CREATE DATABASE pro01;

USE pro01;

SHOW TABLEs;

CREATE TABLE MEMBER(
id VARCHAR(16) primary key NOT NULL,
pw VARCHAR(330) NOT NULL,
NAME VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
tel VARCHAR(13),
regdate timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
POINT INT DEFAULT 0
);

DESC MEMBER;

SELECT * FROM member;

INSERT INTO member (id, pw, NAME, email, tel) VALUES
('admin','1234','관리자','admin@sdu.com','010-2886-2331');

INSERT INTO member(id,pw,NAME,email,tel) VALUES
('lee','4321','이나현', 'lee@edu.com','010-2886-2331');

--게시판 테이블 생성
CREATE TABLE board(
bno INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(200) NOT NULL,
content VARCHAR(1000),
author VARCHAR(16),
regdate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
cnt INT DEFAULT 0,
FOREIGN KEY(author) references member(id)
);

SELECT * FROM board;

INSERT INTO board(title, content, author) VALUES
('더미글1','여기는 더미글1입니다','admin');
CREATE TABLE "Social_Life" (
    "student" int   NOT NULL,
    "age" int   NOT NULL,
    "studytime" int   NOT NULL,
    "activites" varchar   NOT NULL,
    "internet" varchar   NOT NULL,
    "romantic" varchar   NOT NULL,
    "freetime" int   NOT NULL,
    "goout" int   NOT NULL,
    CONSTRAINT "pk_Social_Life" PRIMARY KEY (
        "student"
     )
);

CREATE TABLE "Family_Life" (
    "student" int   NOT NULL,
    "school" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "age" int   NOT NULL,
    "Medu" int   NOT NULL,
    "Fedu" int   NOT NULL,
    "Mjob" varchar(40)   NOT NULL,
    "Fjob" varchar(40)   NOT NULL,
    "guardian" varchar(40)   NOT NULL,
    "famsup" varchar(4)   NOT NULL,
    CONSTRAINT "pk_Family_Life" PRIMARY KEY (
        "student"
     )
);

ALTER TABLE "Social_Life"
RENAME COLUMN activites TO activities

SELECT fl.student, fl.school, fl.sex, fl.age, fl.guardian, sl.studytime, sl.activities, sl.romantic, sl.freetime
FROM "Family_Life" as fl
RIGHT JOIN "Social_Life" as sl
ON fl.student = sl.student

DROP TABLE IF EXISTS articleCategory;
DROP TABLE IF EXISTS article;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS user;

CREATE TABLE article (
    articleId binary(16)not null,
    articleAuthor varchar(32) not null,
    articleCategory varchar(32) not null,
    articleDate datetime(3) not null,
    articleHash binary(32) not null,
    articleProvider varchar(32) not null,
    articleSubject varchar(32) not null,
    articleTitle varchar(64) not null,
    primary key (articleId)
);

CREATE TABLE user(
    userId binary(32) not null,
    userEmail binary(32)not null,
    userHash binary(32)not null,
    userPhoneNum numeric(16)not null,
    primary key(userId)
);

CREATE TABLE category(
    categoryId binary(16) not null,
    categoryHash binary(32) not null,
    categoryProvider varchar(32) not null,
    categorySubject varchar(32) not null,
    categoryTitle varchar(32) not null,
    primary key(categoryId)
);

CREATE TABLE articleCategory(
    articleCategoryId binary(16) not null,
    articleCategoryProvider varchar(32) not null,
    articleSubject varchar(32) not null,
    primary key(articleCategoryId)
);


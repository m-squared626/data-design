DROP TABLE IF EXISTS articleCategory;
DROP TABLE IF EXISTS article;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS user;

CREATE TABLE article (
    articleId binary(16)not null,
    articleAuthor binary(32) not null,
    articleCategory binary(32) not null,
    articleDate datetime(16) not null,
    articleHash binary(32) not null,
    articleProvider binary(32) not null,
    articleSubject binary(32) not null,
    articleTitle binary(32) not null,
    primary key (articleId)
);

CREATE TABLE user(
    userId binary(32) not null,
    userEmail binary(32)not null,
    userHash binary(32)not null,
    userPhoneNum binary(32)not null
    primary key (userId)
    );

CREATE TABLE category(
    categoryId binary(16) not null,
    categoryHash binary(32) not null,
    categoryProvider binary(32) not null,
    categorySubject binary(32) not null,
    categoryTitle binary(32) not null,
    primary key(categoryId)
);

CREATE TABLE articleCategory(
    articleCategoryId binary(16) not null,
    articleCategoryProvider binary(32) not null,
    articleSubject binary(32) not null,
    primary key(articleCategoryId)
);


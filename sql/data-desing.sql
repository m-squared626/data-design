DROP TABLE IF EXISTS articleCategory
DROP TABLE IF EXISTS article
DROP TABLE IF EXISTS category
DROP TABLE IF EXISTS user

CREATE TABLE article (
    articleId(16) not null,
    articleAuthor(32) not null,
    articleCategory(32) not null,
    articleDate
    articleHash(32) not null,
    articleProvider(32) not null,
    articleSubject(32) not null,
    articleTitle(32) not null,
    primary key (articleId)
)

CREATE TABLE category(
    categoryId(16) not null,
    categoryHash(32) not null,
    categoryProvider(32) not null,
    categorySubject(32) not null,
    categoryTitle(32) not null,
    primary key(categoryId)
)

CREATE TABLE articleCategory(
    articleCategoryId(16) not null,
    articleCategoryProvider(32) not null,
    articleSubject(32) not null,
    primary key(articleCategoryId)
)


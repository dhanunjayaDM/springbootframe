package com.concretepage.dao;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.concretepage.entity.Article;
@Repository
public interface IArticleDAO {
    List<Article> getAllArticles();
    Article getArticleById(int articleId);
    void addArticle(Article article);
    void updateArticle(Article article);
    void deleteArticle(int articleId);
    boolean articleExists(String title, String category);
}
 
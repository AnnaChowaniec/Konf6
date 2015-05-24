/*
 * JBoss, Home of Professional Open Source
 * Copyright 2014, Red Hat, Inc. and/or its affiliates, and individual
 * contributors by the @authors tag. See the copyright.txt in the
 * distribution for a full listing of individual contributors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package pl.edu.agh.mwo.grupa6.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import pl.edu.agh.mwo.grupa6.model.Article;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ArticleDaoImpl implements ArticleDao {
    @Autowired
    private EntityManager em;

    public Article findById(Long id) {
        return em.find(Article.class, id);
    }

    public List<Article> findAllOrderedByTitle() {
        CriteriaBuilder cb = em.getCriteriaBuilder();
        CriteriaQuery<Article> criteria = cb.createQuery(Article.class);
        Root<Article> article = criteria.from(Article.class);

        /*
         * Swap criteria statements if you would like to try out type-safe criteria queries, a new
         * feature in JPA 2.0 criteria.select(article).orderBy(cb.asc(article.get(Article_.name)));
         */

        criteria.select(article).orderBy(cb.asc(article.get("title")));
        return em.createQuery(criteria).getResultList();
    }

    public void register(Article article) {
        em.persist(article);
        return;
    }
}

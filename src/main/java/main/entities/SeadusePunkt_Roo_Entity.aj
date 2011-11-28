// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package main.entities;

import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityManager;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import main.entities.SeadusePunkt;
import org.springframework.transaction.annotation.Transactional;

privileged aspect SeadusePunkt_Roo_Entity {
    
    declare @type: SeadusePunkt: @Entity;
    
    @PersistenceContext
    transient EntityManager SeadusePunkt.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long SeadusePunkt.id;
    
    @Version
    @Column(name = "version")
    private Integer SeadusePunkt.version;
    
    public Long SeadusePunkt.getId() {
        return this.id;
    }
    
    public void SeadusePunkt.setId(Long id) {
        this.id = id;
    }
    
    public Integer SeadusePunkt.getVersion() {
        return this.version;
    }
    
    public void SeadusePunkt.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void SeadusePunkt.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void SeadusePunkt.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            SeadusePunkt attached = SeadusePunkt.findSeadusePunkt(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void SeadusePunkt.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void SeadusePunkt.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public SeadusePunkt SeadusePunkt.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        SeadusePunkt merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager SeadusePunkt.entityManager() {
        EntityManager em = new SeadusePunkt().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long SeadusePunkt.countSeadusePunkts() {
        return entityManager().createQuery("SELECT COUNT(o) FROM SeadusePunkt o", Long.class).getSingleResult();
    }
    
    public static List<SeadusePunkt> SeadusePunkt.findAllSeadusePunkts() {
        return entityManager().createQuery("SELECT o FROM SeadusePunkt o", SeadusePunkt.class).getResultList();
    }
    
    public static SeadusePunkt SeadusePunkt.findSeadusePunkt(Long id) {
        if (id == null) return null;
        return entityManager().find(SeadusePunkt.class, id);
    }
    
    public static List<SeadusePunkt> SeadusePunkt.findSeadusePunktEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM SeadusePunkt o", SeadusePunkt.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}

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
import main.entities.Ruumiyksus;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Ruumiyksus_Roo_Entity {
    
    declare @type: Ruumiyksus: @Entity;
    
    @PersistenceContext
    transient EntityManager Ruumiyksus.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Ruumiyksus.id;
    
    @Version
    @Column(name = "version")
    private Integer Ruumiyksus.version;
    
    public Long Ruumiyksus.getId() {
        return this.id;
    }
    
    public void Ruumiyksus.setId(Long id) {
        this.id = id;
    }
    
    public Integer Ruumiyksus.getVersion() {
        return this.version;
    }
    
    public void Ruumiyksus.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void Ruumiyksus.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Ruumiyksus.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Ruumiyksus attached = Ruumiyksus.findRuumiyksus(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Ruumiyksus.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Ruumiyksus.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Ruumiyksus Ruumiyksus.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Ruumiyksus merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager Ruumiyksus.entityManager() {
        EntityManager em = new Ruumiyksus().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Ruumiyksus.countRuumiyksuses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Ruumiyksus o", Long.class).getSingleResult();
    }
    
    public static List<Ruumiyksus> Ruumiyksus.findAllRuumiyksuses() {
        return entityManager().createQuery("SELECT o FROM Ruumiyksus o", Ruumiyksus.class).getResultList();
    }
    
    public static Ruumiyksus Ruumiyksus.findRuumiyksus(Long id) {
        if (id == null) return null;
        return entityManager().find(Ruumiyksus.class, id);
    }
    
    public static List<Ruumiyksus> Ruumiyksus.findRuumiyksusEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Ruumiyksus o", Ruumiyksus.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}

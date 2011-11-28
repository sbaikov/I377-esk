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
import main.entities.KontaktiLiik;
import org.springframework.transaction.annotation.Transactional;

privileged aspect KontaktiLiik_Roo_Entity {
    
    declare @type: KontaktiLiik: @Entity;
    
    @PersistenceContext
    transient EntityManager KontaktiLiik.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long KontaktiLiik.id;
    
    @Version
    @Column(name = "version")
    private Integer KontaktiLiik.version;
    
    public Long KontaktiLiik.getId() {
        return this.id;
    }
    
    public void KontaktiLiik.setId(Long id) {
        this.id = id;
    }
    
    public Integer KontaktiLiik.getVersion() {
        return this.version;
    }
    
    public void KontaktiLiik.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void KontaktiLiik.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void KontaktiLiik.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            KontaktiLiik attached = KontaktiLiik.findKontaktiLiik(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void KontaktiLiik.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void KontaktiLiik.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public KontaktiLiik KontaktiLiik.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        KontaktiLiik merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager KontaktiLiik.entityManager() {
        EntityManager em = new KontaktiLiik().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long KontaktiLiik.countKontaktiLiiks() {
        return entityManager().createQuery("SELECT COUNT(o) FROM KontaktiLiik o", Long.class).getSingleResult();
    }
    
    public static List<KontaktiLiik> KontaktiLiik.findAllKontaktiLiiks() {
        return entityManager().createQuery("SELECT o FROM KontaktiLiik o", KontaktiLiik.class).getResultList();
    }
    
    public static KontaktiLiik KontaktiLiik.findKontaktiLiik(Long id) {
        if (id == null) return null;
        return entityManager().find(KontaktiLiik.class, id);
    }
    
    public static List<KontaktiLiik> KontaktiLiik.findKontaktiLiikEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM KontaktiLiik o", KontaktiLiik.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}

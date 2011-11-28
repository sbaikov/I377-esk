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
import main.entities.OrgYksus;
import org.springframework.transaction.annotation.Transactional;

privileged aspect OrgYksus_Roo_Entity {
    
    declare @type: OrgYksus: @Entity;
    
    @PersistenceContext
    transient EntityManager OrgYksus.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long OrgYksus.id;
    
    @Version
    @Column(name = "version")
    private Integer OrgYksus.version;
    
    public Long OrgYksus.getId() {
        return this.id;
    }
    
    public void OrgYksus.setId(Long id) {
        this.id = id;
    }
    
    public Integer OrgYksus.getVersion() {
        return this.version;
    }
    
    public void OrgYksus.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void OrgYksus.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void OrgYksus.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            OrgYksus attached = OrgYksus.findOrgYksus(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void OrgYksus.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void OrgYksus.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public OrgYksus OrgYksus.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        OrgYksus merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager OrgYksus.entityManager() {
        EntityManager em = new OrgYksus().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long OrgYksus.countOrgYksuses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM OrgYksus o", Long.class).getSingleResult();
    }
    
    public static List<OrgYksus> OrgYksus.findAllOrgYksuses() {
        return entityManager().createQuery("SELECT o FROM OrgYksus o", OrgYksus.class).getResultList();
    }
    
    public static OrgYksus OrgYksus.findOrgYksus(Long id) {
        if (id == null) return null;
        return entityManager().find(OrgYksus.class, id);
    }
    
    public static List<OrgYksus> OrgYksus.findOrgYksusEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM OrgYksus o", OrgYksus.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}

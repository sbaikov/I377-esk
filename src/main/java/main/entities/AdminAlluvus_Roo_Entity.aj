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
import main.entities.AdminAlluvus;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AdminAlluvus_Roo_Entity {
    
    declare @type: AdminAlluvus: @Entity;
    
    @PersistenceContext
    transient EntityManager AdminAlluvus.entityManager;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long AdminAlluvus.id;
    
    @Version
    @Column(name = "version")
    private Integer AdminAlluvus.version;
    
    public Long AdminAlluvus.getId() {
        return this.id;
    }
    
    public void AdminAlluvus.setId(Long id) {
        this.id = id;
    }
    
    public Integer AdminAlluvus.getVersion() {
        return this.version;
    }
    
    public void AdminAlluvus.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void AdminAlluvus.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AdminAlluvus.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AdminAlluvus attached = AdminAlluvus.findAdminAlluvus(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AdminAlluvus.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AdminAlluvus.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AdminAlluvus AdminAlluvus.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AdminAlluvus merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager AdminAlluvus.entityManager() {
        EntityManager em = new AdminAlluvus().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AdminAlluvus.countAdminAlluvuses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AdminAlluvus o", Long.class).getSingleResult();
    }
    
    public static List<AdminAlluvus> AdminAlluvus.findAllAdminAlluvuses() {
        return entityManager().createQuery("SELECT o FROM AdminAlluvus o", AdminAlluvus.class).getResultList();
    }
    
    public static AdminAlluvus AdminAlluvus.findAdminAlluvus(Long id) {
        if (id == null) return null;
        return entityManager().find(AdminAlluvus.class, id);
    }
    
    public static List<AdminAlluvus> AdminAlluvus.findAdminAlluvusEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AdminAlluvus o", AdminAlluvus.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}

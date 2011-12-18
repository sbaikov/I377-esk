// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.persistence;

import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.persistence.PIIRILOIK;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PIIRILOIK_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager PIIRILOIK.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer PIIRILOIK.version;
    
    public Integer PIIRILOIK.getVersion() {
        return this.version;
    }
    
    public void PIIRILOIK.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void PIIRILOIK.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void PIIRILOIK.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            PIIRILOIK attached = PIIRILOIK.findPIIRILOIK(this.piiriloikId);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void PIIRILOIK.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void PIIRILOIK.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public PIIRILOIK PIIRILOIK.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        PIIRILOIK merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager PIIRILOIK.entityManager() {
        EntityManager em = new PIIRILOIK().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long PIIRILOIK.countPIIRILOIKS() {
        return entityManager().createQuery("SELECT COUNT(o) FROM PIIRILOIK o WHERE o.suletud > CURRENT_DATE", Long.class).getSingleResult();
    }
    
    public static List<PIIRILOIK> PIIRILOIK.findAllPIIRILOIKS() {
        return entityManager().createQuery("SELECT o FROM PIIRILOIK o WHERE o.suletud > CURRENT_DATE", PIIRILOIK.class).getResultList();
    }
    
    public static PIIRILOIK PIIRILOIK.findPIIRILOIK(Long piiriloikId) {
        if (piiriloikId == null) return null;
        return entityManager().find(PIIRILOIK.class, piiriloikId);
    }
    
    public static List<PIIRILOIK> PIIRILOIK.findPIIRILOIKEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM PIIRILOIK o WHERE o.suletud > CURRENT_DATE", PIIRILOIK.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}

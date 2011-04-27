// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.prefabsoft.model;

import com.prefabsoft.model.PrefabResource;
import java.lang.String;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect PrefabResource_Roo_Finder {
    
    public static TypedQuery<PrefabResource> PrefabResource.findPrefabResourcesByFilePathEquals(String filePath) {
        if (filePath == null || filePath.length() == 0) throw new IllegalArgumentException("The filePath argument is required");
        EntityManager em = PrefabResource.entityManager();
        TypedQuery<PrefabResource> q = em.createQuery("SELECT PrefabResource FROM PrefabResource AS prefabresource WHERE prefabresource.filePath = :filePath", PrefabResource.class);
        q.setParameter("filePath", filePath);
        return q;
    }
    
}
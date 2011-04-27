// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.prefabsoft.security.model;

import com.prefabsoft.security.model.PrefabAuthority;
import com.prefabsoft.security.model.PrefabUser;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

privileged aspect PrefabAuthority_Roo_Finder {
    
    public static TypedQuery<PrefabAuthority> PrefabAuthority.findPrefabAuthoritysByPrefabUser(PrefabUser prefabUser) {
        if (prefabUser == null) throw new IllegalArgumentException("The prefabUser argument is required");
        EntityManager em = PrefabAuthority.entityManager();
        TypedQuery<PrefabAuthority> q = em.createQuery("SELECT PrefabAuthority FROM PrefabAuthority AS prefabauthority WHERE prefabauthority.prefabUser = :prefabUser", PrefabAuthority.class);
        q.setParameter("prefabUser", prefabUser);
        return q;
    }
    
}
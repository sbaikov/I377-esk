// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package main.entities;

import java.lang.String;

privileged aspect VoimalikAlluvus_Roo_ToString {
    
    public String VoimalikAlluvus.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Avaja: ").append(getAvaja()).append(", ");
        sb.append("Avatud: ").append(getAvatud()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Muudetud: ").append(getMuudetud()).append(", ");
        sb.append("Muutja: ").append(getMuutja()).append(", ");
        sb.append("RiigiAdminYksuseLiik1: ").append(getRiigiAdminYksuseLiik1()).append(", ");
        sb.append("RiigiAdminYksuseLiik2: ").append(getRiigiAdminYksuseLiik2()).append(", ");
        sb.append("Suletud: ").append(getSuletud()).append(", ");
        sb.append("Sulgeja: ").append(getSulgeja()).append(", ");
        sb.append("Version: ").append(getVersion()).append(", ");
        sb.append("VoimalikAlluvusId: ").append(getVoimalikAlluvusId());
        return sb.toString();
    }
    
}

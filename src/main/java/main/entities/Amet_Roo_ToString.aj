// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package main.entities;

import java.lang.String;

privileged aspect Amet_Roo_ToString {
    
    public String Amet.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AmetId: ").append(getAmetId()).append(", ");
        sb.append("AmetPiiripunktis: ").append(getAmetPiiripunktis() == null ? "null" : getAmetPiiripunktis().size()).append(", ");
        sb.append("AmetVaeosas: ").append(getAmetVaeosas() == null ? "null" : getAmetVaeosas().size()).append(", ");
        sb.append("Avaja: ").append(getAvaja()).append(", ");
        sb.append("Avatud: ").append(getAvatud()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("IscoKood: ").append(getIscoKood()).append(", ");
        sb.append("Kommentaar: ").append(getKommentaar()).append(", ");
        sb.append("Muudetud: ").append(getMuudetud()).append(", ");
        sb.append("Muutja: ").append(getMuutja()).append(", ");
        sb.append("Nimetus: ").append(getNimetus()).append(", ");
        sb.append("Suletud: ").append(getSuletud()).append(", ");
        sb.append("Sulgeja: ").append(getSulgeja()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}

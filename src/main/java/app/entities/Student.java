package app.entities;

import java.util.HashMap;
import java.util.Map;

public class Student {

    private String lastName;
    private String name;
    private String patronomyc;
    private String gender;
    private String nationality;
    private String phone;
    private String email;
    private String parentPhone;
    private String parentEmail;
    private String district;
    private String city;
    private String address;
    private String liveType;
    private String dormitory;
    private String sirota;
    private String opekaemii;
    private String withOutOneParent;
    private String chellenged1;
    private String chellenged2;
    private String chellenged3;
    private String bigFamily;
    private String chellengedParents;
    private String returned;
    private String merried;
    private String haveChild;
    private String childCount;
    private String religious;
    private String religion;
    private String dressR;
    private String otherR;

    private Map<String, String> districts = new HashMap<>();
    private Map<String, String> liveTypes = new HashMap<>();

    {
        districts.put("0", "Карагандинская область");
        districts.put("1", "Акмолинская область");
        districts.put("2", "Актюбинская область");
        districts.put("3", "Алматинская область");
        districts.put("4", "Атырауская область");
        districts.put("5", "Восточно - Казахстанская область");
        districts.put("6", "Жамбылская область");
        districts.put("7", "Западно - Казахстанская область");
        districts.put("8", "Костанайская область");
        districts.put("9", "Кызылординская область");
        districts.put("10", "Мангистауская область");
        districts.put("11", "Павлодарская область");
        districts.put("12", "Северо - Казахстанская область");
        districts.put("13", "Туркестанская область");

        liveTypes.put("1", "С родителями");
        liveTypes.put("2", "У родственников");
        liveTypes.put("3", "Съемная квартира");
        liveTypes.put("0", "Общежитие");
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setPatronomyc(String patronomyc) {
        this.patronomyc = patronomyc;
    }

    public String getPatronomyc() {
        return patronomyc;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getGender() {
        return gender;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getNationality() {
        return nationality;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setParentPhone(String parentPhone) {
        this.parentPhone = parentPhone;
    }

    public String getParentPhone() {
        return parentPhone;
    }

    public void setParentEmail(String parentEmail) {
        this.parentEmail = parentEmail;
    }

    public String getParentEmail() {
        return parentEmail;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getDistrict() {
        if (district == null) {
            return null;
        }
        if (district.length() > 2) {
            return district;
        }
        return districts.get(district);
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCity() {
        return city;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setLiveType(String liveType) {
        this.liveType = liveType;
    }

    public String getLiveType() {
        if (liveType == null) {
            return null;
        }
        if (liveType.length() > 2) {
            return liveType;
        }
        return liveTypes.get(liveType);
    }

    public void setDormitory(String dormitory) {
        this.dormitory = dormitory;
    }

    public String getDormitory() {
        return dormitory;
    }

    public void setSirota(String sirota) {
        this.sirota = sirota;
    }

    public String getSirota() {
        return sirota;
    }

    public void setOpekaemii(String opekaemii) {
        this.opekaemii = opekaemii;
    }

    public String getOpekaemii() {
        return opekaemii;
    }

    public void setWithOutOneParent(String withOutOneParent) {
        this.withOutOneParent = withOutOneParent;
    }

    public String getWithOutOneParent() {
        return withOutOneParent;
    }

    public void setChellenged1(String chellenged1) {
        this.chellenged1 = chellenged1;
    }

    public String getChellenged1() {
        return chellenged1;
    }

    public void setChellenged2(String chellenged2) {
        this.chellenged2 = chellenged2;
    }

    public String getChellenged2() {
        return chellenged2;
    }

    public void setChellenged3(String chellenged3) {
        this.chellenged3 = chellenged3;
    }

    public String getChellenged3() {
        return chellenged3;
    }

    public void setBigFamily(String bigFamily) {
        this.bigFamily = bigFamily;
    }

    public String getBigFamily() {
        return bigFamily;
    }

    public void setChellengedParents(String chellengedParents) {
        this.chellengedParents = chellengedParents;
    }

    public String getChellengedParents() {
        return chellengedParents;
    }

    public void setReturned(String returned) {
        this.returned = returned;
    }

    public String getReturned() {
        return returned;
    }

    public void setMerried(String merried) {
        this.merried = merried;
    }

    public String getMerried() {
        return merried;
    }

    public void setHaveChild(String haveChild) {
        this.haveChild = haveChild;
    }

    public String getHaveChild() {
        return haveChild;
    }

    public void setChildCount(String childCount) {
        this.childCount = childCount;
    }

    public String getChildCount() {
        return childCount;
    }

    public void setReligious(String religious) {
        this.religious = religious;
    }

    public String getReligious() {
        if (religious.equals("0") || religious.equals("Да")) return "Да";
        return "Нет";
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getReligion() {
        return religion;
    }

    public void setDressR(String dressR) {
        this.dressR = dressR;
    }

    public String getDressR() {
        return dressR;
    }

    public void setOtherR(String otherR) {
        this.otherR = otherR;
    }

    public String getOtherR() {
        return otherR;
    }

    public String getSocialCategory() {
        StringBuilder sb = new StringBuilder();
        if (sirota != null) {
            sb.append("Сирота").append("\n");
        }
        if (opekaemii != null) {
            sb.append("Опекаемый").append("\n");
        }
        if (withOutOneParent != null) {
            sb.append("Без одного родителя-кормильца").append("\n");
        }
        if (chellenged1 != null) {
            sb.append("Инвалид 1 группы").append("\n");
        }
        if (chellenged2 != null) {
            sb.append("Инвалид 2 группы").append("\n");
        }
        if (chellenged3 != null) {
            sb.append("Инвалид 3 группы").append("\n");
        }
        if (bigFamily != null) {
            sb.append("Из многодетной семьи").append("\n");
        }
        if (chellengedParents != null) {
            sb.append("Родители-инвалиды").append("\n");
        }
        if (returned != null) {
            sb.append("Оралман").append("\n");
        }
        if (sb.length() > 0) {
            return sb.toString();
        } else {
            return "-";
        }
    }
}

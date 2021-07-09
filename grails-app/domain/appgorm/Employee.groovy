package appgorm

class Employee {

    BigInteger id
    String first_name
    String last_name
    boolean is_active
    Date birth_of_date
    static belongsTo = [department:Department]
    static constraints = {
        first_name blank: false, size: 1..50
        last_name blank: false, size: 1..50
    }
}

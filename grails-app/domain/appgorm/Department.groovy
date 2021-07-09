package appgorm

class Department {

        BigInteger id
        String name

        static hasMany = [employee: Employee]

}

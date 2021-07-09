package appgorm

import grails.gorm.transactions.Transactional

@Transactional
class EmployeeService {

    def getAllEmployee(){
        Employee.findAll()
    }
    def createEmployee(def department_id, def birth_of_date, def first_name, def last_name) {
        Employee e= new Employee(department: department_id,birth_of_date: birth_of_date,
                first_name: first_name,last_name:last_name,is_active: true )
        e.save(failOnError:true)
    }
    def deleteEmployee(def id){
        Employee.findById(id).delete()
    }
}

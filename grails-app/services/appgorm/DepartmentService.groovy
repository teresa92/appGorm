package appgorm

import grails.gorm.transactions.Transactional

@Transactional
class DepartmentService {
    def getAllDepartment(){
        Department.findAll()
    }

    def createDepartment(def name) {
        Department d = new Department(name: name)
        d.save()
    }

    def deleteDepartment(def id){
        Department.findById(id).delete()
    }
    def editDepartment(def id){
        Department.findById(id)
    }
    def updateDepartment(def id, def name){
       def d= Department.findById(id)
        d.name=name
        d.save()
    }
}


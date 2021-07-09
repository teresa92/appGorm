package appgorm

class DepartmentController {
    def departmentService
    def index() {
       def department= departmentService.getAllDepartment()
        ['department':department]
    }
    def add(){
    }
    def create(){
       def department=departmentService.createDepartment(params.departmentName)
        redirect(action:'index')
    }
    def delete(){
        departmentService.deleteDepartment(params.id)
        redirect(controller:'department',action: 'index')
    }
    def edit(){
       def departmentEdit= departmentService.editDepartment(params.id)
        ['departmentEdit':departmentEdit]
    }
    def update(){
        departmentService.updateDepartment(params.id,params.departmentName)
        redirect(controller: 'department', action: 'index')
    }
}

package appgorm

class EmployeeController {
    def employeeService
    def departmentService
    def index() {
      def employee =  employeeService.getAllEmployee()
        ['employee':employee]
    }
    def add(){
        def department= departmentService.getAllDepartment()
        ['department':department]
    }
    def create(){
            employeeService.createEmployee(params.department,params.employeeDateOfBirth
                    ,params.employeeFirstName, params.employeeLastName)
        redirect(action:'index')
    }
    def delete(){
        employeeService.deleteEmployee(params.id)
        redirect(controller: 'employee', action: 'index')
    }
    def edit(){

    }
}

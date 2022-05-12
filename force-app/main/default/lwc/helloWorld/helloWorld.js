import { LightningElement, track} from 'lwc';

export default class HelloWorld extends LightningElement {
    isCalculated=false
   Gender//undefined
   name='sukku'
    age=23//number
    fullname="Sukanya"//string
    graduated=true
    labelName
    handleInput(event)
    {
        this.fullname=event.target.value
    }
   @track  obj={
        name:'ammu',
        city:'Bng'
    }//object
    details={
        "CompanyName":"Salesforce",
        CEO:"march Beniffo"
    }
    arr=[3,5,7,9]//array
    handleTarck(event)
    {
        this.obj.city=event.target.value
    }
    handleShallow(event)
    {
        this.details={...this.details,"CompanyName":event.target.value}
    }
    names=["ammu","sai","baby"]
    num1=10
    num2=20
    get lastName()
    {
        return this.names[2]
    }
    get multiply()
    {
        return this.num1*this.num2
    }
    handleCal(event)
    {
        const {name,value}=event.target
        this.labelName=''
        if(name=='n1')
        {
            this.num1=value
        }
        else{
            this.num2=value
        }
    }
    result
    handleClick(event)
    {
        this.labelName=event.target.label
        this.result=this.Calcul
        this.isCalculated=true
    }
    get Calcul()
    {
        if(this.labelName=='Add')
        {
            return parseInt(this.num1)+parseInt(this.num2)
        }
        else if(this.labelName=='Sub')
        {
            return this.num1-this.num2  
        }
        else if(this.labelName=='Mul')
        {
            return this.num1*this.num2  
        }
        return this.num1/this.num2 
    }
}
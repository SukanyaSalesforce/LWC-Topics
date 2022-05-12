import { LightningElement } from 'lwc';

export default class Quiz_App extends LightningElement {
    selectedAnswers={}//this is for storing selected answers
    correctAnswers=0//this is store correct answers length
    isSubmited//check the submited
    myQuestions=[{
        id:'Question1',
        question:'Which one of the following not a template loop?',
        answers:{
             a:'for:each',
             b:'Iterator',
             c:'map'
        },
        correctAnswer:'c'
    },
        {
            id:'Question2',
            question:'Which file is invalid in lWC component Folder?',
            answers:{
                a:'.css',
                b:'.apex',
                c:'.js'
            },
            correctAnswer:'b'
        }]
        handleInput(event)
        {
            const {name,value}=event.target
            this.selectedAnswers={...this.selectedAnswers,[name]:value}
            console.log("name",name)
            console.log("value",value)
            console.log("Selectd Answers",this.selectedAnswers)
        }
        
        get AllNotSelected()
        {
            return !(Object.keys(this.selectedAnswers).length === this.myQuestions.length)
        }
        handleSubmit(event)
        {
            event.preventDefault()
            const correct=this.myQuestions.filter(item=>this.selectedAnswers[item.id]===item.correctAnswer)
            this.correctAnswers=correct.length
            this.isSubmited=true
            console.log('Correct Answers',this.correctAnswers)
        }
        handleReset()
        {
            this.isSubmited=false 
            this.selectedAnswers={}
        }
        get isScoredFull()
        {
            return `slds-text-heading_medium ${this.correctAnswers===this.myQuestions.length?'slds-text-color_success':'slds-text-color_error'}`
        }
}
import { LightningElement } from 'lwc';

export default class AccessingElements extends LightningElement {
     names=['ammu','sai','baby']
    handleClick()
    {
        const elm=this.template.querySelector('h1');
        elm.style.border='1px solid red'
        console.log(elm.innerText) 
        const elmAll=this.template.querySelectorAll('.names')
        Array.from(elmAll).forEach(item=>{
            console.log(item.innerText)
            item.setAttribute('title',item.innerText)
        })
        const mg=this.template.querySelector('.msg')
          mg.innerHTML='Welcome to wissen'
       
    }
}
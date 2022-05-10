import { LightningElement } from 'lwc';

export default class ConditionalRendering extends LightningElement {
   // if you give isVisible or isVisible=false  it will take false only
   isVisible
    //if u give falsly value means x=0 or false or ''or undefined the automatically take false
    handleClick()
    {
        this.isVisible=true
    }
  name
    handleChanges(event)
    {
      this.name=event.target.value
    }
    get showData()
    {
        return this.name==='hello'
    }
}
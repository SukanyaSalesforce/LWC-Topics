import { LightningElement } from 'lwc';
import { loadScript, loadStyle } from 'lightning/platformResourceLoader';
import orgChart from '@salesforce/resourceUrl/orgChart';

export default class Hire extends LightningElement {
    error;
    chart;
    initialized = false;

    renderedCallback() {
        if (this.initialized) return;
        this.initialized = true;

        Promise.all([
            loadScript(this, orgChart),
        ])
            .then(() => {
                console.log('script loaded')
                this.intialized3();
            })
            .catch((error) => {
                this.error = error;
            });
    }

    intialized3() {
        let canvas = this.template.querySelector(".orgchart");
        let context = canvas;
        this.chart = new OrgChart(context, {
            mouseScrool: OrgChart.action.none, nodeBinding: {
                field_0: "name"
            },
            nodes: [
                { id: 1, name: "Amber McKenzie" },
                { id: 2, pid: 1, name: "Ava Field" },
                { id: 3, pid: 1, name: "Peter Stevens" }
            ]

        });
        console.log(this.chart)

    }
}
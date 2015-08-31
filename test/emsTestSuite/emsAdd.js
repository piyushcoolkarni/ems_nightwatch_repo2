module.exports = {
  'Test for EMS-APPLICATION' : function (client) {
    client
      .url('http://172.27.59.81:3013/#/add')
      .waitForElementVisible('body', 1000)
      .verify.title('Employee Application')
      .verify.visible('input')
      .setValue('input[name=code]', '4444')
	  .setValue('input[name=name]', 'Navin')
	  .setValue('input[name=city]', 'chennai')
      .waitForElementVisible('input[id=submitEmployeeData]', 1000)
      .click('input[id=submitEmployeeData]')
     
  },
  'List of Employees' : function(client,browser){
	  client
	  .url('http://172.27.59.81:3013/#/add')
	  .waitForElementVisible('body', 1000)
	  .verify.title('Employee Application')
	.end();
/*	.getText('body > div.ng-scope > div > div > table > thead > tr.ng-scope > td:nth-child(1)', function(result) {
		
		console.log("value is :"+result.value);
    this.assert.equal(result.value, '4444')
*/	
	
}
	  
	  
	 // .assert.attributeEquals('body','table','Manoj1')
	 // .end();
  }

//.pause(1000)
 //     .end();

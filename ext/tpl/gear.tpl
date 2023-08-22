
<link rel="stylesheet" href="ext/theme-material/resources/theme-material-all.css">
<link rel="stylesheet" href="ext/calendar/material/resources/calendar-all.css?v=0.89">
<link rel="stylesheet" href="ext/qrsConnect-all.css?v=0.89">
<!-- extjs and material javascript -->
<script type="text/javascript" src="ext/ext-modern-all.js?v=0.89"></script>
<script>
	 var gearStore = Ext.create('Ext.data.Store', {
		 proxy: {
			reader: {
				 type: 'json'
			 },
			 nocache:true,
			type: 'ajax',
			url: 'includes/ajax/data/gear.php',
			timeout: 10000,
			
		},
		 autoLoad: true
	 });
	 
	 var qrs = [];
	 qrsFn = [];
	
	 
</script>
<script type="text/javascript" src="ext/theme-material/theme-material.js?v=0.89"></script>
<style>
	.x-datepanel{
		width:300px !important;
	}
	.x-formpanel{
		width: 400 !important;
		height: 400 !important;
	}
	.container.offcanvas{
		overflow-y: auto;
		height: 100%;
	}
	
</style>
<script>
//Gear Model


	 
Ext.application({
	name: 'QRSConnect',
	launch: function () {
		
		//CREATE a function for the panels you can call this later.
		 qrs.panels =[];
		qrsFn.getHeight = function(){return Ext.getBody().getHeight()-20;}
		qrsFn.getWidth = function(){return Ext.getBody().getWidth()-20;}

		/*Function to create a overlay and sizing handles/*/
		qrs.createPanel = function(nameSpace,title,items){
			//Create Panel if not exists.
			if(!qrs.panels[nameSpace]){
				qrs.panels[nameSpace] = Ext.create({
					xtype: 'formpanel',
					title: title,
					centered:true,
					height: qrsFn.getHeight()-20, //Ext.os.is.Phone ? 400 : 500,
					width: qrsFn.getWidth()-20,
					bodyPadding: true,
					tiny:true,
					//draggable:true,
					hideOnMaskTap:true,
					// the panel will be hidden until shown
					floated: true,
					listeners: {
						hide: function () {
							//Remove For Good!
							qrs.panels[nameSpace].destroy();
							delete qrs.panels[nameSpace]
						}
					},
					// adds the close tool in the panel header
					tools: [/*{
						type: 'minimize',
						handler: function(){
							qrs.panels[nameSpace].setHeight(40);
						}
						
					},{
						type: 'resize',
						handler: function(a){
							if (a.getWidth() != Ext.getBody('body').getWidth()) {
								a.tiny=false;
								a.setWidth(Ext.getBody('body').getWidth());
								a.setHeight(Ext.getBody('body').getHeight());
							} else {
								a.tiny=true;
								a.setWidth(qrsFn.getWidth()-20);
								a.setHeight(qrsFn.getHeight()-20);
							}
						}
					},*/{
						type: 'close',
						handler: function(a,b){
							a.hide();//onCloseTool();	
						}
					}],
					// hides, rather than destroys the closed panel
					//anchor: true,
					defaults:{bodyPadding:20,padding:10,margin:4,labelAlign:'left',labelWidth:100},
					items:items
				}).show(false);
			} else {
				//It exists so just update and check sizing.
				//This is really not necessary but if it does exist would force resize and show.
				qrs.panels[nameSpace].setItems( items );
				if(qrs.panels[nameSpace].getWidth()!=(Ext.getBody('body').getWidth()-20)){	
					qrs.panels[nameSpace].setWidth( Ext.getBody('body').getWidth()-20	);
					qrs.panels[nameSpace].setHeight(Ext.getBody('body').getHeight()-20);
				}
				qrs.panels[nameSpace].show();
			}
		} 
		
		
		
		//Build a dynamic panel because Sencha is dumb and you can't put a component in a template.  
		
		var systemsOnline = 0;
		var dynamicPanel = [];
		//Header panel.
		dynamicPanel[dynamicPanel.length] = {
			xtype: 'container',
			height:150,
			hidden: true,
			padding: 5,
			layout: {
				type: 'hbox',
				pack: 'center'
			},
			items: [{
					xtype: 'searchfield',
					border: true,
					width: 200,
					animateUnderline: true,
					placeholder: 'Search Gear'
				}, {
					xtype: 'label'
				}
			]
		};
			
		//If not empty Loop through the gear.  Output the panel on each row. 
		if(typeof gearStore!='undefined' && gearStore.getAt(0).data!=null && gearStore.getAt(0).data.gear.length > 0 ){
			for(device in gearStore.getAt(0).data['gear']){

				dynamicPanel[dynamicPanel.length] =  {
					xtype: 'panel',
					height:150,
					border: true,
					ui: 'round',
					margin: 5,
					padding: 5,
					bodyBorder: true,
					bodyStyle: 'border-radius:5px',
					layout: {
						type: 'vbox',
						pack: 'center'
					},
					items: [{
							xtype: 'container',
							height:150,
							flex: 1,
							layout: {
								type: 'hbox',
								align: 'start',
								pack: 'center'
							},
							items: [{
									xtype: 'container',
									height:150,
									layout: {
										type: 'vbox',
										align: 'center',
										pack: 'center'
									},
									items: [{
											xtype: 'image',
											height: 75,
											width: 100,
											src: gearStore.getAt(0).data['gear'][device]['Picture']//'resources/images/hoho1.png'
										}/*, {
											xtype: 'button',
											iconCls: 'x-fa fa-plus',
											text: 'Add Image'
										}*/
									]
								}, {
									xtype: 'container',
									height:150,
									flex: 1,
									padding: 5,
									items: [{
											xtype: 'container',
											layout: 'hbox',
											height:20,
											items: [{
													xtype: 'label',
													style: 'font-size:110%',
													html: gearStore.getAt(0).data['gear'][device]['serial']//'HOHO0118000025'
												}/* ,{
													xtype: 'button',
													ui: 'plain',
													text: '',
													menu: {
														xtype: 'menu',
														width: 120,
														items: [{
																xtype: 'menuitem',
																text: 'Edit'
															}, {
																xtype: 'menuitem',
																text: 'Remove'
															}
														]
													}
												}*/
											]
										},  {
											xtype: 'container',
											height:20,
											layout: {
												type: 'hbox',
												align: 'center',
												pack: 'center'
											},
											items: [{
													xtype: 'label',
													flex: 1,
													style: 'font-size:80%',
													html: Ext.os.is.Phone?'Name':'Type'
												}, {
													xtype: 'label',
													flex: 1,
													style: 'font-size:80%',
													html: Ext.os.is.Phone?'Notes':'Brand'
												}, {
													xtype: 'label',
													flex: 1,
													style: 'font-size:80%',
													html: Ext.os.is.Phone?'Songs':'Model'
												}, {
													xtype: 'label',
													flex: 1,
													style: 'font-size:80%',
													html: Ext.os.is.Phone?'Songs':'Location'
												}
											]
										}, {
											xtype: 'container',
											height:20,
											layout: {
												type: 'hbox',
												align: 'center',
												pack: 'center'
											},
											items: [{
													xtype: 'label', //nickName
													flex: 1,
													html: gearStore.getAt(0).data['gear'][device]['Type']//'Studio'
												}, {
													xtype: 'label', //Notes
													flex: 1,
													html: gearStore.getAt(0).data['gear'][device]['Brand']//'361795'
												}, {
													xtype: 'label', //Songs
													flex: 1,
													html: gearStore.getAt(0).data['gear'][device]['Model']//'391'
												}, {
													xtype: 'label', //Songs
													flex: 1,
													html: gearStore.getAt(0).data['gear'][device]['Location']//'391'
												}
											]
										}
									]
								}
							]
						}
					]
				}			
		} 
		
		dynamicPanel[dynamicPanel.length] = {xtype:'spacer',height:10}
	} else {
		//No Items To Display
		dynamicPanel[dynamicPanel.length] = {
			xtype:'panel',width:'100%',margin:10,padding:10,height:'90%',centered:true,html:'No Items to Display.  '+
				'Create new gear by clicking the + in the panel at the top right. '
		};
		
	}		
		
		
		Ext.create({

			xtype: 'panel',
			height:'500',
			width:'100%',
			renderTo: Ext.select('.col-sm'),
			
			scrollable: 'vertical',
			title: 'Gear',
			tools: [{
					xtype: 'tool',
					height: 30,
					width: 100,
					html: 'Add Device',
					style: 'color:white',
					iconCls: 'x-fa fa-plus',
					handler:function(){
						//Ext.Msg.alert('Alert','This should call code to add device., You could add a form here.')
						
						qrs.createPanel('gearAddPanel','Add New Gear',{xtype:'container',items:[{
								xtype:'textfield',value:'',label:'Gear Name',itemId:'gearName',
							},{
								xtype:'selectfield',value:'',label:'Brands',itemId:'gearBrandName',
								options: [{
									text: 'First Option',
									value: 'first'
								}, {
									text: 'Second Option',
									value: 'second'
								}, {
									text: 'Third Option',
									value: 'third'
								}]
									
							},{
								xtype:'button',text:'Add Gear', handler:function(a){
									formJson = {
										gearName:Ext.ComponentQuery.query('#gearName')[0].getValue(),
										gearBrandName:Ext.ComponentQuery.query('#gearBrandName')[0].getValue(),
									}; //<----------Enter POST DATA
									 var ajaxSettings = {
										"async": true,
									  "url": "enterAPILocation",  //<--------ENTER REAL ADDRESS
									  "method": "POST",
									  "dataType":"json",
									  "data":formJson,
									  "headers": {
										"Content-Type": "application/x-www-form-urlencoded",
									  }
									}

									$.ajax(ajaxSettings).done(function (response) {
										qrs.panels["gearAddPanel"].destroy();
										delete qrs.panels["gearAddPanel"];
										if(response){
										
										}
									}).fail(function (response) {
										Ext.Msg.alert('Error','Check your entries and try Again.');
										
									})
								}							
							}]
						})
					}
				},
			],
			items: dynamicPanel
			

		});
	}
})

</script>
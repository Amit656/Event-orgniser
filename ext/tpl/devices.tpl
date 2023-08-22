<!--CSS for calendar/extjs-->
<link rel="stylesheet" href="ext/theme-material/resources/theme-material-all.css">
<link rel="stylesheet" href="ext/calendar/material/resources/calendar-all.css?v=0.89">
<link rel="stylesheet" href="ext/qrsConnect-all.css?v=0.89">
<!-- extjs and material javascript -->
<script type="text/javascript" src="ext/ext-modern-all.js?v=0.89"></script>
<script>
	 var deviceStore = Ext.create('Ext.data.Store', {
		 proxy: {
			reader: {
				 type: 'json',
			 },
			 nocache:true,
			type: 'ajax',
			url: 'includes/ajax/data/device.php?v=0.90',
			timeout: 10000,
			
		},
		 autoLoad: true
	 });
</script>
<script type="text/javascript" src="ext/theme-material/theme-material.js?v=0.89"></script>

<style>
	.container.offcanvas{
		overflow-y:  auto;
		height: 100%;
	}
</style>
<script>

	//Function to rewrite time to HH:MM:SS
	function HHMMSS(totalSeconds){
		//ms = totalSeconds/10000
		totalSeconds = parseInt(totalSeconds/1000);
		hours = Math.floor(totalSeconds / 3600);
		totalSeconds %= 3600;
		minutes = Math.floor(totalSeconds / 60);
		seconds = totalSeconds % 60;
		
		return hours + ':'+ minutes + ':' + seconds
	}
	//device Model


	 
Ext.application({
	name: 'QRSConnect',
	launch: function () {
		
		//Build a dynamic panel because Sencha is dumb and you can't put a component in a template.  
		
		systemsOnline = 0;
		dynamicPanel = [];
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
			
		//If not empty Loop through the devices.  Output the panel on each row. 
		if(typeof deviceStore!='undefined' && deviceStore.getAt(0).data!=null && deviceStore.getAt(0).data['devices'].length>0){
			for(device in deviceStore.getAt(0).data['devices']){
				if(deviceStore.getAt(0).data['devices'][device]['isOnline']==1){
					systemsOnline++;
				}
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
											src: deviceStore.getAt(0).data['devices'][device]['picture']//'resources/images/hoho1.png'
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
													html: deviceStore.getAt(0).data['devices'][device]['serial']//'HOHO0118000025'
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
										}, {
											xtype: 'container',
											layout: 'hbox',
											items: [{
													xtype: 'label',//Added Date
													height: 20,
													style: 'font-size:90%',
													html: deviceStore.getAt(0).data['devices'][device]['addedDate']//'Added Jan 1st 2017'
												},
												{
													xtype: 'label', //isOnline
													height: 20,
													style: 'margin-left:10;font-size:90%',
													html: (deviceStore.getAt(0).data['devices'][device]['isOnline'])?' <div style= "color:green">Online</div>':' <div style= "color:green">Offline</div>'//
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
													xtype: 'label',
													flex: 1,
													style: 'font-size:80%',
													html: Ext.os.is.Phone?'Name':'Nickname'
												}, {
													xtype: 'label',
													flex: 1,
													style: 'font-size:80%',
													html: Ext.os.is.Phone?'Notes':'Notes'
												}, {
													xtype: 'label',
													flex: 1,
													style: 'font-size:80%',
													html: Ext.os.is.Phone?'Hours':'Time Played'
												}, {
													xtype: 'label',
													flex: 1,
													style: 'font-size:80%',
													html: Ext.os.is.Phone?'Songs':'Song Count'
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
													html: deviceStore.getAt(0).data['devices'][device]['nickName']//'Studio'
												}, {
													xtype: 'label', //Notes
													flex: 1,
													html: deviceStore.getAt(0).data['devices'][device]['notesOn']//'361795'
												}, {
													xtype: 'label', //Time
													flex: 1,
													html: HHMMSS(deviceStore.getAt(0).data['devices'][device]['totalTime'])	//deviceStore.getAt(0).data['devices'][device]['totalTime']//'391'
												}, {
													xtype: 'label', //Songs
													flex: 1,
													html: deviceStore.getAt(0).data['devices'][device]['songCount']//'391'
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
			xtype:'panel',height:'100%',width:'100%',centered:true, html:'No Items to Display.  Log in to the qrs-connect from your connect device.'
		};
	}	
		//Summary is empty if no stats.
		//Now get the Summary Stats
		//deviceStore.getAt(0).data['stats']	
		dynamicPanel[dynamicPanel.length] =  {
			xtype:'container',
			margin:5,
			defaults:{xtype:'panel',flex:1},
			/*bodyBorder: true,
			border: true,
					ui: 'round',
			bodyStyle: 'border-radius:5px',*/
			items:[{		
					html:'Summary'
				},{
					xtype:'container',layout:'hbox',
					defaults:{xtype:'panel',flex:1},
					margin:5,
					items:[{
						html:'Song Count:'+deviceStore.getAt(0).data['stats']['songCount']
					},{
						html:'Notes Played:'+deviceStore.getAt(0).data['stats']['notesOn']
					},{
						html:'Pedal Played:'+deviceStore.getAt(0).data['stats']['pedalsOn']
					},{
						html:'Time Played:'+HHMMSS(deviceStore.getAt(0).data['stats']['totalTime'])
							
					}]
				},{
					xtype:'container',layout:'hbox',
					defaults:{xtype:'panel',flex:1},
					margin:5,
					items:[{
						html:'My Current System Count:'+systemsOnline
					}]
				}
				
			]
		}
		
		
		Ext.create({

			xtype: 'panel',
			height:'100%',
			width:'100%',
			renderTo: Ext.select('.col-sm'),
			
			scrollable: 'vertical',
			title: 'Devices',
			/*tools: [{
					xtype: 'tool',
					height: 30,
					width: 100,
					html: 'Add Device',
					style: 'color:white',
					iconCls: 'x-fa fa-plus'
				},
			]*/
			items: dynamicPanel
			

		});
	}
})

</script>
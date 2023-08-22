<!--CSS for calendar/extjs-->
<link rel="stylesheet" href="ext/theme-material/resources/theme-material-all.css">
<link rel="stylesheet" href="ext/charts/modern-material/resources/charts-all.css?v=0.89">
<link rel="stylesheet" href="ext/qrsConnect-all.css?v=0.89">
<!-- extjs and material javascript -->


<script type="text/javascript" src="ext/ext-modern-all.js?v=0.89"></script>
<script>
	 var reportStore = Ext.create('Ext.data.Store', {
		 //fields: ['nickName', {name:'notesOn',type:'int'}, 'pedalsOn', 'totalTime','serial','defaultGearId', 'isOnline', 'addedDate','isUserAllowed','picture','notesOff','pedalsOff'],
						
		 proxy: {
			reader: {
				 type: 'json',
			 },
			 root:'devices',
			 nocache:true,
			type: 'ajax',
			url: 'includes/ajax/data/device.php?v=0.90',
			timeout: 10000,
			
		},
		 autoLoad: true
	 });
	 
	 
</script>
<script type="text/javascript" src="ext/charts/charts.js?v=0.89"></script>
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
			
		onlineSysStore = [];	
		//If not empty Loop through the devices.  Output the panel on each row. 
		if(typeof reportStore!='undefined' && reportStore.getAt(0).data!=null && reportStore.getAt(0).data['devices'].length>0){
			for(device in reportStore.getAt(0).data['devices']){
				if(reportStore.getAt(0).data['devices'][device]['isOnline']==1){
					systemsOnline++;
				}
				dynamicPanel[dynamicPanel.length] =  {}			
		} 
		
		dynamicPanel[dynamicPanel.length] = {xtype:'spacer',height:10}
	} else {
		//No Items To Display
		dynamicPanel[dynamicPanel.length] = {
			xtype:'panel',height:'100%',width:'100%',centered:true, html:'No Items or Data to Display.  Upload content to get started.'
		};
	}	
		//Summary is empty if no stats.
		//Now get the Summary Stats
		//reportStore.getAt(0).data['stats']	
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
					xtype:'cartesian',
					title: 'Test Chart',
					renderTo: Ext.getBody(),
					width: 700,
					height: 500,
					margin: 5,
					legend: {
						docked: 'bottom'
					},
				
					store: reportStore ,
					axes: [{
						type: 'numeric',
						title: 'Amount',
						fields: ['notesOn', 'pedalsOn', 'totalTime'],
						position: 'left',
						grid: true
					}, {
						type: 'category',
						title: 'By Device',
						position: 'bottom',
						fields: 'nickName',
						label: {
							rotate: {
								degrees: -45
							}
						},
						grid: true
					}],
					series: [{
						type: 'line',
						title: 'Notes Played',
						xField: 'nickName',
						yField: ['notesOn']
					}, {
						type: 'line',
						title: 'Pedal Played',
						xField: 'nickName',
						yField: ['pedalsOn']
					}, {
						type: 'line',
						title: 'Total Time',
						xField: 'nickName',
						yField: ['totalTime']
					}]
					
				},{
					label:'Devices Online',
					xtype: 'cartesian',
					shadow: 'true',
					renderTo: Ext.getBody(),
					width: 700,
					height: 500,
					margin: 5,
					reference: 'chart',
					insetPadding: '20 10',
					store: reportStore ,
					axes: [{
						type: 'numeric',
						title: 'Number of Events',
						fields: ['notesOn', 'pedalsOn', 'totalTime'],
						position: 'left',
						grid: true
					}, {
						type: 'category',
						title: 'Serial',
						position: 'bottom',
						fields: 'nickName',
						label: {
							rotate: {
								degrees: -45
							}
						},
						grid: true
					}],
					series: [{
						type: 'line',
						title: 'Number of Notes',
						xField: 'nickName',
						yField: ['notesOn']
					}, {
						type: 'line',
						title: 'Number of Pedal Events',
						xField: 'nickName',
						yField: ['pedalsOn']
					}, {
						type: 'line',
						title: 'Total Time',
						xField: 'nickName',
						yField: ['totalTime']
					}]
				},{
					xtype:'container',layout:'hbox',
					defaults:{xtype:'panel',flex:1},
					margin:5,
					items:[{
						html:'Song Count:'+reportStore.getAt(0).data['stats']['songCount']
					},{
						html:'Notes Played:'+reportStore.getAt(0).data['stats']['notesOn']
					},{
						html:'Pedal Played:'+reportStore.getAt(0).data['stats']['pedalsOn']
					},{
						html:'Time Played:'+HHMMSS(reportStore.getAt(0).data['stats']['totalTime'])
							
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
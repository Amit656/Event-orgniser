<!--CSS for calendar/extjs-->
<link rel="stylesheet" href="ext/theme-material/resources/theme-material-all.css">
<link rel="stylesheet" href="ext/calendar/material/resources/calendar-all.css?v=0.89">
<link rel="stylesheet" href="ext/qrsConnect-all.css?v=0.89">
<!-- extjs and material javascript -->
<script type="text/javascript" src="ext/ext-modern-all.js?v=0.89"></script>
<script type="text/javascript" src="ext/theme-material/theme-material.js?v=0.89"></script>
<!-- calendar javascript -->
<?php 
	//This dumps the calendar Var.
	//var_dump($cal);
?>
<script type="text/javascript" src="ext/calendar/calendar.js?v=0.89"></script>
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
	
 
	Ext.application({
		name: 'QRSConnect',
		launch: function () {			
			
			//CREATE CALENDAR
			Ext.create(
				{
					width: '99%',
					height:600,
					//compact:true,
					//height: '100%',
					layout:'fit',
					xtype: 'calendar',
					name: 'calView',
					compactOptions: {
						menuButton: {
							xtype: 'button',
							iconCls: Ext.baseCSSPrefix + 'fa fa-calendar'
						}
					},
					views: {
						list: {
							width:'100%', 
							visibleDays: 1,
							firstDayOfWeek: 1,
							//visibleWeeks: 0.1428571428571429,
							xtype: 'calendar-month',
							controlStoreRange: 1,
							label: 'List',
							titleTpl: '{start:date("M d")}-{end:date("d Y")}',
							weight: 1,
							reference: 'calMonthList',
							listeners: {
								initialize: function () {
									this.getItems().items[0].hide();
									this.getItems().items[1].hide();
									var bindCal = [];
									Ext.ComponentQuery.query("calendar")[0].getStore().data.each(function (r, b) {
										var queryObj = [];
										queryObj = {
											property: 'calendarId',
											value: r.data.id,
											operator: (r.data.hidden) ? '!=' : '='
										}
										bindCal[b] = queryObj
									})
									console.log(bindCal);
									this.add({
										reference: 'calendarList',
										columns: [{
												text: 'Title',
												dataIndex: 'title',
												width: 200
											}, {
												text: 'Start',
												dataIndex: 'startDate',
												width: 250
											}, {
												text: 'End',
												dataIndex: 'endDate',
												width: 120
											}
										],
										xtype: 'grid',
										itemTpl: '{title}<br>{startDate}-{endDate}',
										store: this.getStore().getEventSource(),
										label: 'List',
										inifite: true
									});
								}
							}
						},
						day: {
							titleTpl: '{start:date("M d")}-{end:date("d Y")}',
							timeFormat: 'h:ia',
							startTime: 0,
							endTime: 24,
							listeners: {
								eventadd: function () {
									console.log('event add');
								},
								eventedit: function () {
									console.log('event edit');
								},
								eventdrop: function () {
									console.log('event drop');
								},
								eventtap: function () {
									console.log('event tap');
								},
								valuechange: function () {
									console.log('event value change');
								}
							}
						},
						week: {
							titleTpl: '{start:date("M d")}-{end:date("d Y")}',
							timeFormat: 'h:ia',
							tpl: '{title}',
							listeners: {
								eventadd: function () {
									console.log('event add');
								},
								eventedit: function () {
									console.log('event edit');
								},
								eventdrop: function () {
									console.log('event drop');
								},
								eventtap: function (a, b, c) {
									console.log('event tap', a, b, c);
								},
								valuechange: function () {
									console.log('event value change');
								}
							}
						},
						month: {
							titleTpl: '{start:date("M Y")}',
							tpl: '{title}',
							timeFormat: 'h:ia',
							listeners: {
								formadd: function () {
									console.log('form add');
								},
								eventadd: function () {
									console.log('event add');
								},
								eventedit: function () {
									console.log('event edit');
								},
								eventdrop: function () {
									console.log('event drop');
								},
								eventtap: function (a, b, c, d, e) {
									
									/*if (qrs.calendarDetails) {
										qrs.calendarDetails = null;
									}
									qrs.calendarDetails = Ext.create('Ext.Container', {
											xtype: 'container',
											itemId: 'calendarInfo',
											autoDestroy: true,
											fullscreen: true,
											floating: false,
											hideOnMaskTap: true,
											centered: true,
											height: qrsFn.getHeight(),
											width: qrsFn.getWidth(),
											items: [{
													cls: 'dashboard',
													margin: '0 0 10 0',
													tools: [{
															type: 'close',
															handler: function (a) {
																qrs.calendarDetails.hide();
																qrs.calendarDetails.destroy();
															}
														}
													],
													shadow: true,
													defaults: {
														required: true,
														labelWidth: Ext.os.is.Phone ? 150 : 300
													},
													title: b.event.data.obj.TITLE,
													xtype: 'mydaywidgetcal',
													userCls: 'big-100 small-100 dashboard-item'
												}
											]
										}).show();
									qrs.currentTrackLocation = Ext.getStore('UserTracks').indexOfId(b.event.data.obj.ID);
									Ext.ComponentQuery.query('#calendars')[0].controller.onSongSelect('', Ext.getStore('UserTracks').getById(b.event.data.obj.ID), false);
									*/
									console.log('B', b.event.data['FILE_PATH'])
									getPostId(b.event.data['FILE_PATH'])
									//console.log('event tap', this, a, b, c, d, e);
								},
								valuechange: function (e) {
									console.log('event value change', e);
								}
							}
						}
					},
					store: {
						autoLoad: false,
						listeners: {
							update: function () {
								console.log('update');
							},
							add: function () {
								console.log('Add');
							},
							create: function () {
								console.log('Create');
							},
							load: function () {},
							initialize: function () {}
						},
						remoteFilter: false,
						reloadOnClearSorters: false,
						
						eventStoreDefaults: {
							
							proxy: {
								actionMethods:{
									create: 'POST',
									read: 'POST',
									update: 'POST',
									destroy: 'POST'
								},
								type: 'ajax',
								url: 'includes/ajax/data/calendar.php',
								timeout: 10000,
								
							}
						},
					
						data: [{
								"id": 1,
								"title": "Performance",
								"editable": false
							}, {
								"id": 2,
								"title": "Composition",
								"editable": false
							}, {
								"id": 3,
								"title": "Lesson/Practice",
								"editable": false
							}, {
								"id": 4,
								"title": "Misc/To File",
								"editable": false
							}, {
								"id": 5,
								"title": "Studio Tracks",
								"draggable": false,
								"editable": false
							}, {
								"id": 6,
								"title": "Goals",
								"editable": true
							}, {
								"id": 7,
								"title": "Subtotals",
								"editable": false
							}
						]
					},
					renderTo: Ext.select('.col-sm')
					//renderTo: Ext.select('.col-lg-8')
				}


			)
			
			//{
			//	xtype: 'calendar',
			//	height: 600,
			//	width: 539,
			//	renderTo: Ext.select('.col-lg-8')
			//});
			
			
			//CREATE SONGLIST
			/*
			 * Songlist Store
			 */
			 /*
			Ext.define('QRSConnect.Songlist', {
				extend: 'Ext.data.Store',
				storeId: 'UserTracks',
				reference: 'UserTracks',
				autoSync:true,
				autoLoad:true,
				pageSize:null,
				data:<?php 
						//This dumps the calendar Var.
						echo json_encode($cal);
					?>	,
				*//*proxy: {
					type: 'ajax',
					writer:{ writeAllFields:true },
					url:'../php/api/api.php?requestType=music',
					api:{
						create:'../php/api/api.php?requestType=createMusic',
						update:'../php/api/api.php?requestType=updateMusic',
						destroy:'../php/api/api.php?requestType=deleteMusic' //-- Need more Data to Delete.
					},
					timeout:30000,
					reader: {
						type: 'json',
						rootProperty: 'response'
					}
				},*//*
				sorters: [{
					 property: 'RECORDED_DATE',
					 direction: 'DESC'
				 }, {
					 property: 'MUSIC_ID',
					 direction: 'DESC'
				 }],
				 listeners:{
					load:function(records){
						callMeLater = function(){
			
							calType=[{"id":1,"title":"Performance","editable":false},{"id":2,"title":"Composition","editable":false},{"id":3,"title":"Lesson/Practice","editable":false},{"id":4,"title":"Misc/To File","editable":false},{"id":5,"title":"Studio Tracks","draggable":false,"editable":false},{"id":6,"title":"Goals","editable":true},{"id":7,"title":"Segments","editable":true},{"id":8,"title":"Subtotals","editable":false}]
							calendarStore = Ext.ComponentQuery.query("calendar")[0].getStore()
							calendarStore.suspendEvents();
							var eventSource = calendarStore.getEventSource();
							eventSource.clearData()
							records.each(function(record) {
								trackArr = (Ext.is.iOS)?record.data["RECORDED_DATE"]:new Date(record.data["RECORDED_DATE"]);
								calendarId = 4;
								for(cal in calType){
									if(calType[cal].title == record.data["ACTIVITY_CATEGORY2"]){
										calendarId = (calType[cal].id)
										break;
									}
								}
								
								data={
									"startDate": trackArr ,
									"endDate": trackArr ,
									"title": record.data["TITLE"],
									"description": "",
									"calendarId":calendarId,
									"obj":record.data
								}
								
								//Copies the whole record set probably just needs the id.
								 var event = eventSource.createEvent(data);
												eventSource.add(event);
												
								//Get Subtotals 
								
							})
							calendarStore.resumeEvents();
						}
						
						setTimeout('callMeLater()',500)
					} 
				 }
			 });
			 

			var songlist = Ext.create('QRSConnect.Songlist')
			*/
		}
		
		
	})
	
	/*
	* getPostId -- put the source in to get the postId
	*/
	function getPostId(source) {
		var data = {};
		data['source']=source;
		
		$.post(api['data/calPost'], data, function(response) {
			if(response.callback) {
			   response = Ext.decode(response.callback,true);
			} 
			
			if(response){
				//Open New Window with Post ID
				if(response['post_id']){
					 myWindow = window.open('/posts/'+response['post_id'], "myWindow");  
					 return;
				//POST ID is gone... but File Exists.	 
				} else if(typeof response == 'object' ){
					Ext.Msg.alert('Post Missing',
						'The post may have been deleted but here is the file. '+
						'<div> <a target="_blank" href="https://qrs-connect.com/content/uploads/'+source+'">Audio File</a> '+
						'<span class="mejs__offscreen">Audio Player</span>'+
						'<div class="mejs__container mejs__container-keyboard-inactive js_mediaelementplayer mejs__audio" tabindex="0" role="application" aria-label="Audio Player" style="width: 100%; height: 40px; min-width: 241px;">'+
						'<div class="mejs__inner"><div class="mejs__mediaelement"><mediaelementwrapper><audio width="100%" class="js_mediaelementplayer" preload="none" src="https://qrs-connect.com/content/uploads/'+source+'"> <source src="https://qrs-connect.com/content/uploads/'+source+'">'+
						'Your browser does not support HTML5 audio'+
						'</audio></mediaelementwrapper></a></div></div></div> </div>'
					);
					return;
				//No File Exists... woops!  This probably should have been deleted from music_library!	
				} else {
						Ext.Msg.alert('An Error Occurred',response)
						return;
					
				}
			}
			
		}, 'json');
	}
</script>

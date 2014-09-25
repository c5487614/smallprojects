var tabConstructor = {
	tabHead : '<ul class="nav nav-tabs" role="tablist">{headContent}</ul>',
	tabHeadItem : '<li class="{headClass}"><a href="{href}" role="tab" data-toggle="tab">{tabName}</a></li>',
	tabContent : '<div class="tab-content">{tabContent}</div>',
	tabItem : '<div class="{tabItemClass}" id="{tabItemId}">{tabItemContent}</div>',
	cbListContent : '<div class="list-group"><a href="javascript:void(0)" class="list-group-item"><h4 class="list-group-item-heading">{itemTitle}</h4><p class="list-group-item-text">{itemList}</p></a></div>',
	cbListItem : '<label class="checkbox-inline"><input onclick="{itemClick}" type="checkbox" value="{itemValue}"> {itemName}</label>',
	init : function(config){
		var i,html;
		var list = config.itemList;
		html = '';
		//{tabHeads:[],tabItems:[]}
		var tabHead = this.createHead(config)
		var tabContent = this.createTabContent(config);
		html = tabHead + tabContent;
		var tmp = TmpDialogContent;
		if(config.okBtnClick){
			tmp = tmp.replace('{btnClick}', config.okBtnClick);
		}
		return tmp.replace('{title}',config.title).replace('{dialogId}',config.dialogId).replace('{content}',html).replace('{btnClick}','editResult(\''+config.dialogId+'\',\''+config.ctrlId+'\',this)');
	},
	createHead : function(config){
		var tmpHeadItem = this.tabHeadItem;
		//[{href:'',tabName:'',headClass:''},...,]
		var configHeads = config.tabHeads;
		var i,result;
		result = '';
		for(i=0;i<configHeads.length;i++){
			result = result + tmpHeadItem.replace('{href}','#'+configHeads[i].href).replace('{tabName}',configHeads[i].tabName).replace('{headClass}',configHeads[i].headClass||'');
		}
		return this.tabHead.replace('{headContent}',result);
	},
	createTabContent : function(config){
		var tmpTableContent;
		var tmpTabItem = this.tabItem;
		var configTabItems = config.tabItems
		//[{tabItemClass:'',tabItemId:'',itemContent:[]}]
		var i,result;
		result = '';
		for(i=0;i<configTabItems.length;i++){
			result = result + tmpTabItem.replace('{tabItemClass}',configTabItems[i].tabItemClass).replace('{tabItemId}',configTabItems[i].tabItemId).replace('{tabItemContent}',this.createTabList(configTabItems[i]));
		}
		return this.tabContent.replace('{tabContent}',result);
	},
	createTabList : function(config){
		var tmpCbListContent = this.cbListContent;
		var tmpcbListItem = this.cbListItem;
		var configTabContents = config.itemContent;
		//console.log(configTabContents);
		//[{itemTitle:'',items:[{}]}]
		var i,j,result;
		result = '';
		for(i=0;i<configTabContents.length;i++){
			var tabContentItem = configTabContents[i];
			result = result + tmpCbListContent.replace('{itemTitle}', tabContentItem.itemTitle).replace('{itemList}', this.createItem(tabContentItem));
		}
		return result;
	},
	createItem : function(config){
		var tmpcbListItem = this.cbListItem;
		var i,result;
		result = '';
		var configListItems = config.items;
		
		//[{itemClick:'',itemValue:'',itemName:''}]
		for(i=0;i<configListItems.length;i++){
			result = result + tmpcbListItem.replace('{itemClick}', configListItems[i].itemClick).replace('{itemValue}', configListItems[i].itemValue).replace('{itemName}', configListItems[i].itemName);
			if(configListItems[i].isInline!=undefined&&configListItems[i].isInline==false){
				result = result.replace('class="checkbox-inline"','');
			}
		}
		return result;
	}
}
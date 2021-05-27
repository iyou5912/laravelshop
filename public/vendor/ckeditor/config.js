/**
 * @license Copyright (c) 2003-2020, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {

	// %REMOVE_START%
	// The configuration options below are needed when running CKEditor from source files.
	// Remove copyformatting
	config.plugins = 'dialogui,dialog,dialogadvtab,basicstyles,bidi,blockquote,notification,button,toolbar,clipboard,panelbutton,panel,floatpanel,colorbutton,colordialog,templates,menu,contextmenu,div,editorplaceholder,resize,elementspath,enterkey,entities,popup,filetools,filebrowser,find,floatingspace,listblock,richcombo,font,format,horizontalrule,htmlwriter,fakeobjects,iframe,wysiwygarea,image,indent,indentblock,indentlist,justify,link,list,liststyle,magicline,maximize,preview,showblocks,showborders,sourcearea,stylescombo,tab,table,tabletools,tableselection,undo,lineutils,widgetselection,widget,notificationaggregator,uploadwidget,uploadimage,wsc,menubutton,removeformat,scayt,html5video';
	config.skin = 'moono-lisa';
	// %REMOVE_END%

	config.toolbarGroups = [
		{ name: 'document',    groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'clipboard',   groups: [ 'clipboard', 'undo' ] },
		{ name: 'editing',     groups: [ 'find', 'selection', 'spellchecker', 'blocks' ] },
		{ name: 'forms' },
		{ name: 'insert' },
		{ name: 'others' },
		{ name: 'tools' },
		'/',
		{ name: 'styles' },
		{ name: 'colors' },
		{ name: 'paragraph',   groups: [ 'indent', 'align' ] },
		{ name: 'list' },
		{ name: 'basicstyles', groups: [ 'basicstyles' ] },
		{ name: 'links' },
	];

	// Define changes to default configuration here. For example:
	// config.language = 'fr';
	// config.uiColor = '#AADC6E';

	config.removeButtons = 'Font,Indent,Outdent,Scayt,Replace,Preview,Subscript,Superscript,Format,Copyformatting,Templates';

	config.removeDialogTabs = 'link:upload';

    // 禁止设置图片大小
	config.disallowedContent = 'img{width,height};img[width,height]';
    config.image_previewText = ' ';

    // 添加图片上传
	var token = $("input[name='_token']").val();
    config.filebrowserImageUploadUrl = "/gjadmin/ckeditor/image?_token="+token;
    config.filebrowserUploadUrl = "/gjadmin/ckeditor/file?_token="+token;

    config.height = 300;
};

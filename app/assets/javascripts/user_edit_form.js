$(function(){
	$("#user-edit-form-open").click(function(){
		//キーボード操作などにより、オーバーレイが多重起動するのを防止する
		$( this ).blur() ;	//ボタンからフォーカスを外す
		if( $( "#user-edit-form-overlay" )[0] ) return false ;		//新しくモーダルウィンドウを起動しない (防止策1)
		//if($("#modal-overlay")[0]) $("#modal-overlay").remove() ;		//現在のモーダルウィンドウを削除して新しく起動する (防止策2)
 
		//オーバーレイを出現させる
		$( "body" ).append( '<div id="user-edit-form-overlay"></div>' ) ;
		$( "#user-edit-form-overlay" ).fadeIn( "slow" ) ;
 
		//コンテンツをセンタリングする
		centeringModalSyncer() ;
 
		//コンテンツをフェードインする
		$( "#user-edit-form" ).fadeIn( "slow" ) ;
 
		//[#modal-overlay]、または[#modal-close]をクリックしたら…
		$( "#user-edit-form-overlay,#user-edit-form-close" ).unbind().click( function(){
 
			//[#modal-content]と[#modal-overlay]をフェードアウトした後に…
			$( "#user-edit-form,#user-edit-form-overlay" ).fadeOut( "slow" , function(){
 
				//[#modal-overlay]を削除する
				$('#user-edit-form-overlay').remove() ;
 
			} ) ;
 
		} ) ;
 
	} ) ;
 
	//リサイズされたら、センタリングをする関数[centeringModalSyncer()]を実行する
	$( window ).resize( centeringModalSyncer ) ;
 
	//センタリングを実行する関数
	function centeringModalSyncer() {
 
		//画面(ウィンドウ)の幅、高さを取得
		var w = $( window ).width() ;
		var h = $( window ).height() ;
 
		// コンテンツ(#modal-content)の幅、高さを取得
		// jQueryのバージョンによっては、引数[{margin:true}]を指定した時、不具合を起こします。
		var cw = $( "#user-edit-form" ).outerWidth( {margin:true} );
		var ch = $( "#user-edit-form" ).outerHeight( {margin:true} );
		var cw = $( "#user-edit-form" ).outerWidth();
		var ch = $( "#user-edit-form" ).outerHeight();
 
		//センタリングを実行する
		$( "#user-edit-form" ).css( {"left": ((w - cw)/2) + "px","top": ((h - ch)/2) + "px"} ) ;
 
	}
 
} ) ;




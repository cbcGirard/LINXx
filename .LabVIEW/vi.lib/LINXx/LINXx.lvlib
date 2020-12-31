<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="19008000">
	<Property Name="NI.Lib.Icon" Type="Bin">'1#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!(]!!!*Q(C=\&gt;8"=&gt;MQ%!8143;(8.6"2CVM#WJ",7Q,SN&amp;(N&lt;!NK!7VM#WI"&lt;8A0$%94UZ2$P%E"Y.?G@I%A7=11U&gt;M\7P%FXB^VL\`NHV=@X&lt;^39O0^N(_&lt;8NZOEH@@=^_CM?,3)VK63LD-&gt;8LS%=_]J'0@/1N&lt;XH,7^\SFJ?]Z#5P?=F,HP+5JTTF+5`Z&gt;MB$(P+1)YX*RU2DU$(![)Q3YW.YBG&gt;YBM@8'*\B':\B'2Z&gt;9HC':XC':XD=&amp;M-T0--T0-.DK%USWS(H'2\$2`-U4`-U4`/9-JKH!&gt;JE&lt;?!W#%;UC_WE?:KH?:R']T20]T20]\A=T&gt;-]T&gt;-]T?/7&lt;66[UTQ//9^BIHC+JXC+JXA-(=640-640-6DOCC?YCG)-G%:(#(+4;6$_6)]R?.8&amp;%`R&amp;%`R&amp;)^,WR/K&lt;75?GM=BZUG?Z%G?Z%E?1U4S*%`S*%`S'$;3*XG3*XG3RV320-G40!G3*D6^J-(3D;F4#J,(T\:&lt;=HN+P5FS/S,7ZIWV+7.NNFC&lt;+.&lt;GC0819TX-7!]JVO,(7N29CR6L%7,^=&lt;(1M4#R*IFV][.DX(X?V&amp;6&gt;V&amp;G&gt;V&amp;%&gt;V&amp;\N(L@_Z9\X_TVONVN=L^?Y8#ZR0J`D&gt;$L&amp;]8C-Q_%1_`U_&gt;LP&gt;WWPAG_0NB@$TP@4C`%`KH@[8`A@PRPA=PYZLD8Y!#/7SO!!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">419463168</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Item Name="Private" Type="Folder">
		<Item Name="Dev helpers" Type="Folder">
			<Item Name="Format Command to md.vi" Type="VI" URL="../Private/Format Command to md.vi"/>
			<Item Name="Get Project Paths.vi" Type="VI" URL="../Private/Get Project Paths.vi"/>
			<Item Name="QuickFWCopy.vi" Type="VI" URL="../Private/QuickFWCopy.vi"/>
			<Item Name="Rebuild Command Table.vi" Type="VI" URL="../Private/Rebuild Command Table.vi"/>
			<Item Name="Rebuild Lua filter.vi" Type="VI" URL="../Private/Rebuild Lua filter.vi"/>
		</Item>
		<Item Name="Analog info.ctl" Type="VI" URL="../Private/Analog info.ctl"/>
		<Item Name="Force reset.vi" Type="VI" URL="../Private/Force reset.vi"/>
		<Item Name="Get AI Res.vi" Type="VI" URL="../Private/Get AI Res.vi"/>
		<Item Name="Get AO Ref.vi" Type="VI" URL="../Private/Get AO Ref.vi"/>
		<Item Name="Get AO Res.vi" Type="VI" URL="../Private/Get AO Res.vi"/>
		<Item Name="Reset Target.ctl" Type="VI" URL="../Public/Reset Target.ctl"/>
		<Item Name="Reset.vi" Type="VI" URL="../Private/Reset.vi"/>
		<Item Name="Start WiFi with DHCP.vi" Type="VI" URL="../Private/Start WiFi with DHCP.vi"/>
		<Item Name="Validate TCP.vi" Type="VI" URL="../Private/Validate TCP.vi"/>
		<Item Name="Validate WiFi Connection.vi" Type="VI" URL="../Private/Validate WiFi Connection.vi"/>
	</Item>
	<Item Name="Public" Type="Folder">
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Item Name="Board-specific" Type="Folder">
			<Item Name="FeatherM0" Type="Folder">
				<Item Name="WiFi101 Status.ctl" Type="VI" URL="../Private/WiFi101 Status.ctl"/>
				<Item Name="Interpret WiFi101 status.vi" Type="VI" URL="../Public/Board-specific/FeatherM0/Interpret WiFi101 status.vi"/>
			</Item>
		</Item>
		<Item Name="WiFi" Type="Folder">
			<Item Name="Helpers" Type="Folder">
				<Item Name="To TCP Config.vi" Type="VI" URL="../Public/WiFi/Helpers/To TCP Config.vi"/>
				<Item Name="Add Null Terminator.vi" Type="VI" URL="../Public/WiFi/Helpers/Add Null Terminator.vi"/>
			</Item>
			<Item Name="Get WiFi Info.vi" Type="VI" URL="../Public/WiFi/Get WiFi Info.vi"/>
			<Item Name="Switch to WiFi.vi" Type="VI" URL="../Public/WiFi/Switch to WiFi.vi"/>
			<Item Name="Check WiFi status.vi" Type="VI" URL="../Public/WiFi/Check WiFi status.vi"/>
			<Item Name="Reset Wifi.vi" Type="VI" URL="../Private/Reset Wifi.vi"/>
		</Item>
		<Item Name="Utility" Type="Folder">
			<Item Name="Get AIO Info.vi" Type="VI" URL="../Public/Utility/Get AIO Info.vi"/>
			<Item Name="Reset Board.vi" Type="VI" URL="../Public/Utility/Reset Board.vi"/>
			<Item Name="Heartbeat Blinker.vi" Type="VI" URL="../Public/Utility/Heartbeat Blinker.vi"/>
		</Item>
	</Item>
</Library>

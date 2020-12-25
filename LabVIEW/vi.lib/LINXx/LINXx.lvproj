<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="19008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="examples" Type="Folder" URL="../../../examples">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="help" Type="Folder" URL="../../../help">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Private" Type="Folder" URL="../Private">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="project" Type="Folder" URL="../../../project">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="Public" Type="Folder" URL="../Public">
			<Property Name="NI.DISK" Type="Bool">true</Property>
		</Item>
		<Item Name="LINX template.vi" Type="VI" URL="../../../templates/LINX template.vi"/>
		<Item Name="LINXx.lvlib" Type="Library" URL="../LINXx.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="8.6CompatibleGlobalVar.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/config.llb/8.6CompatibleGlobalVar.vi"/>
				<Item Name="AI Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AI/typedefs/AI Channels Enum.ctl"/>
				<Item Name="AI Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AI/typedefs/AI Channels FPGA Reference.ctl"/>
				<Item Name="AI Channels List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AI/typedefs/AI Channels List.ctl"/>
				<Item Name="AI IRQ FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/typedefs/AI IRQ FPGA Reference.ctl"/>
				<Item Name="AI.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/AI/AI.lvlib"/>
				<Item Name="Analog Scaling Constants List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Analog Scaling Constants List.ctl"/>
				<Item Name="Analog Scaling Constants.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Analog Scaling Constants.ctl"/>
				<Item Name="AO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/AO/typedefs/AO Channels Enum.ctl"/>
				<Item Name="AO Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/AO/typedefs/AO Channels FPGA Reference.ctl"/>
				<Item Name="AO Channels List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/AO/typedefs/AO Channels List.ctl"/>
				<Item Name="AO.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/AO/AO.lvlib"/>
				<Item Name="Block Write Resource.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/Resource Manager/typedefs/Block Write Resource.ctl"/>
				<Item Name="BuildHelpPath.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/BuildHelpPath.vi"/>
				<Item Name="Callback VI Ref.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/typedefs/Callback VI Ref.ctl"/>
				<Item Name="CANCloseInterface.vi" Type="VI" URL="/&lt;vilib&gt;/RioEmbeddedCAN/RioEmbeddedCAN.llb/CANCloseInterface.vi"/>
				<Item Name="CANStop.vi" Type="VI" URL="/&lt;vilib&gt;/RioEmbeddedCAN/RioEmbeddedCAN.llb/CANStop.vi"/>
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Check Special Tags.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Check Special Tags.vi"/>
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
				<Item Name="Configuration Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Configuration Manager.vi"/>
				<Item Name="Convert property node font to graphics font.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Convert property node font to graphics font.vi"/>
				<Item Name="Details Display Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Details Display Dialog.vi"/>
				<Item Name="DI IRQ FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/typedefs/DI IRQ FPGA Reference.ctl"/>
				<Item Name="DialogType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogType.ctl"/>
				<Item Name="DialogTypeEnum.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/DialogTypeEnum.ctl"/>
				<Item Name="DIO Bank Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Bank Enum.ctl"/>
				<Item Name="DIO Bitmask to Channel Map.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Bitmask to Channel Map.ctl"/>
				<Item Name="DIO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Channels Enum.ctl"/>
				<Item Name="DIO Channels List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO Channels List.ctl"/>
				<Item Name="DIO FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/DIO FPGA Reference.ctl"/>
				<Item Name="DIO.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Onboard IO/DIO/DIO.lvlib"/>
				<Item Name="ELVIS III AI Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/ELVIS III v1.0/AI/typedefs/ELVIS III AI Channels FPGA Reference.ctl"/>
				<Item Name="ELVIS III AO Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/ELVIS III v1.0/AO/typedefs/ELVIS III AO Channels FPGA Reference.ctl"/>
				<Item Name="ELVIS III DIO Bank Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/ELVIS III v1.0/DIO/typedefs/ELVIS III DIO Bank Enum.ctl"/>
				<Item Name="ELVIS III DIO Bitmask to Channel Map.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/ELVIS III v1.0/DIO/typedefs/ELVIS III DIO Bitmask to Channel Map.ctl"/>
				<Item Name="ELVIS III DIO FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/ELVIS III v1.0/DIO/typedefs/ELVIS III DIO FPGA Reference.ctl"/>
				<Item Name="ELVIS III v1.0 AI Read Bank A.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/ELVIS III v1.0/AI/vis/ELVIS III v1.0 AI Read Bank A.vi"/>
				<Item Name="ELVIS III v1.0 AI Read Bank B.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/ELVIS III v1.0/AI/vis/ELVIS III v1.0 AI Read Bank B.vi"/>
				<Item Name="ELVIS III v1.0 Build Bitmask DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/ELVIS III v1.0/DIO/vis/ELVIS III v1.0 Build Bitmask DIO.vi"/>
				<Item Name="ELVIS III v1.0 Read AI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/ELVIS III v1.0/AI/vis/ELVIS III v1.0 Read AI.vi"/>
				<Item Name="ELVIS III v1.0 Reset FPGA.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/ELVIS III v1.0/ELVIS III v1.0 Reset FPGA.vi"/>
				<Item Name="ELVIS III v1.0 Write AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/ELVIS III v1.0/AO/vis/ELVIS III v1.0 Write AO.vi"/>
				<Item Name="ELVIS III v1.0 Write DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/ELVIS III v1.0/DIO/vis/ELVIS III v1.0 Write DIO.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="Error Code Database.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Code Database.vi"/>
				<Item Name="ErrWarn.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/ErrWarn.ctl"/>
				<Item Name="eventvkey.ctl" Type="VI" URL="/&lt;vilib&gt;/event_ctls.llb/eventvkey.ctl"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="Find Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Find Mutex.vi"/>
				<Item Name="Find Tag.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Find Tag.vi"/>
				<Item Name="Format Message String.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Format Message String.vi"/>
				<Item Name="FPGA Ref Manager Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/FPGA Ref Manager Action Enum.ctl"/>
				<Item Name="FPGA Ref Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/FPGA Ref Manager.vi"/>
				<Item Name="General Error Handler Core CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler Core CORE.vi"/>
				<Item Name="General Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/General Error Handler.vi"/>
				<Item Name="Generic FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Generic FPGA Reference.ctl"/>
				<Item Name="Generic IRQ Array.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/typedefs/Generic IRQ Array.ctl"/>
				<Item Name="Generic IRQ.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/typedefs/Generic IRQ.ctl"/>
				<Item Name="Get String Text Bounds.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Get String Text Bounds.vi"/>
				<Item Name="Get System Directory.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/Get System Directory.vi"/>
				<Item Name="Get Text Rect.vi" Type="VI" URL="/&lt;vilib&gt;/picture/picture.llb/Get Text Rect.vi"/>
				<Item Name="GetHelpDir.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetHelpDir.vi"/>
				<Item Name="GetRTHostConnectedProp.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/GetRTHostConnectedProp.vi"/>
				<Item Name="Hardware Version Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Hardware Version Enum.ctl"/>
				<Item Name="IO Config FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/typedefs/IO Config FPGA Reference.ctl"/>
				<Item Name="IO IRQ Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/typedefs/IO IRQ Channels Enum.ctl"/>
				<Item Name="IO Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/IO Manager.vi"/>
				<Item Name="IRQ Type.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/typedefs/IRQ Type.ctl"/>
				<Item Name="Is FPGA Ref Available.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Is FPGA Ref Available.vi"/>
				<Item Name="List Directory and LLBs.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/List Directory and LLBs.vi"/>
				<Item Name="LMH-LINX.lvlib" Type="Library" URL="/&lt;vilib&gt;/MakerHub/LINX/LMH-LINX.lvlib"/>
				<Item Name="LMH-Toolbox.lvlib" Type="Library" URL="/&lt;vilib&gt;/MakerHub/Toolbox/LMH-Toolbox.lvlib"/>
				<Item Name="Lock Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Lock Mutex.vi"/>
				<Item Name="Longest Line Length in Pixels.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Longest Line Length in Pixels.vi"/>
				<Item Name="LVBoundsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVBoundsTypeDef.ctl"/>
				<Item Name="LVNumericRepresentation.ctl" Type="VI" URL="/&lt;vilib&gt;/numeric/LVNumericRepresentation.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
				<Item Name="Mutex Collection.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Mutex Collection.ctl"/>
				<Item Name="myRIO Generic Hardware Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/myRIO Generic Hardware Reference.ctl"/>
				<Item Name="myRIO v1.0 Block Write Resource Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Block Write Resource Manager.vi"/>
				<Item Name="myRIO v1.0 Build Bitmask DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.0 Build Bitmask DIO.vi"/>
				<Item Name="myRIO v1.0 Build Mutex Name.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Build Mutex Name.vi"/>
				<Item Name="myRIO v1.0 Build MUX Configuration AI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AI/vis/myRIO v1.0 Build MUX Configuration AI.vi"/>
				<Item Name="myRIO v1.0 Build MUX Configuration AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/AO/vis/myRIO v1.0 Build MUX Configuration AO.vi"/>
				<Item Name="myRIO v1.0 Build MUX Configuration DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.0 Build MUX Configuration DIO.vi"/>
				<Item Name="myRIO v1.0 Channel Reservation Info.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/typedefs/myRIO v1.0 Channel Reservation Info.ctl"/>
				<Item Name="myRIO v1.0 Channel Reservation List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/typedefs/myRIO v1.0 Channel Reservation List.ctl"/>
				<Item Name="myRIO v1.0 Clear All IRQ.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/vis/myRIO v1.0 Clear All IRQ.vi"/>
				<Item Name="myRIO v1.0 Close UART.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/UART/vis/myRIO v1.0 Close UART.vi"/>
				<Item Name="myRIO v1.0 Close.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/myRIO v1.0 Close.vi"/>
				<Item Name="myRIO v1.0 Configure IO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Configure IO.vi"/>
				<Item Name="myRIO v1.0 Connector List.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/typedefs/myRIO v1.0 Connector List.ctl"/>
				<Item Name="myRIO v1.0 Create Configuration List.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Create Configuration List.vi"/>
				<Item Name="myRIO v1.0 Get Analog Scaling Constants.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Get Analog Scaling Constants.vi"/>
				<Item Name="myRIO v1.0 Get Scaling Constants AI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AI/vis/myRIO v1.0 Get Scaling Constants AI.vi"/>
				<Item Name="myRIO v1.0 Get Scaling Constants AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/AO/vis/myRIO v1.0 Get Scaling Constants AO.vi"/>
				<Item Name="myRIO v1.0 Get Scaling Constants.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Get Scaling Constants.vi"/>
				<Item Name="myRIO v1.0 IRQ Info FGV.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/vis/myRIO v1.0 IRQ Info FGV.vi"/>
				<Item Name="myRIO v1.0 ISR Agent.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/vis/myRIO v1.0 ISR Agent.vi"/>
				<Item Name="myRIO v1.0 ISR Worker.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/vis/myRIO v1.0 ISR Worker.vi"/>
				<Item Name="myRIO v1.0 Read AI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AI/vis/myRIO v1.0 Read AI.vi"/>
				<Item Name="myRIO v1.0 Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/myRIO v1.0 Reference.ctl"/>
				<Item Name="myRIO v1.0 Reserve AI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AI/vis/myRIO v1.0 Reserve AI.vi"/>
				<Item Name="myRIO v1.0 Reserve AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/AO/vis/myRIO v1.0 Reserve AO.vi"/>
				<Item Name="myRIO v1.0 Reserve Channel List.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Reserve Channel List.vi"/>
				<Item Name="myRIO v1.0 Reserve Channel.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Reserve Channel.vi"/>
				<Item Name="myRIO v1.0 Reserve DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.0 Reserve DIO.vi"/>
				<Item Name="myRIO v1.0 Reset FPGA.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/myRIO v1.0 Reset FPGA.vi"/>
				<Item Name="myRIO v1.0 Scaling Constants Table.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Scaling Constants Table.vi"/>
				<Item Name="myRIO v1.0 Timer IRQ Info FGV.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/vis/myRIO v1.0 Timer IRQ Info FGV.vi"/>
				<Item Name="myRIO v1.0 Unreserve Channel.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/Resource Manager/vis/myRIO v1.0 Unreserve Channel.vi"/>
				<Item Name="myRIO v1.0 Wait for RDY.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/System/vis/myRIO v1.0 Wait for RDY.vi"/>
				<Item Name="myRIO v1.0 Write AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/AO/vis/myRIO v1.0 Write AO.vi"/>
				<Item Name="myRIO v1.0 Write DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.0 Write DIO.vi"/>
				<Item Name="myRIO v1.1 AI Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AI/typedefs/myRIO v1.1 AI Channels Enum.ctl"/>
				<Item Name="myRIO v1.1 AO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/AO/typedefs/myRIO v1.1 AO Channels Enum.ctl"/>
				<Item Name="myRIO v1.1 DIO Channels Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/typedefs/myRIO v1.1 DIO Channels Enum.ctl"/>
				<Item Name="myRIO v1.1 FPGA.lvbitx" Type="Document" URL="/&lt;vilib&gt;/myRIO/FPGA/bitfiles/myRIO v1.1 FPGA.lvbitx"/>
				<Item Name="myRIO v1.1 Open AI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/AI/vis/myRIO v1.1 Open AI.vi"/>
				<Item Name="myRIO v1.1 Open AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/AO/vis/myRIO v1.1 Open AO.vi"/>
				<Item Name="myRIO v1.1 Open DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/DIO/vis/myRIO v1.1 Open DIO.vi"/>
				<Item Name="myRIO v1.1 Open.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/myRIO v1.1 Open.vi"/>
				<Item Name="Named Mutex.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Named Mutex.ctl"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_LVConfig.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/config.llb/NI_LVConfig.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="Not Found Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Not Found Dialog.vi"/>
				<Item Name="Parse Scaling Constant Table.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Parse Scaling Constant Table.vi"/>
				<Item Name="Raw To Scaled Value.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Raw To Scaled Value.vi"/>
				<Item Name="Recursive File List.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Recursive File List.vi"/>
				<Item Name="Reentrant Mutex.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Reentrant Mutex.ctl"/>
				<Item Name="Ref Counter Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Ref Counter Action Enum.ctl"/>
				<Item Name="Ref Counter.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Ref Counter.vi"/>
				<Item Name="Resource Manager Action Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/typedefs/Resource Manager Action Enum.ctl"/>
				<Item Name="roboRIO AI Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/AI/typedefs/roboRIO AI Channels FPGA Reference.ctl"/>
				<Item Name="roboRIO AI IRQ FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/roboRIO v1.0/IRQ/typedefs/roboRIO AI IRQ FPGA Reference.ctl"/>
				<Item Name="roboRIO AO Channels FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/roboRIO v1.0/AO/typedefs/roboRIO AO Channels FPGA Reference.ctl"/>
				<Item Name="roboRIO DI IRQ FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/roboRIO v1.0/IRQ/typedefs/roboRIO DI IRQ FPGA Reference.ctl"/>
				<Item Name="roboRIO DIO Bank Enum.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO Bank Enum.ctl"/>
				<Item Name="roboRIO DIO Bitmask to Channel Map.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO Bitmask to Channel Map.ctl"/>
				<Item Name="roboRIO DIO FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/typedefs/roboRIO DIO FPGA Reference.ctl"/>
				<Item Name="roboRIO v1.0 Build Bitmask DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Build Bitmask DIO.vi"/>
				<Item Name="roboRIO v1.0 CAN Interface Manager.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/roboRIO v1.0/CAN/vis/roboRIO v1.0 CAN Interface Manager.vi"/>
				<Item Name="roboRIO v1.0 Clear All IRQ.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/roboRIO v1.0/IRQ/vis/roboRIO v1.0 Clear All IRQ.vi"/>
				<Item Name="roboRIO v1.0 ISR Agent.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/roboRIO v1.0/IRQ/vis/roboRIO v1.0 ISR Agent.vi"/>
				<Item Name="roboRIO v1.0 Read AI.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/AI/vis/roboRIO v1.0 Read AI.vi"/>
				<Item Name="roboRIO v1.0 Write AO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/roboRIO v1.0/AO/vis/roboRIO v1.0 Write AO.vi"/>
				<Item Name="roboRIO v1.0 Write DIO.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/roboRIO v1.0/DIO/vis/roboRIO v1.0 Write DIO.vi"/>
				<Item Name="Scaled Value To Raw.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/Utilities/vis/Scaled Value To Raw.vi"/>
				<Item Name="Search and Replace Pattern.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Search and Replace Pattern.vi"/>
				<Item Name="Set Bold Text.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set Bold Text.vi"/>
				<Item Name="Set String Value.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Set String Value.vi"/>
				<Item Name="Simple Error Handler.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Simple Error Handler.vi"/>
				<Item Name="subDisplayMessage.vi" Type="VI" URL="/&lt;vilib&gt;/express/express output/DisplayMessageBlock.llb/subDisplayMessage.vi"/>
				<Item Name="System Directory Type.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/sysdir.llb/System Directory Type.ctl"/>
				<Item Name="System FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/myRIO v1.0/System/typedefs/System FPGA Reference.ctl"/>
				<Item Name="TagReturnType.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/TagReturnType.ctl"/>
				<Item Name="Three Button Dialog CORE.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog CORE.vi"/>
				<Item Name="Three Button Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Three Button Dialog.vi"/>
				<Item Name="Timer IRQ Array.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/typedefs/Timer IRQ Array.ctl"/>
				<Item Name="Timer IRQ FPGA Reference.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/typedefs/Timer IRQ FPGA Reference.ctl"/>
				<Item Name="Timer IRQ.ctl" Type="VI" URL="/&lt;vilib&gt;/myRIO/common/Instrument Driver Framework/myRIO v1.0/IRQ/typedefs/Timer IRQ.ctl"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Unlock Mutex.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Unlock Mutex.vi"/>
				<Item Name="Utilities.lvlib" Type="Library" URL="/&lt;vilib&gt;/myRIO/Instrument Drivers/Utilities/Utilities.lvlib"/>
				<Item Name="Validate Channels.vi" Type="VI" URL="/&lt;vilib&gt;/myRIO/Common/Instrument Driver Framework/Utilities/vis/Validate Channels.vi"/>
				<Item Name="VariantType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/VariantDataType/VariantType.lvlib"/>
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
			</Item>
			<Item Name="liblinxdevice.dll" Type="Document" URL="liblinxdevice.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>

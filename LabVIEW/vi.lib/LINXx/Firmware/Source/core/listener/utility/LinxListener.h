/****************************************************************************************
**  Generic LINX listener header.
**
**  For more information see:           www.labviewmakerhub.com/linx
**  For support visit the forums at:    www.labviewmakerhub.com/forums/linx
**  
**  Written By Sam Kristoff, modified by CBC Girard
**
** BSD2 License.
****************************************************************************************/	

#ifndef LINX_LISTENER_H
#define LINX_LISTENER_H

/****************************************************************************************
** Defines
****************************************************************************************/

/****************************************************************************************
** Includes
****************************************************************************************/
#include "LinxDevice.h"

/****************************************************************************************
** Enums
****************************************************************************************/

/**
 * @brief Listener state
 * 
 */
enum LinxListenerState
{
	START, 
	LISTENING, 
	AVAILABLE, 
	ACCEPT, 
	CONNECTED, 
	CLOSE, 
	EXIT
};

/**
 * @brief Listener type
 * 
 */
enum LinxListenerInterface
{
	UART, 
	TCP	
};


/**
 * @brief Status codes
 * 
 */
typedef enum ListenerStatus
{
	LUNKNOWN_STATE=128
}ListenerStatus;


/**
 * @brief Base class for LV-board communications
 * 
 * @ref ProcessCommand handles the commands and responses; see [here](@ref CommandTable) for specifics
 */
class LinxListener
{
	public:	
		/****************************************************************************************
		**  Variables
		****************************************************************************************/
		LinxDevice* LinxDev;
		LinxListenerState State;
		LinxListenerInterface Interface;
		unsigned char ListenerChan;
		
		unsigned char* recBuffer; /*< Command buffer */
		unsigned char* sendBuffer;
		
		unsigned int PrevPacket=0; /*< Last packet handled (to skip duplicates) */

		int (*customCommands[16])(unsigned char, unsigned char*, unsigned char*, unsigned char*);
		int (*periodicTasks[1])(unsigned char*, unsigned char*);
		
		
		/****************************************************************************************
		**  Constructors
		****************************************************************************************/
		LinxListener();
		
		/****************************************************************************************
		** Functions
		****************************************************************************************/
		virtual int Start();			//Start Listener
		virtual int Listen();			//Listen For Connection
		virtual int Available();		//New Client Connection Available
		virtual int Accept();		//Accept New Client Connection
		virtual int Connected();	//Connected To Client
		virtual int Close();			//Close Client Connection
		virtual int Exit();			//Stop Listening, Close And Exit
		
		void AttachCustomCommand(unsigned short commandNumber, int (*function)(unsigned char, unsigned char*, unsigned char*, unsigned char*) );
		void AttachPeriodicTask(int (*function)(unsigned char*, unsigned char*));
		
		/**
		 * @brief Runs listener state machine; to be called in sketch loop()
		 * 
		 * @return int 
		 */
		virtual int CheckForCommands();		//Execute Listener State Machine		
				
		/**
		 * @brief Handles command packets
		 * 
		 * @param commandPacketBuffer 
		 * @param responsePacketBuffer 
		 * @return int status
		 * 
		 * See [here](@ref CommandTable) for table of commands
		 * 
		 */
		int ProcessCommand(unsigned char* recBuffer, unsigned char* sendBuffer);
		
		/**
		 * @brief Sends response packet.
		 * 
		 * @param commandPacketBuffer 
		 * @param responsePacketBuffer 
		 * @param dataSize 
		 * @param status 
		 */
		void PacketizeAndSend(unsigned char* commandPacketBuffer, unsigned char* responsePacketBuffer, unsigned int dataSize, int status);
		
		/**
		 * @brief Sends status only as response (no data)
		 * 
		 * @param commandPacketBuffer 
		 * @param responsePacketBuffer 
		 * @param status 
		 */
		void StatusResponse(unsigned char* commandPacketBuffer, unsigned char* responsePacketBuffer, int status);

		/**
		 * @brief Format byte array and send as LINX packet. Does not include data length byte.
		 * 
		 * @param commandPacketBuffer 
		 * @param responsePacketBuffer 
		 * @param dataBuffer 
		 * @param dataSize 
		 * @param status 
		 */
		void DataBufferResponse(unsigned char* commandPacketBuffer, unsigned char* responsePacketBuffer, const unsigned char* dataBuffer, unsigned char dataSize, int status);
		unsigned char ComputeChecksum(unsigned char* packetBuffer);
		bool ChecksumPassed(unsigned char* packetBuffer);		
};

#endif //LINX_LISTENER_H
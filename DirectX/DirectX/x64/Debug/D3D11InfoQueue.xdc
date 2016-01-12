<?xml version="1.0"?><doc>
<members>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="10">
<summary>
An information-queue interface stores, retrieves, and filters debug messages. The queue consists of a message queue, an optional storage filter stack, and a optional retrieval filter stack.
<para>(Also see DirectX SDK: ID3D11InfoQueue)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.AddApplicationMessage(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity,System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="18">
<summary>
Add a user-defined message to the message queue and send that message to debug output.
<para>(Also see DirectX SDK: ID3D11InfoQueue::AddApplicationMessage)</para>
</summary>
<param name="severity">Severity of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>.</param>
<param name="description">Message string.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.AddMessage(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId,System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="26">
<summary>
Add a debug message to the message queue and send that message to debug output.
<para>(Also see DirectX SDK: ID3D11InfoQueue::AddMessage)</para>
</summary>
<param name="category">Category of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>.</param>
<param name="severity">Severity of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>.</param>
<param name="id">Unique identifier of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>.</param>
<param name="description">User-defined message.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.ClearStoredMessages" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="36">
<summary>
Clear all messages from the message queue.
<para>(Also see DirectX SDK: ID3D11InfoQueue::ClearStoredMessages)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.GetBreakOnCategory(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="42">
<summary>
Get a message category to break on when a message with that category passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetBreakOnCategory)</para>
</summary>
<param name="category">Message category to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.GetBreakOnId(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="49">
<summary>
Get a message identifier to break on when a message with that identifier passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetBreakOnID)</para>
</summary>
<param name="id">Message identifier to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>.</param>
<returns>
Whether this breaking condition is turned on or off (true for on, false for off).
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.GetBreakOnSeverity(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="59">
<summary>
Get a message severity level to break on when a message with that severity level passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetBreakOnSeverity)</para>
</summary>
<param name="severity">Message severity level to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity"/>.</param>
<returns>
Whether this breaking condition is turned on or off (true for on, false for off).
</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.GetMessage(System.UInt64)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="69">
<summary>
Get a message from the message queue.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetMessage)</para>
</summary>
<param name="messageIndex">Index into message queue after an optional retrieval filter has been applied. 
This can be between 0 and the number of messages in the message queue that pass through the retrieval filter (which can be obtained with GetNumStoredMessagesAllowedByRetrievalFilter(). 
0 is the message at the front of the message queue.</param>
<returns>Returned message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Message"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Message"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.TryGetMessage(System.UInt64,Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Message@)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="79">
<summary>
Try to get a message from the message queue.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetMessage)</para>
</summary>
<param name="messageIndex">Index into message queue after an optional retrieval filter has been applied. 
This can be between 0 and the number of messages in the message queue that pass through the retrieval filter 
(which can be obtained with GetNumStoredMessagesAllowedByRetrievalFilter(). 
Index 0 is the message at the front of the message queue. </param>        
<param name="message">Returned message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Message"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.Message"/>.</param>      
<returns>True if successful; false otherwise.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.MessageCountLimit" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="91">
<summary>
Get or set the maximum number of messages that can be added to the message queue.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetMessageCountLimit)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.MuteDebugOutput" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="101">
<summary>
Get or set a boolean that turns the debug output on or off.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetMuteDebugOutput)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.AllowedByStorageFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="112">
<summary>
Get the number of messages that were allowed to pass through a storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetNumMessagesAllowedByStorageFilter)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.DeniedByStorageFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="121">
<summary>
Get the number of messages that were denied passage through a storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetNumMessagesDeniedByStorageFilter)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.DiscardedByMessageCountLimitCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="130">
<summary>
Get the number of messages that were discarded due to the message count limit.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetNumMessagesDiscardedByMessageCountLimit)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.StoredCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="139">
<summary>
Get the number of messages currently stored in the message queue.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetNumStoredMessages)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.StoredAllowedByRetrievalFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="148">
<summary>
Get the number of messages that are able to pass through a retrieval filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::GetNumStoredMessagesAllowedByRetrievalFilter)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.SetBreakOnCategory(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="157">
<summary>
Set a message category to break on when a message with that category passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::SetBreakOnCategory)</para>
</summary>
<param name="category">Message category to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageCategory"/>.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.SetBreakOnId(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="165">
<summary>
Set a message identifier to break on when a message with that identifier passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::SetBreakOnID)</para>
</summary>
<param name="id">Message identifier to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageId"/>.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D11.InfoQueue.SetBreakOnSeverity(Microsoft.WindowsAPICodePack.DirectX.Direct3D11.MessageSeverity,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d11\d3d11infoqueue.h" line="173">
<summary>
Set a message severity level to break on when a message with that severity level passes through the storage filter.
<para>(Also see DirectX SDK: ID3D11InfoQueue::SetBreakOnSeverity)</para>
</summary>
<param name="severity">A MessageSeverity, which represents a message severity level to break on.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
</member>
</members>
</doc>
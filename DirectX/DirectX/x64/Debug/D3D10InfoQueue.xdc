<?xml version="1.0"?><doc>
<members>
<member name="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="11">
<summary>
An information-queue interface stores, retrieves, and filters debug messages. The queue consists of a message queue, an optional storage filter stack, and a optional retrieval filter stack.
<para>(Also see DirectX SDK: ID3D10InfoQueue)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.AddApplicationMessage(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity,System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="19">
<summary>
Add a user-defined message to the message queue and send that message to debug output.
<para>(Also see DirectX SDK: ID3D10InfoQueue::AddApplicationMessage)</para>
</summary>
<param name="severity">Severity of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>.</param>
<param name="description">Message string.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.AddMessage(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId,System.String)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="27">
<summary>
Add a Direct3D 10 debug message to the message queue and send that message to debug output.
<para>(Also see DirectX SDK: ID3D10InfoQueue::AddMessage)</para>
</summary>
<param name="category">Category of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>.</param>
<param name="severity">Severity of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>.</param>
<param name="id">Unique identifier of a message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>.</param>
<param name="description">User-defined message.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.ClearStoredMessages" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="37">
<summary>
Clear all messages from the message queue.
<para>(Also see DirectX SDK: ID3D10InfoQueue::ClearStoredMessages)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.GetBreakOnCategory(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="43">
<summary>
Get a message category to break on when a message with that category passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetBreakOnCategory)</para>
</summary>
<param name="category">Message category to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.GetBreakOnId(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="50">
<summary>
Get a message identifier to break on when a message with that identifier passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetBreakOnID)</para>
</summary>
<param name="id">Message identifier to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.GetBreakOnSeverity(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="57">
<summary>
Get a message severity level to break on when a message with that severity level passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetBreakOnSeverity)</para>
</summary>
<param name="severity">Message severity level to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>.</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.GetMessage(System.UInt64)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="64">
<summary>
Get a message from the message queue.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetMessage)</para>
</summary>
<param name="messageIndex">Index into message queue after an optional retrieval filter has been applied. 
This can be between 0 and the number of messages in the message queue that pass through the retrieval filter (which can be obtained with GetNumStoredMessagesAllowedByRetrievalFilter(). 
0 is the message at the front of the message queue.</param>
<returns>Returned message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Message"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Message"/>.</returns>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.TryGetMessage(System.UInt64,Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Message@)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="74">
<summary>
Try to get a message from the message queue.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetMessage)</para>
</summary>
<param name="messageIndex">Index into message queue after an optional retrieval filter has been applied. 
This can be between 0 and the number of messages in the message queue that pass through the retrieval filter 
(which can be obtained with StoredAllowedByRetrievalFilterCount property. 
Index 0 is the message at the front of the message queue. </param>        
<param name="message">Returned message (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Message"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.Message"/>.</param>      
<returns>True if successful; false otherwise.</returns>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.MessageCountLimit" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="86">
<summary>
Get or set the maximum number of messages that can be added to the message queue.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetMessageCountLimit)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.MuteDebugOutput" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="96">
<summary>
Get or set a boolean that turns the debug output on or off.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetMuteDebugOutput)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.AllowedByStorageFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="106">
<summary>
Get the number of messages that were allowed to pass through a storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetNumMessagesAllowedByStorageFilter)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.DeniedByStorageFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="115">
<summary>
Get the number of messages that were denied passage through a storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetNumMessagesDeniedByStorageFilter)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.DiscardedByMessageCountLimitCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="124">
<summary>
Get the number of messages that were discarded due to the message count limit.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetNumMessagesDiscardedByMessageCountLimit)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.StoredCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="134">
<summary>
Get the number of messages currently stored in the message queue.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetNumStoredMessages)</para>
</summary>
</member>
<member name="P:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.StoredAllowedByRetrievalFilterCount" decl="false" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="143">
<summary>
Get the number of messages that are able to pass through a retrieval filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::GetNumStoredMessagesAllowedByRetrievalFilter)</para>
</summary>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.SetBreakOnCategory(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="152">
<summary>
Set a message category to break on when a message with that category passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::SetBreakOnCategory)</para>
</summary>
<param name="category">Message category to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageCategory"/>.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.SetBreakOnId(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="160">
<summary>
Set a message identifier to break on when a message with that identifier passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::SetBreakOnID)</para>
</summary>
<param name="id">Message identifier to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageId"/>.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
</member>
<member name="M:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.InfoQueue.SetBreakOnSeverity(Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity,System.Boolean)" decl="true" source="e:\git\image-cropper-for-computer-vision\directx\directx\direct3d10\d3d10infoqueue.h" line="168">
<summary>
Set a message severity level to break on when a message with that severity level passes through the storage filter.
<para>(Also see DirectX SDK: ID3D10InfoQueue::SetBreakOnSeverity)</para>
</summary>
<param name="severity">Message severity level to break on (see <see cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>)<seealso cref="T:Microsoft.WindowsAPICodePack.DirectX.Direct3D10.MessageSeverity"/>.</param>
<param name="enable">Turns this breaking condition on or off (true for on, false for off).</param>
</member>
</members>
</doc>
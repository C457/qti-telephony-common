.class Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ndefpush/NdefPushServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/ndefpush/NdefPushServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/ndefpush/NdefPushServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .locals 0
    .param p2, "sock"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 66
    iput-object p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 67
    const-string p1, "NdefPushServer"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 69
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 73
    const-string v0, "NdefPushServer"

    const-string v1, "starting connection thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 76
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-array v1, v1, [B
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .local v1, "partial":[B
    const/4 v2, 0x0

    move v3, v2

    .line 81
    .local v3, "connectionBroken":Z
    :goto_0
    if-nez v3, :cond_1

    .line 83
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v4, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v4

    .line 84
    .local v4, "size":I
    const-string v5, "NdefPushServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-gez v4, :cond_0

    .line 86
    const/4 v3, 0x1

    .line 87
    goto :goto_2

    .line 89
    :cond_0
    invoke-virtual {v0, v1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    .end local v4    # "size":I
    :catch_0
    move-exception v4

    .line 93
    .local v4, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    .line 94
    :try_start_2
    const-string v5, "NdefPushServer"

    const-string v6, "connection broken by IOException"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v4    # "e":Ljava/io/IOException;
    :goto_1
    goto :goto_0

    .line 99
    :cond_1
    :goto_2
    new-instance v2, Lcom/android/nfc/ndefpush/NdefPushProtocol;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/nfc/ndefpush/NdefPushProtocol;-><init>([B)V

    .line 100
    .local v2, "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    const-string v4, "NdefPushServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v4, v4, Lcom/android/nfc/ndefpush/NdefPushServer;->mCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    invoke-virtual {v2}, Lcom/android/nfc/ndefpush/NdefPushProtocol;->getImmediate()Landroid/nfc/NdefMessage;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/nfc/ndefpush/NdefPushServer$Callback;->onMessageReceived(Landroid/nfc/NdefMessage;)V
    :try_end_2
    .catch Landroid/nfc/FormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "partial":[B
    .end local v2    # "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .end local v3    # "connectionBroken":Z
    :try_start_3
    const-string v0, "NdefPushServer"

    const-string v1, "about to close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 107
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 104
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Landroid/nfc/FormatException;
    :try_start_4
    const-string v1, "NdefPushServer"

    const-string v2, "badly formatted NDEF message, ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 108
    .end local v0    # "e":Landroid/nfc/FormatException;
    :try_start_5
    const-string v0, "NdefPushServer"

    const-string v1, "about to close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 112
    :goto_3
    goto :goto_4

    .line 110
    :catch_2
    move-exception v0

    .line 113
    nop

    .line 114
    :goto_4
    const-string v0, "NdefPushServer"

    const-string v1, "finished connection thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 107
    :goto_5
    nop

    .line 108
    :try_start_6
    const-string v1, "NdefPushServer"

    const-string v2, "about to close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 112
    goto :goto_6

    .line 110
    :catch_3
    move-exception v1

    .line 112
    :goto_6
    throw v0
.end method

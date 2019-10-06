.class public Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;
.super Ljava/lang/Object;
.source "HostNfcFEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final MINIMUM_NFCF_PACKET_LENGTH:I = 0xa

.field static final NFCID2_LENGTH:I = 0x8

.field static final STATE_IDLE:I = 0x0

.field static final STATE_W4_SERVICE:I = 0x1

.field static final STATE_XFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "HostNfcFEmulationManager"


# instance fields
.field mActiveService:Landroid/os/Messenger;

.field mActiveServiceName:Landroid/content/ComponentName;

.field private mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field mEnabledFgServiceName:Landroid/content/ComponentName;

.field final mLock:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field mPendingPacket:[B

.field mService:Landroid/os/Messenger;

.field mServiceBound:Z

.field mServiceName:Landroid/content/ComponentName;

.field mState:I

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t3tIdentifiersCache"    # Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;-><init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mMessenger:Landroid/os/Messenger;

    .line 261
    new-instance v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;-><init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 77
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 80
    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 82
    return-void
.end method

.method static bytesToString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 345
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 346
    .local v0, "hexChars":[C
    mul-int/lit8 v1, p2, 0x2

    new-array v1, v1, [C

    .line 348
    .local v1, "chars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 349
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 350
    .local v3, "byteValue":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 351
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    .end local v2    # "j":I
    .end local v3    # "byteValue":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private getByteDump([B)Ljava/lang/String;
    .locals 7
    .param p1, "cmd"    # [B

    .line 357
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "str":Ljava/lang/StringBuffer;
    const/16 v1, 0x8

    .line 359
    .local v1, "letters":I
    const/4 v2, 0x0

    .line 361
    .local v2, "i":I
    if-nez p1, :cond_0

    .line 362
    const-string v3, " null\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 366
    :cond_0
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 367
    const-string v3, " %02X"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, p1, v2

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    rem-int v3, v2, v1

    add-int/lit8 v4, v1, -0x1

    if-eq v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    array-length v4, p1

    if-ne v3, v4, :cond_2

    .line 369
    :cond_1
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static sendEmptyData()V
    .locals 3

    .line 339
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 340
    .local v0, "data":[B
    const-string v1, "HostNfcFEmulationManager"

    const-string v2, "sending empty data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 342
    return-void
.end method


# virtual methods
.method bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 223
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const-string v0, "HostNfcFEmulationManager"

    const-string v1, "Service already bound."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    return-object v0

    .line 227
    :cond_0
    const-string v0, "HostNfcFEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.nfc.cardemulation.action.HOST_NFCF_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    const-string v1, "HostNfcFEmulationManager"

    const-string v2, "Could not bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 377
    const-string v0, "Bound HCE-F services: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    :cond_0
    return-void
.end method

.method findNfcid2([B)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # [B

    .line 253
    if-eqz p1, :cond_1

    array-length v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    const/4 v0, 0x2

    .line 258
    .local v0, "nfcid2Offset":I
    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->bytesToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 255
    .end local v0    # "nfcid2Offset":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 85
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 87
    if-nez p1, :cond_0

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 91
    :cond_0
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostEmulationActivated()V
    .locals 0

    .line 96
    return-void
.end method

.method public onHostEmulationData([B)V
    .locals 6
    .param p1, "data"    # [B

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->findNfcid2([B)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "nfcid2":Ljava/lang/String;
    const/4 v1, 0x0

    .line 102
    .local v1, "resolvedServiceName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 103
    if-eqz v0, :cond_0

    .line 104
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v3, v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->resolveNfcid2(Ljava/lang/String;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v3

    .line 105
    .local v3, "resolvedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    move-object v1, v4

    .end local v3    # "resolvedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 109
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 110
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 111
    monitor-exit v2

    return-void

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    move-object v1, v3

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 117
    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 122
    :cond_3
    iget v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 142
    :pswitch_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, v3, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_1

    .line 138
    :pswitch_1
    const-string v3, "HostNfcFEmulationManager"

    const-string v4, "Unexpected packet in STATE_W4_SERVICE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    goto :goto_1

    .line 124
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v3

    .line 125
    .local v3, "existingService":Landroid/os/Messenger;
    if-eqz v3, :cond_4

    .line 126
    const-string v4, "HostNfcFEmulationManager"

    const-string v5, "Binding to existing service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 128
    invoke-virtual {p0, v3, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_1

    .line 131
    :cond_4
    const-string v4, "HostNfcFEmulationManager"

    const-string v5, "Waiting for new service."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mPendingPacket:[B

    .line 134
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 136
    nop

    .line 145
    .end local v3    # "existingService":Landroid/os/Messenger;
    :goto_1
    monitor-exit v2

    .line 147
    return-void

    .line 118
    :cond_5
    :goto_2
    monitor-exit v2

    return-void

    .line 145
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHostEmulationDeactivated()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 153
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 154
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 155
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 156
    iput v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNfcDisabled()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 163
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 164
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 165
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 166
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 167
    iput v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitched()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 174
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 175
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 176
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 177
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 178
    iput v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 179
    monitor-exit v0

    .line 180
    return-void

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    .locals 5
    .param p1, "service"    # Landroid/os/Messenger;
    .param p2, "data"    # [B

    .line 190
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 192
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 193
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 195
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 196
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v1, "dataBundle":Landroid/os/Bundle;
    const-string v2, "data"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 198
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 199
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mMessenger:Landroid/os/Messenger;

    iput-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 201
    :try_start_0
    const-string v2, "HostNfcFEmulationManager"

    const-string v3, "Sending data to service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "HostNfcFEmulationManager"

    const-string v4, "Remote service has died, dropping packet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method sendDeactivateToActiveServiceLocked(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 211
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 219
    :goto_0
    return-void
.end method

.method unbindServiceIfNeededLocked()V
    .locals 3

    .line 242
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "HostNfcFEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unbinding from service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    .line 247
    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 249
    :cond_0
    return-void
.end method

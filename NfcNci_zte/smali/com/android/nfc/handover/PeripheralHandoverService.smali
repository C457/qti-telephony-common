.class public Lcom/android/nfc/handover/PeripheralHandoverService;
.super Landroid/app/Service;
.source "PeripheralHandoverService.java"

# interfaces
.implements Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;
    }
.end annotation


# static fields
.field public static final BUNDLE_TRANSFER:Ljava/lang/String; = "transfer"

.field static final DBG:Z = true

.field public static final EXTRA_BT_ENABLED:Ljava/lang/String; = "bt_enabled"

.field public static final EXTRA_CLIENT:Ljava/lang/String; = "client"

.field public static final EXTRA_PERIPHERAL_CLASS:Ljava/lang/String; = "class"

.field public static final EXTRA_PERIPHERAL_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_PERIPHERAL_NAME:Ljava/lang/String; = "headsetname"

.field public static final EXTRA_PERIPHERAL_OOB_DATA:Ljava/lang/String; = "oobdata"

.field public static final EXTRA_PERIPHERAL_TRANSPORT:Ljava/lang/String; = "transporttype"

.field public static final EXTRA_PERIPHERAL_UUIDS:Ljava/lang/String; = "uuids"

.field public static final MSG_HEADSET_CONNECTED:I = 0x0

.field public static final MSG_HEADSET_NOT_CONNECTED:I = 0x1

.field static final MSG_PAUSE_POLLING:I = 0x0

.field private static final PAUSE_DELAY_MILLIS:I = 0x12c

.field private static final PAUSE_POLLING_TIMEOUT_MS:I = 0x88b8

.field static final TAG:Ljava/lang/String; = "PeripheralHandoverService"

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothEnabledByNfc:Z

.field mBluetoothHeadsetConnected:Z

.field mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

.field final mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

.field mClient:Landroid/os/Messenger;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mHandler:Landroid/os/Handler;

.field final mMessenger:Landroid/os/Messenger;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mStartId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$1;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 103
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mMessenger:Landroid/os/Messenger;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 107
    iput v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/nfc/handover/PeripheralHandoverService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 203
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 205
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 208
    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->resumePolling()V

    goto :goto_0

    .line 213
    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 214
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 217
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method disableBluetoothIfNeeded()V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->hasConnectedBluetoothDevices()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 262
    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 266
    :cond_2
    return-void
.end method

.method doPeripheralHandover(Landroid/os/Bundle;)Z
    .locals 19
    .param p1, "msgData"    # Landroid/os/Bundle;

    move-object/from16 v9, p0

    .line 151
    move-object/from16 v10, p1

    iget-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    const/4 v11, 0x1

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "PeripheralHandoverService"

    const-string v1, "Ignoring pairing request, existing handover in progress."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v11

    .line 156
    :cond_0
    const/4 v12, 0x0

    if-nez v10, :cond_1

    .line 157
    return v12

    .line 160
    :cond_1
    const-string v0, "device"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 161
    const-string v0, "headsetname"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 162
    .local v13, "name":Ljava/lang/String;
    const-string v0, "transporttype"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 163
    .local v14, "transport":I
    const-string v0, "oobdata"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/bluetooth/OobData;

    .line 164
    .local v15, "oobData":Landroid/bluetooth/OobData;
    const-string v0, "uuids"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 165
    .local v8, "parcelables":[Landroid/os/Parcelable;
    const-string v0, "class"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/bluetooth/BluetoothClass;

    .line 167
    .local v16, "btClass":Landroid/bluetooth/BluetoothClass;
    const/4 v0, 0x0

    .line 168
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v8, :cond_2

    .line 169
    array-length v1, v8

    new-array v0, v1, [Landroid/os/ParcelUuid;

    .line 170
    move v1, v12

    .local v1, "i":I
    :goto_0
    array-length v2, v8

    if-ge v1, v2, :cond_2

    .line 171
    aget-object v2, v8, v1

    check-cast v2, Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "i":I
    :cond_2
    move-object/from16 v17, v0

    .end local v0    # "uuids":[Landroid/os/ParcelUuid;
    .local v17, "uuids":[Landroid/os/ParcelUuid;
    const-string v0, "client"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mClient:Landroid/os/Messenger;

    .line 176
    const-string v0, "bt_enabled"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 178
    new-instance v7, Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v2, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v0, v7

    move-object v1, v9

    move-object v3, v13

    move v4, v14

    move-object v5, v15

    move-object/from16 v6, v17

    move-object v11, v7

    move-object/from16 v7, v16

    move-object/from16 v18, v8

    move-object v8, v9

    .end local v8    # "parcelables":[Landroid/os/Parcelable;
    .local v18, "parcelables":[Landroid/os/Parcelable;
    invoke-direct/range {v0 .. v8}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILandroid/bluetooth/OobData;[Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    iput-object v11, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 181
    const/4 v0, 0x2

    if-ne v14, v0, :cond_3

    .line 182
    iget-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    iget-object v1, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    .line 183
    invoke-virtual {v1, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 182
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 185
    :cond_3
    iget-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v0

    if-nez v0, :cond_5

    .line 187
    iget-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    iget-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->resumePolling()V

    goto :goto_1

    .line 192
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->enableBluetooth()Z

    move-result v0

    if-nez v0, :cond_5

    .line 193
    const-string v0, "PeripheralHandoverService"

    const-string v1, "Error enabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x0

    iput-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 195
    return v12

    .line 199
    :cond_5
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method enableBluetooth()Z
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 252
    iput-boolean v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 253
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    return v0

    .line 255
    :cond_0
    return v1
.end method

.method hasConnectedBluetoothDevices()Z
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 276
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_2

    .line 277
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 278
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    .line 287
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    goto :goto_0

    .line 289
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 270
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBluetoothPeripheralHandoverComplete(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .line 222
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 223
    .local v0, "transport":I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 224
    iput-boolean p1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 231
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 232
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->disableBluetoothIfNeeded()V

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->replyToClient(Z)V

    .line 243
    sget-object v2, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 244
    :try_start_0
    iget v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    .line 245
    iput v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 246
    monitor-exit v2

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate()V
    .locals 2

    .line 137
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 138
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 147
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 112
    sget-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 114
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 116
    monitor-exit v0

    return v2

    .line 118
    :cond_0
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    const/4 v0, 0x2

    if-nez p1, :cond_1

    .line 122
    const-string v1, "PeripheralHandoverService"

    const-string v2, "Intent is null, can\'t do peripheral handover."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    .line 124
    return v0

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/PeripheralHandoverService;->doPeripheralHandover(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 128
    return v2

    .line 130
    :cond_2
    invoke-virtual {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    .line 131
    return v0

    .line 119
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method replyToClient(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .line 293
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mClient:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 294
    return-void

    .line 297
    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 298
    .local v0, "msgId":I
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 299
    .local v1, "msg":Landroid/os/Message;
    iget-boolean v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 301
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mClient:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    goto :goto_0

    .line 302
    :catch_0
    move-exception v2

    .line 305
    :goto_0
    return-void
.end method

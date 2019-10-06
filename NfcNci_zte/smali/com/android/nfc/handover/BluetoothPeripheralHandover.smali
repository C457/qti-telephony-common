.class public Lcom/android/nfc/handover/BluetoothPeripheralHandover;
.super Ljava/lang/Object;
.source "BluetoothPeripheralHandover.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;
    }
.end annotation


# static fields
.field static final ACTION_ALLOW_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.ALLOW_CONNECT"

.field static final ACTION_CONNECT:I = 0x2

.field static final ACTION_DENY_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.DENY_CONNECT"

.field static final ACTION_DISCONNECT:I = 0x1

.field static final ACTION_INIT:I = 0x0

.field static final ACTION_TIMEOUT_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.TIMEOUT_CONNECT"

.field static final DBG:Z = false

.field static final MAX_RETRY_COUNT:I = 0x3

.field static final MSG_NEXT_STEP:I = 0x2

.field static final MSG_RETRY:I = 0x3

.field static final MSG_TIMEOUT:I = 0x1

.field static final RESULT_CONNECTED:I = 0x1

.field static final RESULT_DISCONNECTED:I = 0x2

.field static final RESULT_PENDING:I = 0x0

.field static final RETRY_CONNECT_WAIT_TIME_MS:I = 0x1388

.field static final RETRY_PAIRING_WAIT_TIME_MS:I = 0x7d0

.field static final STATE_BONDING:I = 0x4

.field static final STATE_COMPLETE:I = 0x7

.field static final STATE_CONNECTING:I = 0x5

.field static final STATE_DISCONNECTING:I = 0x6

.field static final STATE_INIT:I = 0x0

.field static final STATE_INIT_COMPLETE:I = 0x2

.field static final STATE_WAITING_FOR_BOND_CONFIRMATION:I = 0x3

.field static final STATE_WAITING_FOR_PROXIES:I = 0x1

.field static final TAG:Ljava/lang/String; = "BluetoothPeripheralHandover"

.field static final TIMEOUT_MS:I = 0x4e20


# instance fields
.field mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field mA2dpResult:I

.field mAction:I

.field final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

.field final mContext:Landroid/content/Context;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field mHeadset:Landroid/bluetooth/BluetoothHeadset;

.field mHfpResult:I

.field mHidResult:I

.field mInput:Landroid/bluetooth/BluetoothHidHost;

.field mIsA2dpAvailable:Z

.field mIsHeadsetAvailable:Z

.field final mLock:Ljava/lang/Object;

.field final mName:Ljava/lang/String;

.field mOobData:Landroid/bluetooth/OobData;

.field final mProvisioning:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mRetryCount:I

.field mState:I

.field final mTransport:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILandroid/bluetooth/OobData;[Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "transport"    # I
    .param p5, "oobData"    # Landroid/bluetooth/OobData;
    .param p6, "uuids"    # [Landroid/os/ParcelUuid;
    .param p7, "btClass"    # Landroid/bluetooth/BluetoothClass;
    .param p8, "callback"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    .line 600
    new-instance v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;-><init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    .line 644
    new-instance v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;-><init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    invoke-static {}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->checkMainThread()V

    .line 124
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 126
    iput-object p3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    .line 127
    iput p4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 128
    iput-object p5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mOobData:Landroid/bluetooth/OobData;

    .line 129
    iput-object p8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .line 130
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 132
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mProvisioning:Z

    .line 136
    invoke-virtual {p0, p6, p7}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->hasHeadsetCapability([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsHeadsetAvailable:Z

    .line 137
    invoke-virtual {p0, p6, p7}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->hasA2dpCapability([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsA2dpAvailable:Z

    .line 141
    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsHeadsetAvailable:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsA2dpAvailable:Z

    if-nez v1, :cond_1

    .line 142
    iput-boolean v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsHeadsetAvailable:Z

    .line 143
    iput-boolean v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsA2dpAvailable:Z

    .line 146
    :cond_1
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/handover/BluetoothPeripheralHandover;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static checkMainThread()V
    .locals 2

    .line 652
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 655
    return-void

    .line 653
    :cond_0
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "must be called on main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getToastString(I)Ljava/lang/String;
    .locals 4
    .param p1, "resid"    # I

    .line 315
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const v2, 0x7f06000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method complete(Z)V
    .locals 5
    .param p1, "connected"    # Z

    .line 524
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 525
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 526
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 529
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v2, :cond_0

    .line 530
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 532
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_1

    .line 533
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothHidHost;

    if-eqz v1, :cond_2

    .line 537
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 540
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 541
    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 542
    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothHidHost;

    .line 543
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    invoke-interface {v0, p1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;->onBluetoothPeripheralHandoverComplete(Z)V

    .line 545
    return-void

    .line 543
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getProfileProxys()Z
    .locals 5

    .line 320
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-virtual {v0, v2, p0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    return v3

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, p0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    return v3

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 328
    return v3

    .line 331
    :cond_2
    return v1
.end method

.method handleIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 455
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 458
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 460
    :cond_0
    const-string v2, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 462
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 463
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto/16 :goto_3

    .line 464
    :cond_1
    const-string v2, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 465
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_3

    .line 466
    :cond_2
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x3

    const/high16 v6, -0x80000000

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_6

    .line 468
    const-string v2, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 470
    .local v2, "bond":I
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 471
    iput v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    .line 472
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_0

    .line 473
    :cond_3
    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    .line 474
    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-ge v3, v5, :cond_4

    .line 475
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->sendRetryMessage(I)V

    goto :goto_0

    .line 477
    :cond_4
    const v3, 0x7f060016

    invoke-direct {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 481
    .end local v2    # "bond":I
    :cond_5
    :goto_0
    goto/16 :goto_3

    :cond_6
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v4, 0x1388

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x2

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v2, v8, :cond_7

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v2, v7, :cond_b

    .line 483
    :cond_7
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 484
    .local v2, "state":I
    if-ne v2, v9, :cond_8

    .line 485
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 486
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_1

    .line 487
    :cond_8
    if-nez v2, :cond_a

    .line 488
    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    if-ne v3, v9, :cond_9

    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-ge v3, v5, :cond_9

    .line 489
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->sendRetryMessage(I)V

    goto :goto_1

    .line 491
    :cond_9
    iput v9, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 492
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    .line 495
    .end local v2    # "state":I
    :cond_a
    :goto_1
    goto :goto_3

    :cond_b
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v2, v8, :cond_c

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v2, v7, :cond_10

    .line 497
    :cond_c
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 498
    .restart local v2    # "state":I
    if-ne v2, v9, :cond_d

    .line 499
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 500
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_2

    .line 501
    :cond_d
    if-nez v2, :cond_f

    .line 502
    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    if-ne v3, v9, :cond_e

    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-ge v3, v5, :cond_e

    .line 503
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->sendRetryMessage(I)V

    goto :goto_2

    .line 505
    :cond_e
    iput v9, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 506
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    .line 509
    .end local v2    # "state":I
    :cond_f
    :goto_2
    goto :goto_3

    :cond_10
    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eq v2, v8, :cond_11

    iget v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v2, v7, :cond_13

    .line 511
    :cond_11
    const-string v2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 512
    .restart local v2    # "state":I
    if-ne v2, v9, :cond_12

    .line 513
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 514
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_3

    .line 515
    :cond_12
    if-nez v2, :cond_13

    .line 516
    iput v9, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 517
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    .line 520
    .end local v2    # "state":I
    :cond_13
    :goto_3
    return-void
.end method

.method hasA2dpCapability([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 6
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .line 573
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 574
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 575
    .local v4, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAudioSink(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isAdvAudioDist(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 574
    .end local v4    # "uuid":Landroid/os/ParcelUuid;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 576
    .restart local v4    # "uuid":Landroid/os/ParcelUuid;
    :cond_1
    :goto_1
    return v1

    .line 580
    .end local v4    # "uuid":Landroid/os/ParcelUuid;
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 581
    return v1

    .line 583
    :cond_3
    return v0
.end method

.method hasHeadsetCapability([Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;)Z
    .locals 6
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;
    .param p2, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .line 587
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 588
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p1, v3

    .line 589
    .local v4, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isHandsfree(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->isHeadset(Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 588
    .end local v4    # "uuid":Landroid/os/ParcelUuid;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 590
    .restart local v4    # "uuid":Landroid/os/ParcelUuid;
    :cond_1
    :goto_1
    return v0

    .line 594
    .end local v4    # "uuid":Landroid/os/ParcelUuid;
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v1}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 595
    return v0

    .line 597
    :cond_3
    return v1
.end method

.method public hasStarted()Z
    .locals 1

    .line 150
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method nextStep()V
    .locals 2

    .line 190
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepInit()V

    goto :goto_0

    .line 192
    :cond_0
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepDisconnect()V

    .line 197
    :goto_0
    return-void
.end method

.method nextStepConnect()V
    .locals 8

    .line 335
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/16 v1, 0xc

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 337
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->requestPairConfirmation()V

    .line 339
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 340
    goto/16 :goto_4

    .line 343
    :cond_0
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v0, v4, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v6, 0xa

    if-eq v0, v6, :cond_1

    .line 345
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 346
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->requestPairConfirmation()V

    .line 347
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 348
    goto/16 :goto_4

    .line 353
    :cond_1
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 354
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->startBonding()V

    .line 355
    goto/16 :goto_4

    .line 361
    :cond_2
    :pswitch_2
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 362
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    const v6, 0x7f060010

    if-ne v1, v4, :cond_4

    .line 364
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothHidHost;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHidHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 366
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 367
    invoke-direct {p0, v6}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 368
    monitor-exit v0

    goto/16 :goto_4

    .line 370
    :cond_3
    iput v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    goto :goto_2

    .line 373
    :cond_4
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v7, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v4, :cond_6

    .line 375
    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsHeadsetAvailable:Z

    if-eqz v1, :cond_5

    .line 376
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 377
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v7, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 379
    :cond_5
    iput v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    goto :goto_0

    .line 382
    :cond_6
    iput v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 384
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v7, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eq v1, v4, :cond_8

    .line 385
    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsA2dpAvailable:Z

    if-eqz v1, :cond_7

    .line 386
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 387
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v7, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 389
    :cond_7
    iput v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    goto :goto_1

    .line 392
    :cond_8
    iput v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 394
    :goto_1
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v1, :cond_b

    .line 395
    :cond_9
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-nez v1, :cond_a

    .line 396
    invoke-direct {p0, v6}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 398
    :cond_a
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-ge v1, v2, :cond_b

    .line 399
    const/16 v1, 0x1388

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->sendRetryMessage(I)V

    .line 400
    monitor-exit v0

    goto/16 :goto_4

    .line 404
    :cond_b
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    :pswitch_3
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    const v1, 0x7f060012

    const v2, 0x7f060011

    if-ne v0, v4, :cond_e

    .line 408
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-nez v0, :cond_c

    .line 409
    goto :goto_4

    .line 410
    :cond_c
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-ne v0, v5, :cond_d

    .line 411
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 413
    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_4

    .line 415
    :cond_d
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_4

    .line 419
    :cond_e
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v0, :cond_f

    .line 421
    goto :goto_4

    .line 423
    :cond_f
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eq v0, v5, :cond_11

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-ne v0, v5, :cond_10

    goto :goto_3

    .line 430
    :cond_10
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_4

    .line 425
    :cond_11
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 426
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-ne v0, v5, :cond_12

    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->startTheMusic()V

    .line 427
    :cond_12
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 428
    invoke-virtual {p0, v5}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_4

    .line 404
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 436
    :cond_13
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method nextStepDisconnect()V
    .locals 6

    .line 254
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-eq v0, v1, :cond_6

    goto/16 :goto_4

    .line 256
    :cond_0
    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 257
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_0
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    const v4, 0x7f060013

    if-ne v1, v3, :cond_2

    .line 259
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothHidHost;

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothHidHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 262
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothHidHost;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHidHost;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 263
    invoke-direct {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 264
    monitor-exit v0

    goto/16 :goto_4

    .line 266
    :cond_1
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    goto :goto_2

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 271
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 272
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 274
    :cond_3
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 276
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_4

    .line 278
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 279
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 281
    :cond_4
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 283
    :goto_1
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v1, :cond_5

    goto :goto_3

    .line 288
    :cond_5
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_6
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    const v1, 0x7f060014

    if-ne v0, v3, :cond_7

    .line 292
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-ne v0, v3, :cond_b

    .line 293
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 294
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_4

    .line 299
    :cond_7
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v0, :cond_8

    .line 301
    goto :goto_4

    .line 303
    :cond_8
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-ne v0, v3, :cond_9

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-ne v0, v3, :cond_9

    .line 304
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 306
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_4

    .line 284
    :cond_a
    :goto_3
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 285
    monitor-exit v0

    .line 312
    :cond_b
    :goto_4
    return-void

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method nextStepInit()V
    .locals 6

    .line 203
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 205
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothHidHost;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 214
    :cond_0
    :pswitch_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 216
    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 217
    :try_start_0
    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v4, v0, :cond_2

    .line 218
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHidHost;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DISCONNECT addr="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    goto/16 :goto_1

    .line 222
    :cond_1
    const-string v1, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_CONNECT addr="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    goto/16 :goto_1

    .line 226
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 227
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 232
    :cond_3
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_4

    .line 233
    iput-boolean v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsHeadsetAvailable:Z

    .line 235
    :cond_4
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_5

    .line 236
    iput-boolean v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsA2dpAvailable:Z

    .line 238
    :cond_5
    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsHeadsetAvailable:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsA2dpAvailable:Z

    if-nez v1, :cond_6

    .line 239
    const-string v0, "BluetoothPeripheralHandover"

    const-string v1, "Both Headset and A2DP profiles are unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 241
    monitor-exit v3

    goto :goto_3

    .line 243
    :cond_6
    const-string v1, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_CONNECT addr="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    goto :goto_1

    .line 228
    :cond_7
    :goto_0
    const-string v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DISCONNECT addr="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " name="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 247
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_3

    .line 247
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 206
    :cond_8
    :goto_2
    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 207
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getProfileProxys()Z

    move-result v0

    if-nez v0, :cond_9

    .line 208
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 251
    :cond_9
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 659
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    const/4 v1, 0x4

    const/4 v2, 0x2

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 668
    :pswitch_0
    :try_start_0
    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 669
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 670
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 662
    :pswitch_1
    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadset;

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 663
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    .line 664
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 674
    :cond_0
    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHidHost;

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothHidHost;

    .line 675
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothHidHost;

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 680
    :cond_1
    :goto_0
    monitor-exit v0

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    .line 686
    return-void
.end method

.method requestPairConfirmation()V
    .locals 3

    .line 564
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 565
    .local v0, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 566
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 567
    const-string v1, "android.bluetooth.device.extra.NAME"

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 570
    return-void
.end method

.method sendRetryMessage(I)V
    .locals 4
    .param p1, "waitTime"    # I

    .line 689
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 692
    :cond_0
    return-void
.end method

.method public start()Z
    .locals 7

    .line 158
    invoke-static {}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->checkMainThread()V

    .line 159
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mProvisioning:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v2, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v2, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v5, 0x4e20

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 178
    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 179
    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    .line 181
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    .line 183
    return v4

    .line 161
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return v1
.end method

.method startBonding()V
    .locals 5

    .line 439
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 440
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-nez v0, :cond_0

    .line 441
    const v0, 0x7f060015

    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mOobData:Landroid/bluetooth/OobData;

    const/4 v1, 0x0

    const v2, 0x7f060016

    if-eqz v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mOobData:Landroid/bluetooth/OobData;

    invoke-virtual {v0, v3, v4}, Landroid/bluetooth/BluetoothDevice;->createBondOutOfBand(ILandroid/bluetooth/OobData;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 445
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_0

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 449
    invoke-direct {p0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 452
    :cond_2
    :goto_0
    return-void
.end method

.method startTheMusic()V
    .locals 6

    .line 552
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 553
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_0

    .line 554
    new-instance v1, Landroid/view/KeyEvent;

    const/16 v2, 0x7e

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 555
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 556
    new-instance v4, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Landroid/view/KeyEvent;-><init>(II)V

    move-object v1, v4

    .line 557
    invoke-virtual {v0, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 558
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    goto :goto_0

    .line 559
    :cond_0
    const-string v1, "BluetoothPeripheralHandover"

    const-string v2, "Unable to send media key event"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_0
    return-void
.end method

.method toast(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 548
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 549
    return-void
.end method

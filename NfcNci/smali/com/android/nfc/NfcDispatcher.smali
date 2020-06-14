.class Lcom/android/nfc/NfcDispatcher;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDispatcher$MessageHandler;,
        Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final DISPATCH_FAIL:I = 0x2

.field static final DISPATCH_SUCCESS:I = 0x1

.field static final DISPATCH_UNLOCK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NfcDispatcher"


# instance fields
.field private mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceSupportsBluetooth:Z

.field private final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mMessageHandler:Landroid/os/Handler;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private mOverrideFilters:[Landroid/content/IntentFilter;

.field private mOverrideIntent:Landroid/app/PendingIntent;

.field private mOverrideTechLists:[[Ljava/lang/String;

.field private final mProvisioningMimes:[Ljava/lang/String;

.field private mProvisioningOnly:Z

.field private final mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field private final mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "provisionOnly"    # Z

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/android/nfc/NfcDispatcher$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/NfcDispatcher$MessageHandler;-><init>(Lcom/android/nfc/NfcDispatcher;Lcom/android/nfc/NfcDispatcher$1;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mMessageHandler:Landroid/os/Handler;

    .line 95
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mMessageHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mMessenger:Landroid/os/Messenger;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 782
    new-instance v0, Lcom/android/nfc/NfcDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcDispatcher$1;-><init>(Lcom/android/nfc/NfcDispatcher;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    .line 109
    new-instance v0, Lcom/android/nfc/RegisteredComponentCache;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.nfc.action.TECH_DISCOVERED"

    const-string v3, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 112
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 113
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    invoke-direct {v0, p1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 114
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 115
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iput-boolean p3, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 119
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, "provisionMimes":[Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 124
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f010001

    .line 125
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 128
    goto :goto_1

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .line 130
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    .line 132
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 134
    return-void

    .line 119
    .end local v0    # "provisionMimes":[Ljava/lang/String;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcDispatcher;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcDispatcher;

    .line 77
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .locals 3
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .line 694
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 695
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 698
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;
    .locals 12
    .param p1, "nfcBarcode"    # Landroid/nfc/tech/NfcBarcode;

    .line 399
    const/4 v0, 0x1

    .line 400
    .local v0, "URI_PREFIX_HTTP_WWW":B
    const/4 v1, 0x2

    .line 401
    .local v1, "URI_PREFIX_HTTPS_WWW":B
    const/4 v2, 0x3

    .line 402
    .local v2, "URI_PREFIX_HTTP":B
    const/4 v3, 0x4

    .line 404
    .local v3, "URI_PREFIX_HTTPS":B
    const/4 v4, 0x0

    .line 405
    .local v4, "message":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/nfc/tech/NfcBarcode;->getTag()Landroid/nfc/Tag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/nfc/Tag;->getId()[B

    move-result-object v5

    .line 407
    .local v5, "tagId":[B
    array-length v6, v5

    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    const/4 v6, 0x1

    aget-byte v8, v5, v6

    const/4 v9, 0x2

    if-eq v8, v6, :cond_0

    aget-byte v8, v5, v6

    if-eq v8, v9, :cond_0

    aget-byte v8, v5, v6

    const/4 v10, 0x3

    if-eq v8, v10, :cond_0

    aget-byte v8, v5, v6

    if-ne v8, v7, :cond_3

    .line 414
    :cond_0
    const/4 v7, 0x2

    .line 415
    .local v7, "end":I
    :goto_0
    array-length v8, v5

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 416
    aget-byte v8, v5, v7

    const/4 v10, -0x2

    if-ne v8, v10, :cond_1

    .line 417
    goto :goto_1

    .line 415
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 420
    :cond_2
    :goto_1
    add-int/lit8 v8, v7, -0x1

    new-array v8, v8, [B

    .line 421
    .local v8, "payload":[B
    array-length v9, v8

    const/4 v10, 0x0

    invoke-static {v5, v6, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    new-instance v9, Landroid/nfc/NdefRecord;

    sget-object v11, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-direct {v9, v6, v11, v5, v8}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    move-object v6, v9

    .line 424
    .local v6, "uriRecord":Landroid/nfc/NdefRecord;
    new-instance v9, Landroid/nfc/NdefMessage;

    new-array v10, v10, [Landroid/nfc/NdefRecord;

    invoke-direct {v9, v6, v10}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    move-object v4, v9

    .line 426
    .end local v6    # "uriRecord":Landroid/nfc/NdefRecord;
    .end local v7    # "end":I
    .end local v8    # "payload":[B
    :cond_3
    return-object v4
.end method

.method static extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;
    .locals 6
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 569
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 570
    .local v4, "record":Landroid/nfc/NdefRecord;
    invoke-static {v4}, Lcom/android/nfc/NfcDispatcher;->checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v5

    .line 571
    .local v5, "pkg":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 572
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    .end local v4    # "record":Landroid/nfc/NdefRecord;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 575
    :cond_1
    return-object v0
.end method

.method static getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 706
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 708
    return-object v0
.end method

.method private handleNfcUnlock(Landroid/nfc/Tag;)Z
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 363
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock(Landroid/nfc/Tag;)Z

    move-result v0

    return v0
.end method

.method static isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, "enabled":Z
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .local v1, "compname":Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 720
    const/4 v0, 0x1

    .line 724
    :cond_0
    goto :goto_0

    .line 722
    :catch_0
    move-exception v2

    .line 723
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 725
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v0, :cond_1

    .line 726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component not enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcDispatcher"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_1
    return v0
.end method

.method static synthetic lambda$showWebLinkConfirmation$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 749
    return-void
.end method

.method static synthetic lambda$showWebLinkConfirmation$1(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 751
    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    .line 752
    return-void
.end method


# virtual methods
.method public declared-synchronized disableProvisioningMode()V
    .locals 1

    monitor-enter p0

    .line 151
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 150
    .end local p0    # "this":Lcom/android/nfc/NfcDispatcher;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchTag(Landroid/nfc/Tag;)I
    .locals 18
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 270
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v1, 0x0

    .line 271
    .local v1, "message":Landroid/nfc/NdefMessage;
    invoke-static/range {p1 .. p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v10

    .line 273
    .local v10, "ndef":Landroid/nfc/tech/Ndef;
    monitor-enter p0

    .line 274
    :try_start_0
    iget-object v6, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 275
    .local v6, "overrideFilters":[Landroid/content/IntentFilter;
    iget-object v5, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 276
    .local v5, "overrideIntent":Landroid/app/PendingIntent;
    iget-object v7, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 277
    .local v7, "overrideTechLists":[[Ljava/lang/String;
    iget-boolean v0, v8, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 278
    .local v0, "provisioningOnly":Z
    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    move-object v11, v2

    .line 279
    .local v11, "provisioningMimes":[Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, "screenUnlocked":Z
    const/4 v12, 0x4

    const/4 v13, 0x2

    if-nez v0, :cond_1

    iget-object v3, v8, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 283
    invoke-virtual {v3}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v3

    if-ne v3, v12, :cond_1

    .line 284
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/NfcDispatcher;->handleNfcUnlock(Landroid/nfc/Tag;)Z

    move-result v2

    .line 285
    if-nez v2, :cond_0

    .line 286
    return v13

    .line 285
    :cond_0
    move v14, v2

    goto :goto_0

    .line 289
    :cond_1
    move v14, v2

    .end local v2    # "screenUnlocked":Z
    .local v14, "screenUnlocked":Z
    :goto_0
    const/4 v15, 0x1

    if-eqz v10, :cond_2

    .line 290
    invoke-virtual {v10}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    .line 292
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/nfc/tech/NfcBarcode;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcBarcode;

    move-result-object v2

    .line 293
    .local v2, "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/nfc/tech/NfcBarcode;->getType()I

    move-result v3

    if-ne v3, v15, :cond_3

    .line 294
    invoke-direct {v8, v2}, Lcom/android/nfc/NfcDispatcher;->decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    .line 300
    .end local v2    # "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    :cond_3
    move-object v4, v1

    .end local v1    # "message":Landroid/nfc/NdefMessage;
    .local v4, "message":Landroid/nfc/NdefMessage;
    :goto_1
    new-instance v1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v9, v4}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;-><init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V

    move-object v3, v1

    .line 302
    .local v3, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 304
    move-object/from16 v1, p0

    move-object v2, v3

    move-object v15, v3

    .end local v3    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .local v15, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    move-object/from16 v3, p1

    move-object/from16 v17, v4

    .end local v4    # "message":Landroid/nfc/NdefMessage;
    .local v17, "message":Landroid/nfc/NdefMessage;
    invoke-virtual/range {v1 .. v7}, Lcom/android/nfc/NfcDispatcher;->tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8a

    const/4 v3, 0x3

    if-eqz v1, :cond_5

    .line 306
    const/4 v1, 0x5

    invoke-static {v2, v1}, Landroid/util/StatsLog;->write(II)I

    .line 307
    if-eqz v14, :cond_4

    move/from16 v16, v3

    goto :goto_2

    :cond_4
    const/16 v16, 0x1

    :goto_2
    return v16

    .line 310
    :cond_5
    move-object/from16 v1, v17

    .end local v17    # "message":Landroid/nfc/NdefMessage;
    .restart local v1    # "message":Landroid/nfc/NdefMessage;
    invoke-virtual {v8, v1}, Lcom/android/nfc/NfcDispatcher;->tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 312
    invoke-static {v2, v13}, Landroid/util/StatsLog;->write(II)I

    .line 313
    if-eqz v14, :cond_6

    move/from16 v16, v3

    goto :goto_3

    :cond_6
    const/16 v16, 0x1

    :goto_3
    return v16

    .line 316
    :cond_7
    iget-object v4, v8, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lcom/android/nfc/NfcWifiProtectedSetup;->tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 318
    invoke-static {v2, v12}, Landroid/util/StatsLog;->write(II)I

    .line 319
    if-eqz v14, :cond_8

    move/from16 v16, v3

    goto :goto_4

    :cond_8
    const/16 v16, 0x1

    :goto_4
    return v16

    .line 322
    :cond_9
    if-eqz v0, :cond_c

    .line 323
    invoke-static {v2, v3}, Landroid/util/StatsLog;->write(II)I

    .line 324
    if-nez v1, :cond_a

    .line 326
    return v13

    .line 329
    :cond_a
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    const/4 v12, 0x0

    aget-object v4, v4, v12

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->toMimeType()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "ndefMimeType":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 331
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 332
    :cond_b
    const-string v2, "NfcDispatcher"

    const-string v3, "Dropping NFC intent in provisioning mode."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return v13

    .line 337
    .end local v4    # "ndefMimeType":Ljava/lang/String;
    :cond_c
    invoke-virtual {v8, v15, v1}, Lcom/android/nfc/NfcDispatcher;->tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 338
    if-eqz v14, :cond_d

    move/from16 v16, v3

    goto :goto_5

    :cond_d
    const/16 v16, 0x1

    :goto_5
    return v16

    .line 341
    :cond_e
    if-eqz v14, :cond_f

    .line 343
    return v3

    .line 347
    :cond_f
    invoke-virtual {v8, v15, v9}, Lcom/android/nfc/NfcDispatcher;->tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 348
    const/4 v3, 0x1

    return v3

    .line 351
    :cond_10
    const/4 v3, 0x1

    invoke-virtual {v15}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    .line 352
    invoke-virtual {v15}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 354
    return v3

    .line 358
    :cond_11
    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/util/StatsLog;->write(II)I

    .line 359
    return v13

    .line 279
    .end local v0    # "provisioningOnly":Z
    .end local v5    # "overrideIntent":Landroid/app/PendingIntent;
    .end local v6    # "overrideFilters":[Landroid/content/IntentFilter;
    .end local v7    # "overrideTechLists":[[Ljava/lang/String;
    .end local v11    # "provisioningMimes":[Ljava/lang/String;
    .end local v14    # "screenUnlocked":Z
    .end local v15    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 759
    monitor-enter p0

    .line 760
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideTechLists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    monitor-exit p0

    .line 764
    return-void

    .line 763
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "tagTechs"    # [Ljava/lang/String;
    .param p2, "filterTechs"    # [Ljava/lang/String;

    .line 683
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 685
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 686
    .local v3, "tech":Ljava/lang/String;
    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 687
    return v0

    .line 685
    .end local v3    # "tech":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 683
    :cond_3
    :goto_1
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 140
    return-void
.end method

.method isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "hasTechFilter"    # Z

    .line 478
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 479
    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 480
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "NfcDispatcher"

    invoke-virtual {v4, v5, p1, v1, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 481
    return v0

    .line 479
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    :cond_1
    if-nez p3, :cond_2

    .line 485
    return v0

    .line 487
    :cond_2
    return v1
.end method

.method isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "techLists"    # [[Ljava/lang/String;

    .line 491
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 492
    return v0

    .line 495
    :cond_0
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v1

    .line 496
    .local v1, "tagTechs":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 497
    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 498
    .local v4, "filterTechs":[Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 499
    const/4 v0, 0x1

    return v0

    .line 497
    .end local v4    # "filterTechs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 502
    :cond_2
    return v0
.end method

.method resumeAppSwitches()V
    .locals 1

    .line 677
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 678
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 679
    return-void
.end method

.method public declared-synchronized setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techLists"    # [[Ljava/lang/String;

    monitor-enter p0

    .line 145
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 146
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 147
    iput-object p3, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 144
    .end local p0    # "this":Lcom/android/nfc/NfcDispatcher;
    .end local p1    # "intent":Landroid/app/PendingIntent;
    .end local p2    # "filters":[Landroid/content/IntentFilter;
    .end local p3    # "techLists":[[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method showWebLinkConfirmation(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)V
    .locals 6
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    .line 732
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 733
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    .line 734
    return-void

    .line 736
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 737
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 739
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b002d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 740
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 741
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f090014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 742
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 743
    const v3, 0x7f07003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 744
    .local v3, "url":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 745
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 749
    .end local v3    # "url":Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f0b0011

    sget-object v4, Lcom/android/nfc/-$$Lambda$NfcDispatcher$IE5hy6kTVRlYKFXvWsHjAQmY8Tw;->INSTANCE:Lcom/android/nfc/-$$Lambda$NfcDispatcher$IE5hy6kTVRlYKFXvWsHjAQmY8Tw;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 750
    const v3, 0x7f0b0001

    new-instance v4, Lcom/android/nfc/-$$Lambda$NfcDispatcher$r1sTxVZBVEU7jV6UFtSDqCtzioM;

    invoke-direct {v4, p1}, Lcom/android/nfc/-$$Lambda$NfcDispatcher$r1sTxVZBVEU7jV6UFtSDqCtzioM;-><init>(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 753
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 754
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 755
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 756
    return-void
.end method

.method tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z
    .locals 9
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "message"    # Landroid/nfc/NdefMessage;

    .line 506
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 507
    return v0

    .line 509
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 512
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    return v0

    .line 515
    :cond_1
    invoke-static {p2}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v2

    .line 516
    .local v2, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 517
    .local v4, "pkg":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 520
    return v5

    .line 522
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 525
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 526
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 529
    .local v3, "firstPackage":Ljava/lang/String;
    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-direct {v4, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 530
    .local v4, "currentUser":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v7, "android"

    invoke-virtual {v6, v7, v0, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v6

    .line 531
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 535
    .local v4, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 536
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 537
    .local v6, "appLaunchIntent":Landroid/content/Intent;
    if-eqz v6, :cond_4

    invoke-virtual {p1, v6}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 539
    return v5

    .line 542
    :cond_4
    invoke-static {v3}, Lcom/android/nfc/NfcDispatcher;->getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 543
    .local v7, "marketIntent":Landroid/content/Intent;
    if-eqz v7, :cond_5

    invoke-virtual {p1, v7}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 545
    return v5

    .line 532
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "appLaunchIntent":Landroid/content/Intent;
    .end local v7    # "marketIntent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 533
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NfcDispatcher"

    const-string v6, "Could not create user package context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return v0

    .line 550
    .end local v3    # "firstPackage":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    iget-object v3, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->isWebIntent()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 554
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcDispatcher;->showWebLinkConfirmation(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)V

    .line 555
    const/16 v0, 0x8a

    invoke-static {v0, v5}, Landroid/util/StatsLog;->write(II)I

    .line 556
    return v5

    .line 559
    :cond_6
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 561
    return v5

    .line 564
    :cond_7
    return v0
.end method

.method tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z
    .locals 5
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;
    .param p4, "overrideIntent"    # Landroid/app/PendingIntent;
    .param p5, "overrideFilters"    # [Landroid/content/IntentFilter;
    .param p6, "overrideTechLists"    # [[Ljava/lang/String;

    .line 431
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 432
    return v0

    .line 437
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 438
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v3

    .line 439
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    if-eqz p6, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v0

    .line 440
    :goto_0
    invoke-virtual {p0, v3, p5, v4}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 442
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v4, v1, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    return v2

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 452
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    move-result-object v3

    .line 453
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2, p6}, Lcom/android/nfc/NfcDispatcher;->isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 455
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v4, v1, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 457
    return v2

    .line 458
    :catch_1
    move-exception v1

    .line 459
    .restart local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 464
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_3
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    move-result-object v3

    .line 465
    if-eqz p6, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_1
    invoke-virtual {p0, v3, p5, v4}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 467
    :try_start_2
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v4, v1, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 469
    return v2

    .line 470
    :catch_2
    move-exception v1

    .line 471
    .restart local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 474
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_5
    return v0
.end method

.method public tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z
    .locals 5
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .line 633
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-boolean v1, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v1

    .line 638
    .local v1, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v1, :cond_6

    iget-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 642
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 639
    const-string v4, "no_config_bluetooth"

    invoke-virtual {v2, v4, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 643
    return v0

    .line 646
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 647
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    const-string v3, "device"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 648
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    const-string v3, "headsetname"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    iget v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    const-string v3, "transporttype"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    if-eqz v2, :cond_3

    .line 651
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    const-string v3, "oobdata"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 653
    :cond_3
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    if-eqz v2, :cond_4

    .line 654
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    const-string v3, "uuids"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 656
    :cond_4
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->btClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v2, :cond_5

    .line 657
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->btClass:Landroid/bluetooth/BluetoothClass;

    const-string v3, "class"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 659
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string v3, "bt_enabled"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 660
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mMessenger:Landroid/os/Messenger;

    const-string v3, "client"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 661
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 663
    const/4 v2, 0x1

    return v2

    .line 638
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_0
    return v0

    .line 633
    .end local v1    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_7
    :goto_1
    return v0
.end method

.method tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .locals 10
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .line 579
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 581
    invoke-virtual {p2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "tagTechs":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v2}, Lcom/android/nfc/RegisteredComponentCache;->getComponents()Ljava/util/ArrayList;

    move-result-object v2

    .line 590
    .local v2, "registered":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 591
    .local v4, "currentUser":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v6, "android"

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    .line 592
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 596
    .local v4, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 598
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 600
    .local v6, "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 601
    invoke-static {v4, v7}, Lcom/android/nfc/NfcDispatcher;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 603
    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 604
    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    .end local v6    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :cond_0
    goto :goto_0

    .line 609
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 611
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 612
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 615
    return v6

    .line 617
    :cond_2
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    .line 618
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 620
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    .local v5, "intent":Landroid/content/Intent;
    iget-object v7, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v8, "android.intent.extra.INTENT"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 622
    const-string v7, "rlist"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 624
    invoke-virtual {p1, v5}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 626
    return v6

    .line 618
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    nop

    .line 629
    :cond_5
    return v3

    .line 593
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .line 594
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NfcDispatcher"

    const-string v6, "Could not create user package context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return v3
.end method

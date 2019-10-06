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

.field private final mLiveCaseMimes:[Ljava/lang/String;

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
.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;ZZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "provisionOnly"    # Z
    .param p4, "isLiveCaseEnabled"    # Z

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/nfc/NfcDispatcher$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/NfcDispatcher$MessageHandler;-><init>(Lcom/android/nfc/NfcDispatcher;Lcom/android/nfc/NfcDispatcher$1;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mMessageHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mMessageHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mMessenger:Landroid/os/Messenger;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 807
    new-instance v0, Lcom/android/nfc/NfcDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcDispatcher$1;-><init>(Lcom/android/nfc/NfcDispatcher;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 107
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    .line 108
    new-instance v0, Lcom/android/nfc/RegisteredComponentCache;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v2, "android.nfc.action.TECH_DISCOVERED"

    const-string v3, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 111
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 112
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    invoke-direct {v0, p1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 113
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 114
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iput-boolean p3, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "provisionMimes":[Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 123
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080002

    .line 124
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 127
    goto :goto_1

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .line 129
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "liveCaseMimes":[Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 135
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f080000

    .line 136
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 139
    goto :goto_2

    .line 137
    :catch_1
    move-exception v2

    .line 138
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .line 141
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :goto_2
    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mLiveCaseMimes:[Ljava/lang/String;

    .line 143
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void

    .line 118
    .end local v0    # "provisionMimes":[Ljava/lang/String;
    .end local v1    # "liveCaseMimes":[Ljava/lang/String;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcDispatcher;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/NfcDispatcher;

    .line 74
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .locals 3
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .line 719
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 720
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 723
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;
    .locals 12
    .param p1, "nfcBarcode"    # Landroid/nfc/tech/NfcBarcode;

    .line 420
    const/4 v0, 0x1

    .line 421
    .local v0, "URI_PREFIX_HTTP_WWW":B
    const/4 v1, 0x2

    .line 422
    .local v1, "URI_PREFIX_HTTPS_WWW":B
    const/4 v2, 0x3

    .line 423
    .local v2, "URI_PREFIX_HTTP":B
    const/4 v3, 0x4

    .line 425
    .local v3, "URI_PREFIX_HTTPS":B
    const/4 v4, 0x0

    .line 426
    .local v4, "message":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/nfc/tech/NfcBarcode;->getTag()Landroid/nfc/Tag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/nfc/Tag;->getId()[B

    move-result-object v5

    .line 428
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

    .line 435
    :cond_0
    move v7, v9

    .line 436
    .local v7, "end":I
    :goto_0
    array-length v8, v5

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 437
    aget-byte v8, v5, v7

    const/4 v10, -0x2

    if-ne v8, v10, :cond_1

    .line 438
    goto :goto_1

    .line 436
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 441
    :cond_2
    :goto_1
    add-int/lit8 v8, v7, -0x1

    new-array v8, v8, [B

    .line 442
    .local v8, "payload":[B
    array-length v9, v8

    const/4 v10, 0x0

    invoke-static {v5, v6, v8, v10, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 443
    new-instance v9, Landroid/nfc/NdefRecord;

    sget-object v11, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-direct {v9, v6, v11, v5, v8}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    move-object v6, v9

    .line 445
    .local v6, "uriRecord":Landroid/nfc/NdefRecord;
    new-instance v9, Landroid/nfc/NdefMessage;

    new-array v10, v10, [Landroid/nfc/NdefRecord;

    invoke-direct {v9, v6, v10}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    move-object v4, v9

    .line 447
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

    .line 594
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 595
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 596
    .local v4, "record":Landroid/nfc/NdefRecord;
    invoke-static {v4}, Lcom/android/nfc/NfcDispatcher;->checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v5

    .line 597
    .local v5, "pkg":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 598
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v4    # "record":Landroid/nfc/NdefRecord;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 601
    :cond_1
    return-object v0
.end method

.method static getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 731
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 732
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

    .line 733
    return-object v0
.end method

.method private handleNfcUnlock(Landroid/nfc/Tag;)Z
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 384
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock(Landroid/nfc/Tag;)Z

    move-result v0

    return v0
.end method

.method static isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "enabled":Z
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    .local v1, "compname":Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 745
    const/4 v0, 0x1

    .line 749
    :cond_0
    goto :goto_0

    .line 747
    :catch_0
    move-exception v2

    .line 748
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 750
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v0, :cond_1

    .line 751
    const-string v2, "NfcDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component not enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_1
    return v0
.end method

.method static synthetic lambda$showWebLinkConfirmation$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 774
    return-void
.end method

.method static synthetic lambda$showWebLinkConfirmation$1(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 776
    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    .line 777
    return-void
.end method


# virtual methods
.method public declared-synchronized disableProvisioningMode()V
    .locals 1

    monitor-enter p0

    .line 162
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/NfcDispatcher;
    throw v0
.end method

.method public dispatchTag(Landroid/nfc/Tag;)I
    .locals 20
    .param p1, "tag"    # Landroid/nfc/Tag;

    move-object/from16 v8, p0

    .line 281
    move-object/from16 v9, p1

    const/4 v1, 0x0

    .line 284
    .local v1, "message":Landroid/nfc/NdefMessage;
    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v6, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 286
    .local v6, "overrideFilters":[Landroid/content/IntentFilter;
    iget-object v5, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 287
    .local v5, "overrideIntent":Landroid/app/PendingIntent;
    iget-object v7, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 288
    .local v7, "overrideTechLists":[[Ljava/lang/String;
    iget-boolean v0, v8, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 289
    .local v0, "provisioningOnly":Z
    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    move-object v10, v2

    .line 290
    .local v10, "provisioningMimes":[Ljava/lang/String;
    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mLiveCaseMimes:[Ljava/lang/String;

    move-object v11, v2

    .line 291
    .local v11, "liveCaseMimes":[Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    const/4 v2, 0x0

    .line 294
    .local v2, "screenUnlocked":Z
    const/4 v3, 0x0

    .line 295
    .local v3, "liveCaseDetected":Z
    invoke-static/range {p1 .. p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v12

    .line 296
    .local v12, "ndef":Landroid/nfc/tech/Ndef;
    const/4 v13, 0x0

    const/4 v14, 0x2

    if-nez v0, :cond_1

    iget-object v4, v8, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 297
    invoke-virtual {v4}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v4

    const/4 v15, 0x4

    if-ne v4, v15, :cond_1

    .line 298
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/NfcDispatcher;->handleNfcUnlock(Landroid/nfc/Tag;)Z

    move-result v2

    .line 300
    if-eqz v12, :cond_0

    .line 301
    invoke-virtual {v12}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 302
    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    aget-object v4, v4, v13

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->toMimeType()Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "ndefMimeType":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 305
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 306
    const/4 v3, 0x1

    .line 311
    .end local v4    # "ndefMimeType":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    if-nez v3, :cond_1

    .line 312
    return v14

    .line 315
    :cond_1
    move v15, v2

    move/from16 v16, v3

    .end local v2    # "screenUnlocked":Z
    .end local v3    # "liveCaseDetected":Z
    .local v15, "screenUnlocked":Z
    .local v16, "liveCaseDetected":Z
    const/4 v4, 0x1

    if-eqz v12, :cond_3

    .line 316
    invoke-virtual {v12}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 326
    .end local v1    # "message":Landroid/nfc/NdefMessage;
    .local v3, "message":Landroid/nfc/NdefMessage;
    :cond_2
    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 318
    .end local v3    # "message":Landroid/nfc/NdefMessage;
    .restart local v1    # "message":Landroid/nfc/NdefMessage;
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/nfc/tech/NfcBarcode;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcBarcode;

    move-result-object v2

    .line 319
    .local v2, "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/nfc/tech/NfcBarcode;->getType()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 320
    invoke-direct {v8, v2}, Lcom/android/nfc/NfcDispatcher;->decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;

    move-result-object v1

    .end local v2    # "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    goto :goto_0

    .line 326
    .end local v1    # "message":Landroid/nfc/NdefMessage;
    .restart local v3    # "message":Landroid/nfc/NdefMessage;
    :goto_1
    new-instance v1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v9, v3}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;-><init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V

    move-object v2, v1

    .line 328
    .local v2, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 330
    move-object v1, v8

    move-object/from16 v17, v2

    .end local v2    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .local v17, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    move-object/from16 v18, v3

    move-object v3, v9

    .end local v3    # "message":Landroid/nfc/NdefMessage;
    .local v18, "message":Landroid/nfc/NdefMessage;
    move/from16 v19, v4

    move-object/from16 v4, v18

    invoke-virtual/range {v1 .. v7}, Lcom/android/nfc/NfcDispatcher;->tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_5

    .line 332
    if-eqz v15, :cond_4

    move/from16 v19, v4

    nop

    :cond_4
    return v19

    .line 335
    :cond_5
    move-object/from16 v1, v18

    invoke-virtual {v8, v1}, Lcom/android/nfc/NfcDispatcher;->tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z

    move-result v2

    .end local v18    # "message":Landroid/nfc/NdefMessage;
    .restart local v1    # "message":Landroid/nfc/NdefMessage;
    if-eqz v2, :cond_7

    .line 337
    if-eqz v15, :cond_6

    move/from16 v19, v4

    nop

    :cond_6
    return v19

    .line 340
    :cond_7
    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v12, v2}, Lcom/android/nfc/NfcWifiProtectedSetup;->tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 342
    if-eqz v15, :cond_8

    move/from16 v19, v4

    nop

    :cond_8
    return v19

    .line 345
    :cond_9
    if-eqz v0, :cond_c

    .line 346
    if-nez v1, :cond_a

    .line 348
    return v14

    .line 351
    :cond_a
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v13

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->toMimeType()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "ndefMimeType":Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 353
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 354
    :cond_b
    const-string v3, "NfcDispatcher"

    const-string v4, "Dropping NFC intent in provisioning mode."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return v14

    .line 359
    .end local v2    # "ndefMimeType":Ljava/lang/String;
    :cond_c
    move-object/from16 v2, v17

    invoke-virtual {v8, v2, v1}, Lcom/android/nfc/NfcDispatcher;->tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z

    move-result v3

    .end local v17    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .local v2, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    if-eqz v3, :cond_e

    .line 360
    if-eqz v15, :cond_d

    move/from16 v19, v4

    nop

    :cond_d
    return v19

    .line 363
    :cond_e
    if-eqz v15, :cond_f

    .line 365
    return v4

    .line 369
    :cond_f
    invoke-virtual {v8, v2, v9}, Lcom/android/nfc/NfcDispatcher;->tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 370
    return v19

    .line 373
    :cond_10
    invoke-virtual {v2}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    .line 374
    invoke-virtual {v2}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 376
    return v19

    .line 380
    :cond_11
    return v14

    .line 291
    .end local v0    # "provisioningOnly":Z
    .end local v2    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .end local v5    # "overrideIntent":Landroid/app/PendingIntent;
    .end local v6    # "overrideFilters":[Landroid/content/IntentFilter;
    .end local v7    # "overrideTechLists":[[Ljava/lang/String;
    .end local v10    # "provisioningMimes":[Ljava/lang/String;
    .end local v11    # "liveCaseMimes":[Ljava/lang/String;
    .end local v12    # "ndef":Landroid/nfc/tech/Ndef;
    .end local v15    # "screenUnlocked":Z
    .end local v16    # "liveCaseDetected":Z
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

    .line 784
    monitor-enter p0

    .line 785
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

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideTechLists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    monitor-exit p0

    .line 789
    return-void

    .line 788
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

    .line 708
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 710
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 711
    .local v3, "tech":Ljava/lang/String;
    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 712
    return v0

    .line 710
    .end local v3    # "tech":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 715
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 708
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

    .line 149
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 151
    return-void
.end method

.method isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "hasTechFilter"    # Z

    .line 499
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 500
    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 501
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "NfcDispatcher"

    invoke-virtual {v4, v5, p1, v1, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 502
    return v0

    .line 500
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 505
    :cond_1
    if-nez p3, :cond_2

    .line 506
    return v0

    .line 508
    :cond_2
    return v1
.end method

.method isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "techLists"    # [[Ljava/lang/String;

    .line 512
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 513
    return v0

    .line 516
    :cond_0
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, "tagTechs":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 518
    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 519
    .local v4, "filterTechs":[Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 520
    const/4 v0, 0x1

    return v0

    .line 518
    .end local v4    # "filterTechs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 523
    :cond_2
    return v0
.end method

.method resumeAppSwitches()V
    .locals 1

    .line 702
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    goto :goto_0

    :catch_0
    move-exception v0

    .line 704
    :goto_0
    return-void
.end method

.method public declared-synchronized setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techLists"    # [[Ljava/lang/String;

    monitor-enter p0

    .line 156
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 157
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 158
    iput-object p3, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 155
    .end local p1    # "intent":Landroid/app/PendingIntent;
    .end local p2    # "filters":[Landroid/content/IntentFilter;
    .end local p3    # "techLists":[[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/NfcDispatcher;
    throw p1
.end method

.method showWebLinkConfirmation(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)V
    .locals 6
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    .line 757
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f070000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 758
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    .line 759
    return-void

    .line 761
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 762
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 764
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 765
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 766
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 767
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 768
    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 769
    .local v3, "url":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 770
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 774
    .end local v3    # "url":Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f06000a

    sget-object v4, Lcom/android/nfc/-$$Lambda$NfcDispatcher$IE5hy6kTVRlYKFXvWsHjAQmY8Tw;->INSTANCE:Lcom/android/nfc/-$$Lambda$NfcDispatcher$IE5hy6kTVRlYKFXvWsHjAQmY8Tw;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 775
    const v3, 0x7f060034

    new-instance v4, Lcom/android/nfc/-$$Lambda$NfcDispatcher$r1sTxVZBVEU7jV6UFtSDqCtzioM;

    invoke-direct {v4, p1}, Lcom/android/nfc/-$$Lambda$NfcDispatcher$r1sTxVZBVEU7jV6UFtSDqCtzioM;-><init>(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 778
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 779
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 780
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 781
    return-void
.end method

.method tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z
    .locals 10
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "message"    # Landroid/nfc/NdefMessage;

    .line 527
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 528
    return v0

    .line 530
    :cond_0
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 533
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    return v0

    .line 536
    :cond_1
    invoke-static {p2}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v2

    .line 537
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

    .line 538
    .local v4, "pkg":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 541
    return v5

    .line 543
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 546
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_5

    .line 547
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 550
    .local v3, "firstPackage":Ljava/lang/String;
    :try_start_0
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 551
    .local v6, "currentUser":Landroid/os/UserHandle;
    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v8, "android"

    invoke-virtual {v7, v8, v0, v6}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v7

    .line 552
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "currentUser":Landroid/os/UserHandle;
    move-object v6, v7

    .line 556
    .local v6, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 555
    nop

    .line 557
    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 558
    .local v7, "appLaunchIntent":Landroid/content/Intent;
    if-eqz v7, :cond_4

    .line 559
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    invoke-virtual {p1, v7}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 562
    return v5

    .line 566
    :cond_4
    invoke-static {v3}, Lcom/android/nfc/NfcDispatcher;->getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 567
    .local v8, "marketIntent":Landroid/content/Intent;
    if-eqz v8, :cond_5

    .line 568
    invoke-virtual {v8, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p1, v8}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 571
    return v5

    .line 553
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "appLaunchIntent":Landroid/content/Intent;
    .end local v8    # "marketIntent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 554
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NfcDispatcher"

    const-string v6, "Could not create user package context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return v0

    .line 577
    .end local v3    # "firstPackage":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    iget-object v3, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->isWebIntent()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 581
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcDispatcher;->showWebLinkConfirmation(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)V

    .line 582
    return v5

    .line 585
    :cond_6
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 587
    return v5

    .line 590
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

    .line 452
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 453
    return v0

    .line 458
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 459
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v3

    .line 460
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    if-eqz p6, :cond_1

    .line 461
    move v4, v2

    goto :goto_0

    .line 460
    :cond_1
    nop

    .line 461
    move v4, v0

    :goto_0
    invoke-virtual {p0, v3, p5, v4}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 463
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v4, v1, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    return v2

    .line 466
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 473
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    move-result-object v3

    .line 474
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2, p6}, Lcom/android/nfc/NfcDispatcher;->isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 476
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v4, v1, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 478
    return v2

    .line 479
    :catch_1
    move-exception v1

    .line 480
    .restart local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 485
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_3
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    move-result-object v3

    .line 486
    if-eqz p6, :cond_4

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_1
    invoke-virtual {p0, v3, p5, v4}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 488
    :try_start_2
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v4, v1, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 490
    return v2

    .line 491
    :catch_2
    move-exception v1

    .line 492
    .restart local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 495
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_5
    return v0
.end method

.method public tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z
    .locals 5
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .line 659
    const/4 v0, 0x0

    if-eqz p1, :cond_7

    iget-boolean v1, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 663
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v1

    .line 664
    .local v1, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v1, :cond_6

    iget-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-nez v2, :cond_1

    goto :goto_0

    .line 665
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    const-string v3, "no_config_bluetooth"

    .line 668
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 665
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 669
    return v0

    .line 672
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 673
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "device"

    iget-object v3, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 674
    const-string v2, "headsetname"

    iget-object v3, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 675
    const-string v2, "transporttype"

    iget v3, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 676
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    if-eqz v2, :cond_3

    .line 677
    const-string v2, "oobdata"

    iget-object v3, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 679
    :cond_3
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    if-eqz v2, :cond_4

    .line 680
    const-string v2, "uuids"

    iget-object v3, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 682
    :cond_4
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->btClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v2, :cond_5

    .line 683
    const-string v2, "class"

    iget-object v3, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->btClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 685
    :cond_5
    const-string v2, "bt_enabled"

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 686
    const-string v2, "client"

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 687
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 689
    const/4 v2, 0x1

    return v2

    .line 664
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_0
    return v0

    .line 659
    .end local v1    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_7
    :goto_1
    return v0
.end method

.method tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .locals 10
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .line 605
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 607
    invoke-virtual {p2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "tagTechs":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 611
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 612
    .local v1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v2}, Lcom/android/nfc/RegisteredComponentCache;->getComponents()Ljava/util/ArrayList;

    move-result-object v2

    .line 616
    .local v2, "registered":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 617
    .local v4, "currentUser":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v6, "android"

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    .line 618
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "currentUser":Landroid/os/UserHandle;
    move-object v4, v5

    .line 622
    .local v4, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 621
    nop

    .line 624
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 626
    .local v6, "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 627
    invoke-static {v4, v7}, Lcom/android/nfc/NfcDispatcher;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 629
    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 630
    iget-object v7, v6, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    .end local v6    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :cond_0
    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 637
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 638
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 641
    return v6

    .line 643
    :cond_2
    iget-object v6, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 644
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_4

    .line 646
    new-instance v5, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 647
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.extra.INTENT"

    iget-object v8, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 648
    const-string v7, "rlist"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 650
    invoke-virtual {p1, v5}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 652
    return v6

    .line 655
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_1
    return v3

    .line 619
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .line 620
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "NfcDispatcher"

    const-string v6, "Could not create user package context"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    return v3
.end method

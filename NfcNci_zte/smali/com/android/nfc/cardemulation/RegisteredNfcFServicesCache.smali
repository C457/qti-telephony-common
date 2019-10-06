.class public Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;
.super Ljava/lang/Object;
.source "RegisteredNfcFServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;,
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;,
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;,
        Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "RegisteredNfcFServicesCache"

.field static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field mActivated:Z

.field final mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

.field final mContext:Landroid/content/Context;

.field final mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

.field final mLock:Ljava/lang/Object;

.field final mReceiver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;",
            ">;"
        }
    .end annotation
.end field

.field mUserSwitched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserSwitched:Z

    .line 124
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    .line 127
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;-><init>(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;)V

    .line 151
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 153
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v2, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 164
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v2, "sdFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 169
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 170
    .local v3, "dataDir":Ljava/io/File;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "dynamic_systemcode_nfcid2.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    .line 172
    return-void
.end method

.method private findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .locals 3
    .param p1, "userId"    # I

    .line 115
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    .line 116
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    if-nez v0, :cond_0

    .line 117
    new-instance v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;-><init>(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;)V

    move-object v0, v1

    .line 118
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    :cond_0
    return-object v0
.end method

.method private generateRandomNfcid2()Ljava/lang/String;
    .locals 14

    .line 707
    const-wide/16 v0, 0x0

    .line 708
    .local v0, "min":J
    const-wide v2, 0xffffffffffffL

    .line 710
    .local v2, "max":J
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    sub-long v6, v2, v0

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    long-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    add-long/2addr v4, v0

    .line 711
    .local v4, "randomNfcid2":J
    const-string v6, "02FE%02X%02X%02X%02X%02X%02X"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0x28

    ushr-long v8, v4, v8

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    .line 712
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/16 v8, 0x20

    ushr-long v12, v4, v8

    and-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    const/16 v8, 0x18

    ushr-long v12, v4, v8

    and-long/2addr v12, v10

    .line 713
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    const/16 v8, 0x10

    ushr-long v12, v4, v8

    and-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    const/16 v8, 0x8

    ushr-long v12, v4, v8

    and-long/2addr v12, v10

    .line 714
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    ushr-long v8, v4, v9

    and-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    .line 711
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private readDynamicSystemCodeNfcid2Locked()V
    .locals 20

    .line 394
    move-object/from16 v1, p0

    const/4 v2, 0x0

    move-object v3, v2

    .line 396
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    const-string v0, "RegisteredNfcFServicesCache"

    const-string v2, "Dynamic System Code, NFCID2 file does not exist."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    if-eqz v3, :cond_0

    .line 478
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 480
    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 400
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v3, v0

    .line 401
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v4, v0

    .line 402
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 403
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 404
    .local v0, "eventType":I
    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    .line 406
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v0, v5

    goto :goto_1

    .line 408
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 409
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "services"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 410
    const/4 v8, 0x0

    .line 411
    .local v8, "componentName":Landroid/content/ComponentName;
    const/4 v9, -0x1

    .line 412
    .local v9, "currentUid":I
    const/4 v10, 0x0

    .line 413
    .local v10, "systemCode":Ljava/lang/String;
    const/4 v11, 0x0

    .line 414
    .local v11, "nfcid2":Ljava/lang/String;
    move v12, v9

    move-object v9, v8

    move-object v8, v7

    move v7, v0

    move-object v0, v2

    .local v0, "description":Ljava/lang/String;
    .local v7, "eventType":I
    .local v8, "tagName":Ljava/lang/String;
    .local v9, "componentName":Landroid/content/ComponentName;
    .local v12, "currentUid":I
    :goto_2
    move-object v13, v0

    .line 415
    .end local v0    # "description":Ljava/lang/String;
    .local v13, "description":Ljava/lang/String;
    if-eq v7, v5, :cond_9

    .line 416
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 417
    if-ne v7, v6, :cond_5

    .line 418
    const-string v0, "service"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, v6, :cond_8

    .line 419
    const-string v0, "component"

    .line 420
    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 421
    .local v14, "compString":Ljava/lang/String;
    const-string v0, "uid"

    .line 422
    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 423
    .local v15, "uidString":Ljava/lang/String;
    const-string v0, "system-code"

    .line 424
    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v16, v0

    .line 425
    .local v16, "systemCodeString":Ljava/lang/String;
    const-string v0, "description"

    .line 426
    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 427
    .local v17, "descriptionString":Ljava/lang/String;
    const-string v0, "nfcid2"

    .line 428
    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v18, v0

    .line 429
    .local v18, "nfcid2String":Ljava/lang/String;
    if-eqz v14, :cond_4

    if-nez v15, :cond_3

    goto :goto_3

    .line 433
    :cond_3
    :try_start_3
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v9, v0

    .line 434
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v12, v0

    .line 435
    move-object/from16 v10, v16

    .line 436
    move-object/from16 v13, v17

    .line 437
    move-object/from16 v11, v18

    .line 440
    goto :goto_4

    .line 438
    :catch_1
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v2, "RegisteredNfcFServicesCache"

    const-string v5, "Could not parse service uid"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "compString":Ljava/lang/String;
    .end local v15    # "uidString":Ljava/lang/String;
    .end local v16    # "systemCodeString":Ljava/lang/String;
    .end local v17    # "descriptionString":Ljava/lang/String;
    .end local v18    # "nfcid2String":Ljava/lang/String;
    goto :goto_4

    .line 430
    .restart local v14    # "compString":Ljava/lang/String;
    .restart local v15    # "uidString":Ljava/lang/String;
    .restart local v16    # "systemCodeString":Ljava/lang/String;
    .restart local v17    # "descriptionString":Ljava/lang/String;
    .restart local v18    # "nfcid2String":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v0, "RegisteredNfcFServicesCache"

    const-string v2, "Invalid service attributes"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v14    # "compString":Ljava/lang/String;
    .end local v15    # "uidString":Ljava/lang/String;
    .end local v16    # "systemCodeString":Ljava/lang/String;
    .end local v17    # "descriptionString":Ljava/lang/String;
    .end local v18    # "nfcid2String":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 443
    :cond_5
    const/4 v0, 0x3

    if-ne v7, v0, :cond_8

    .line 444
    const-string v0, "service"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 446
    if-eqz v9, :cond_7

    if-ltz v12, :cond_7

    .line 447
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 448
    .local v0, "userId":I
    invoke-direct {v1, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v2

    .line 449
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    if-eqz v10, :cond_6

    .line 450
    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    invoke-direct {v5, v12, v10}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;-><init>(ILjava/lang/String;)V

    .line 452
    .local v5, "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    iget-object v14, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v14, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .end local v5    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    :cond_6
    if-eqz v11, :cond_7

    .line 456
    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    invoke-direct {v5, v12, v11}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;-><init>(ILjava/lang/String;)V

    .line 458
    .local v5, "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    iget-object v14, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v14, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .end local v0    # "userId":I
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v5    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    :cond_7
    const/4 v0, 0x0

    .line 463
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .local v0, "componentName":Landroid/content/ComponentName;
    const/4 v2, -0x1

    .line 464
    .end local v12    # "currentUid":I
    .local v2, "currentUid":I
    const/4 v5, 0x0

    .line 465
    .end local v10    # "systemCode":Ljava/lang/String;
    .local v5, "systemCode":Ljava/lang/String;
    const/4 v9, 0x0

    .line 466
    .end local v13    # "description":Ljava/lang/String;
    .local v9, "description":Ljava/lang/String;
    const/4 v10, 0x0

    .line 469
    .end local v11    # "nfcid2":Ljava/lang/String;
    .local v10, "nfcid2":Ljava/lang/String;
    move v12, v2

    move-object v11, v10

    move-object v10, v5

    move-object/from16 v19, v9

    move-object v9, v0

    move-object/from16 v0, v19

    goto :goto_6

    .end local v2    # "currentUid":I
    .end local v5    # "systemCode":Ljava/lang/String;
    .local v0, "description":Ljava/lang/String;
    .local v9, "componentName":Landroid/content/ComponentName;
    .local v10, "systemCode":Ljava/lang/String;
    .restart local v11    # "nfcid2":Ljava/lang/String;
    .restart local v12    # "currentUid":I
    :cond_8
    :goto_5
    move-object v0, v13

    :goto_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v7, v2

    .line 414
    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 476
    .end local v0    # "description":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "eventType":I
    .end local v8    # "tagName":Ljava/lang/String;
    .end local v9    # "componentName":Landroid/content/ComponentName;
    .end local v10    # "systemCode":Ljava/lang/String;
    .end local v11    # "nfcid2":Ljava/lang/String;
    .end local v12    # "currentUid":I
    :cond_9
    if-eqz v3, :cond_a

    .line 478
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 480
    :goto_7
    goto :goto_8

    .line 479
    :catch_2
    move-exception v0

    goto :goto_7

    .line 476
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_9

    .line 472
    :catch_3
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "RegisteredNfcFServicesCache"

    const-string v4, "Could not parse dynamic System Code, NFCID2 file, trashing."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 476
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_a

    .line 478
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_7

    .line 483
    :cond_a
    :goto_8
    return-void

    .line 476
    :goto_9
    if-eqz v3, :cond_b

    .line 478
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 480
    goto :goto_a

    .line 479
    :catch_4
    move-exception v0

    .line 480
    :cond_b
    :goto_a
    throw v2
.end method

.method private writeDynamicSystemCodeNfcid2Locked()Z
    .locals 12

    .line 487
    const/4 v0, 0x0

    move-object v1, v0

    .line 489
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 490
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 491
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 492
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 493
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 494
    const-string v5, "services"

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 495
    move v5, v2

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 496
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    .line 498
    .local v6, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v7, v6, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 499
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    const-string v9, "service"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 500
    const-string v9, "component"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 501
    const-string v9, "uid"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    iget v10, v10, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 502
    const-string v9, "system-code"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    iget-object v10, v10, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->systemCode:Ljava/lang/String;

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 503
    iget-object v9, v6, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 504
    const-string v9, "nfcid2"

    iget-object v10, v6, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    .line 505
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    iget-object v10, v10, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->nfcid2:Ljava/lang/String;

    .line 504
    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 507
    :cond_0
    const-string v9, "service"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    goto :goto_1

    .line 510
    :cond_1
    iget-object v7, v6, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 511
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    iget-object v9, v6, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 512
    const-string v9, "service"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    const-string v9, "component"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 514
    const-string v9, "uid"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    iget v10, v10, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 515
    const-string v9, "nfcid2"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    iget-object v10, v10, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->nfcid2:Ljava/lang/String;

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 516
    const-string v9, "service"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    :cond_2
    goto :goto_2

    .line 495
    .end local v6    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 520
    .end local v5    # "i":I
    :cond_4
    const-string v5, "services"

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 522
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    return v4

    .line 524
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "RegisteredNfcFServicesCache"

    const-string v4, "Error writing dynamic System Code, NFCID2"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    if-eqz v1, :cond_5

    .line 527
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mDynamicSystemCodeNfcid2File:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 529
    :cond_5
    return v2
.end method


# virtual methods
.method containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 3
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .line 189
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 190
    .local v1, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 191
    .end local v1    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_0
    goto :goto_0

    .line 192
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 718
    const-string v0, "Registered HCE-F services for current user: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v1

    .line 721
    .local v1, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 722
    .local v3, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v3, p1, p2, p3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 723
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 724
    .end local v3    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_0

    .line 725
    :cond_0
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 726
    .end local v1    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    monitor-exit v0

    .line 727
    return-void

    .line 726
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method dump(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 182
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 183
    .local v1, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const-string v2, "RegisteredNfcFServicesCache"

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v1    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method getInstalledServices(I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 224
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 223
    nop

    .line 226
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v1, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.nfc.cardemulation.action.HOST_NFCF_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 232
    .local v2, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 234
    .local v4, "resolvedService":Landroid/content/pm/ResolveInfo;
    :try_start_1
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 235
    .local v5, "si":Landroid/content/pm/ServiceInfo;
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .local v6, "componentName":Landroid/content/ComponentName;
    const-string v7, "android.permission.NFC"

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 239
    const-string v7, "RegisteredNfcFServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping NfcF service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": it does not require the permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.NFC"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    goto :goto_0

    .line 244
    :cond_0
    const-string v7, "android.permission.BIND_NFC_SERVICE"

    iget-object v8, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 246
    const-string v7, "RegisteredNfcFServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping NfcF service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ": it does not require the permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "android.permission.BIND_NFC_SERVICE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    goto :goto_0

    .line 251
    :cond_1
    new-instance v7, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-direct {v7, v0, v4}, Landroid/nfc/cardemulation/NfcFServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    .line 252
    .local v7, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    nop

    .line 253
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v5    # "si":Landroid/content/pm/ServiceInfo;
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_1

    .line 257
    :catch_0
    move-exception v5

    .line 258
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "RegisteredNfcFServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load component info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 255
    .restart local v4    # "resolvedService":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v5

    .line 256
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "RegisteredNfcFServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load component info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v4    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    nop

    .line 260
    :goto_2
    goto/16 :goto_0

    .line 262
    :cond_2
    return-object v1

    .line 221
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v2    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_2
    move-exception v0

    .line 222
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RegisteredNfcFServicesCache"

    const-string v2, "Could not create user package context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNfcid2ForService(IILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 667
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v0

    .line 668
    .local v0, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 669
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 670
    const-string v2, "RegisteredNfcFServicesCache"

    const-string v3, "UID mismatch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-object v1

    .line 673
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 675
    :cond_1
    const-string v2, "RegisteredNfcFServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-object v1
.end method

.method public getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 200
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v1

    .line 202
    .local v1, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFServiceInfo;

    monitor-exit v0

    return-object v2

    .line 203
    .end local v1    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServices(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v2

    .line 210
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 211
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    monitor-exit v1

    .line 212
    return-object v0

    .line 211
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSystemCodeForService(IILandroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 592
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v0

    .line 593
    .local v0, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 595
    const-string v2, "RegisteredNfcFServicesCache"

    const-string v3, "UID mismatch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-object v1

    .line 598
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 600
    :cond_1
    const-string v2, "RegisteredNfcFServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-object v1
.end method

.method public hasService(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initialize()V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->readDynamicSystemCodeNfcid2Locked()V

    .line 177
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public invalidateCache(I)V
    .locals 20
    .param p1, "userId"    # I

    move-object/from16 v1, p0

    .line 267
    invoke-virtual/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 268
    .local v2, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    if-nez v2, :cond_0

    .line 269
    return-void

    .line 271
    :cond_0
    const/4 v3, 0x0

    .line 272
    .local v3, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 273
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v0

    .line 276
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    .line 277
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    .local v5, "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v6, "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v7, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    const/4 v8, 0x0

    .line 281
    .local v8, "matched":Z
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v10, :cond_4

    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 282
    .local v10, "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 283
    .local v12, "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v10, v12}, Landroid/nfc/cardemulation/NfcFServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 284
    const/4 v8, 0x1

    .line 285
    goto :goto_2

    .line 287
    .end local v12    # "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_1
    goto :goto_1

    .line 288
    :cond_2
    :goto_2
    if-nez v8, :cond_3

    .line 289
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :cond_3
    const/4 v8, 0x0

    .line 292
    .end local v10    # "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_0

    .line 387
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v8    # "matched":Z
    :catchall_0
    move-exception v0

    move/from16 v5, p1

    move-object/from16 v16, v2

    goto/16 :goto_14

    .line 293
    .restart local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .restart local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v8    # "matched":Z
    :cond_4
    :try_start_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    if-eqz v10, :cond_8

    :try_start_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 294
    .local v10, "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 295
    .local v12, "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v10, v12}, Landroid/nfc/cardemulation/NfcFServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 296
    const/4 v8, 0x1

    .line 297
    goto :goto_5

    .line 299
    .end local v12    # "validService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_5
    goto :goto_4

    .line 300
    :cond_6
    :goto_5
    if-nez v8, :cond_7

    .line 301
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    :cond_7
    const/4 v8, 0x0

    .line 304
    .end local v10    # "cachedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_3

    .line 305
    :cond_8
    :try_start_4
    iget-boolean v9, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserSwitched:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v9, :cond_9

    .line 306
    :try_start_5
    const-string v9, "RegisteredNfcFServicesCache"

    const-string v10, "User switched, rebuild internal cache"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserSwitched:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    .line 308
    :cond_9
    :try_start_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-nez v9, :cond_a

    :try_start_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_a

    .line 309
    const-string v9, "RegisteredNfcFServicesCache"

    const-string v10, "Service unchanged, not updating"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    .line 314
    :cond_a
    :goto_6
    :try_start_8
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-eqz v10, :cond_b

    :try_start_9
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 315
    .local v10, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 317
    .end local v10    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_7

    .line 318
    :cond_b
    :try_start_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v10, :cond_c

    :try_start_b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 319
    .restart local v10    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 321
    .end local v10    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_8

    .line 323
    :cond_c
    :try_start_c
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v9, "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v11, :cond_f

    :try_start_d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 328
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    .line 329
    .local v12, "componentName":Landroid/content/ComponentName;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    .line 330
    .local v13, "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 331
    .local v14, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v15
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    move-object/from16 v16, v2

    :try_start_e
    iget v2, v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->uid:I

    .end local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .local v16, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    if-eq v15, v2, :cond_d

    goto :goto_a

    .line 335
    :cond_d
    iget-object v2, v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;->systemCode:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicSystemCode(Ljava/lang/String;)V

    .line 337
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .end local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_b

    .line 332
    .end local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .restart local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_e
    move-object/from16 v16, v2

    .end local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_a
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 333
    nop

    .line 326
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;>;"
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .end local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_b
    move-object/from16 v2, v16

    goto :goto_9

    .line 387
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v8    # "matched":Z
    .end local v9    # "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catchall_1
    move-exception v0

    move/from16 v5, p1

    goto/16 :goto_14

    .end local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catchall_2
    move-exception v0

    move-object/from16 v16, v2

    move/from16 v5, p1

    .end local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    goto/16 :goto_14

    .line 339
    .end local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .restart local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v8    # "matched":Z
    .restart local v9    # "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_f
    move-object/from16 v16, v2

    .end local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :try_start_f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v2, "toBeRemovedDynamicNfcid2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    if-eqz v11, :cond_12

    :try_start_10
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 344
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ComponentName;

    .line 345
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    .line 346
    .local v13, "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 347
    .restart local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v14, :cond_11

    invoke-virtual {v14}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v15
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object/from16 v17, v3

    :try_start_11
    iget v3, v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->uid:I

    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .local v17, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    if-eq v15, v3, :cond_10

    goto :goto_d

    .line 351
    :cond_10
    iget-object v3, v13, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;->nfcid2:Ljava/lang/String;

    invoke-virtual {v14, v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicNfcid2(Ljava/lang/String;)V

    .line 353
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    goto :goto_e

    .line 348
    .end local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    .restart local v12    # "componentName":Landroid/content/ComponentName;
    .restart local v13    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .restart local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_11
    move-object/from16 v17, v3

    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_d
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    nop

    .line 342
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;>;"
    .end local v12    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v14    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_e
    move-object/from16 v3, v17

    goto :goto_c

    .line 387
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v2    # "toBeRemovedDynamicNfcid2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v8    # "matched":Z
    .end local v9    # "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v17, v3

    move/from16 v5, p1

    goto/16 :goto_13

    .line 354
    .restart local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .restart local v2    # "toBeRemovedDynamicNfcid2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v8    # "matched":Z
    .restart local v9    # "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_12
    move-object/from16 v17, v3

    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 355
    .local v10, "removedComponent":Landroid/content/ComponentName;
    const-string v11, "RegisteredNfcFServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing dynamic System Code registered by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .end local v10    # "removedComponent":Landroid/content/ComponentName;
    goto :goto_f

    .line 359
    :cond_13
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 360
    .restart local v10    # "removedComponent":Landroid/content/ComponentName;
    const-string v11, "RegisteredNfcFServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Removing dynamic NFCID2 registered by "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .end local v10    # "removedComponent":Landroid/content/ComponentName;
    goto :goto_10

    .line 365
    :cond_14
    const/4 v3, 0x0

    .line 367
    .local v3, "nfcid2Assigned":Z
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 368
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 369
    .local v12, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    invoke-virtual {v12}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v13

    const-string v14, "RANDOM"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->generateRandomNfcid2()Ljava/lang/String;

    move-result-object v13

    .line 371
    .local v13, "randomNfcid2":Ljava/lang/String;
    invoke-virtual {v12, v13}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicNfcid2(Ljava/lang/String;)V

    .line 372
    new-instance v14, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    .line 373
    invoke-virtual {v12}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v15

    invoke-direct {v14, v15, v13}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;-><init>(ILjava/lang/String;)V

    .line 374
    .local v14, "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    iget-object v15, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Landroid/content/ComponentName;

    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .local v19, "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {v15, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const/4 v3, 0x1

    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v12    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v13    # "randomNfcid2":Ljava/lang/String;
    .end local v14    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    goto :goto_12

    .line 377
    .end local v19    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :cond_15
    move-object/from16 v19, v5

    .line 367
    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v19    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_12
    move-object/from16 v5, v19

    goto :goto_11

    .line 380
    .end local v19    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :cond_16
    move-object/from16 v19, v5

    .end local v5    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v19    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_17

    .line 381
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_17

    if-eqz v3, :cond_18

    .line 383
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->writeDynamicSystemCodeNfcid2Locked()Z

    .line 386
    :cond_18
    new-instance v5, Ljava/util/ArrayList;

    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move-object v3, v5

    .line 387
    .end local v0    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v2    # "toBeRemovedDynamicNfcid2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v6    # "toBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v7    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v8    # "matched":Z
    .end local v9    # "toBeRemovedDynamicSystemCode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v19    # "cachedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .local v3, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 388
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move/from16 v5, p1

    invoke-interface {v0, v5, v2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;->onNfcFServicesUpdated(ILjava/util/List;)V

    .line 390
    return-void

    .line 387
    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catchall_4
    move-exception v0

    move/from16 v5, p1

    move-object/from16 v3, v17

    goto :goto_14

    .end local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catchall_5
    move-exception v0

    move/from16 v5, p1

    move-object/from16 v17, v3

    .end local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_13
    goto :goto_14

    .end local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .end local v17    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .local v2, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v3    # "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :catchall_6
    move-exception v0

    move/from16 v5, p1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    .end local v2    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    .restart local v16    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    :goto_14
    :try_start_13
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_14
.end method

.method public onHostEmulationActivated()V
    .locals 2

    .line 682
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    .line 684
    monitor-exit v0

    .line 685
    return-void

    .line 684
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostEmulationDeactivated()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    .line 691
    monitor-exit v0

    .line 692
    return-void

    .line 691
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNfcDisabled()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    .line 697
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitched()V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mUserSwitched:Z

    .line 703
    monitor-exit v0

    .line 704
    return-void

    .line 703
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerSystemCodeForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "systemCode"    # Ljava/lang/String;

    .line 536
    const/4 v0, 0x0

    .line 538
    .local v0, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 539
    :try_start_0
    iget-boolean v2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 540
    const-string v2, "RegisteredNfcFServicesCache"

    const-string v4, "failed to register System Code during activation"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    monitor-exit v1

    return v3

    .line 543
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v2

    .line 545
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v4

    .line 546
    .local v4, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-nez v4, :cond_1

    .line 547
    const-string v5, "RegisteredNfcFServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    monitor-exit v1

    return v3

    .line 550
    :cond_1
    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v5

    if-eq v5, p2, :cond_2

    .line 555
    const-string v5, "RegisteredNfcFServicesCache"

    const-string v6, "UID mismatch."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    monitor-exit v1

    return v3

    .line 558
    :cond_2
    const-string v5, "NULL"

    invoke-virtual {p4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 559
    invoke-static {p4}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidSystemCode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 560
    const-string v5, "RegisteredNfcFServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System Code "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not a valid System Code"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    monitor-exit v1

    return v3

    .line 564
    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object p4, v3

    .line 565
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    .line 566
    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    .line 567
    .local v3, "oldDynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;

    invoke-direct {v5, p2, p4}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;-><init>(ILjava/lang/String;)V

    .line 568
    .local v5, "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v6, p3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->writeDynamicSystemCodeNfcid2Locked()Z

    move-result v6

    .line 570
    .local v6, "success":Z
    if-eqz v6, :cond_4

    .line 571
    invoke-virtual {v4, p4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicSystemCode(Ljava/lang/String;)V

    .line 572
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    goto :goto_0

    .line 574
    :cond_4
    const-string v7, "RegisteredNfcFServicesCache"

    const-string v8, "Failed to persist System Code."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    if-nez v3, :cond_5

    .line 577
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 579
    :cond_5
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicSystemCode:Ljava/util/HashMap;

    invoke-virtual {v7, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v3    # "oldDynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    .end local v4    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v5    # "dynamicSystemCode":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicSystemCode;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    if-eqz v6, :cond_6

    .line 585
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    invoke-interface {v1, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;->onNfcFServicesUpdated(ILjava/util/List;)V

    .line 587
    :cond_6
    return v6

    .line 582
    .end local v6    # "success":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeSystemCodeForService(IILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 607
    const-string v0, "NULL"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->registerSystemCodeForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNfcid2ForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "nfcid2"    # Ljava/lang/String;

    .line 613
    const/4 v0, 0x0

    .line 615
    .local v0, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_0
    iget-boolean v2, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mActivated:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 617
    const-string v2, "RegisteredNfcFServicesCache"

    const-string v4, "failed to set NFCID2 during activation"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    monitor-exit v1

    return v3

    .line 620
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;

    move-result-object v2

    .line 622
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v4

    .line 623
    .local v4, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-nez v4, :cond_1

    .line 624
    const-string v5, "RegisteredNfcFServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    monitor-exit v1

    return v3

    .line 627
    :cond_1
    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getUid()I

    move-result v5

    if-eq v5, p2, :cond_2

    .line 632
    const-string v5, "RegisteredNfcFServicesCache"

    const-string v6, "UID mismatch."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    monitor-exit v1

    return v3

    .line 635
    :cond_2
    invoke-static {p4}, Landroid/nfc/cardemulation/NfcFCardEmulation;->isValidNfcid2(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 636
    const-string v5, "RegisteredNfcFServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NFCID2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not a valid NFCID2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    monitor-exit v1

    return v3

    .line 640
    :cond_3
    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    move-object p4, v3

    .line 641
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    .line 642
    .local v3, "oldDynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;

    invoke-direct {v5, p2, p4}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;-><init>(ILjava/lang/String;)V

    .line 643
    .local v5, "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v6, p3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->writeDynamicSystemCodeNfcid2Locked()Z

    move-result v6

    .line 645
    .local v6, "success":Z
    if-eqz v6, :cond_4

    .line 646
    invoke-virtual {v4, p4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->setOrReplaceDynamicNfcid2(Ljava/lang/String;)V

    .line 647
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    goto :goto_0

    .line 649
    :cond_4
    const-string v7, "RegisteredNfcFServicesCache"

    const-string v8, "Failed to persist NFCID2."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    if-nez v3, :cond_5

    .line 652
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v7, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 654
    :cond_5
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;->dynamicNfcid2:Ljava/util/HashMap;

    invoke-virtual {v7, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$UserServices;
    .end local v3    # "oldDynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    .end local v4    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v5    # "dynamicNfcid2":Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$DynamicNfcid2;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    if-eqz v6, :cond_6

    .line 660
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;

    invoke-interface {v1, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;->onNfcFServicesUpdated(ILjava/util/List;)V

    .line 662
    :cond_6
    return v6

    .line 657
    .end local v6    # "success":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

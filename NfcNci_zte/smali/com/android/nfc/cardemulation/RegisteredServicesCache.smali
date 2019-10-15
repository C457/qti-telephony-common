.class public Lcom/android/nfc/cardemulation/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;,
        Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final SERVICE_STATE_FILE_VERSION:Ljava/lang/String; = "1.0"

.field static final TAG:Ljava/lang/String; = "RegisteredServicesCache"

.field static final XML_INDENT_OUTPUT_FEATURE:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"


# instance fields
.field installedServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAllServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

.field final mContext:Landroid/content/Context;

.field final mDynamicAidsFile:Landroid/util/AtomicFile;

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

.field private mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

.field final mServiceStateFile:Landroid/util/AtomicFile;

.field final mUserServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    .line 86
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    .line 91
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mAllServices:Ljava/util/HashMap;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    .line 133
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 134
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    .line 136
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    .line 165
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 167
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v2, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 178
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v2, "sdFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 183
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 184
    .local v3, "dataDir":Ljava/io/File;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "dynamic_aids.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    .line 185
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "service_state.xml"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    .line 186
    return-void
.end method

.method private AddGsmaServices(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 309
    .local p1, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-virtual {v0}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->getApduservicesList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 310
    return-void
.end method

.method static synthetic access$100(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 73
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    return-object v0
.end method

.method private findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .locals 3
    .param p1, "userId"    # I

    .line 124
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 125
    .local v0, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    if-nez v0, :cond_0

    .line 126
    new-instance v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;-><init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;)V

    move-object v0, v1

    .line 127
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    :cond_0
    return-object v0
.end method

.method private readDynamicAidsLocked()V
    .locals 17

    .line 373
    move-object/from16 v1, p0

    const/4 v2, 0x0

    move-object v3, v2

    .line 375
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    const-string v0, "RegisteredServicesCache"

    const-string v2, "Dynamic AIDs file does not exist."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    if-eqz v3, :cond_0

    .line 447
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 449
    goto :goto_0

    .line 448
    :catch_0
    move-exception v0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v3, v0

    .line 380
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v4, v0

    .line 381
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 382
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 383
    .local v0, "eventType":I
    :goto_1
    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    .line 385
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v0, v5

    goto :goto_1

    .line 387
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 388
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "services"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 389
    const/4 v8, 0x0

    .line 390
    .local v8, "inService":Z
    const/4 v9, 0x0

    .line 391
    .local v9, "currentComponent":Landroid/content/ComponentName;
    const/4 v10, -0x1

    .line 392
    .local v10, "currentUid":I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v7

    move v7, v0

    move-object/from16 v0, v16

    .line 393
    .local v0, "tagName":Ljava/lang/String;
    .local v7, "eventType":I
    .local v11, "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpAidGroup;>;"
    :goto_2
    if-eq v7, v5, :cond_b

    .line 394
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 395
    .end local v0    # "tagName":Ljava/lang/String;
    .local v12, "tagName":Ljava/lang/String;
    const/4 v13, 0x3

    if-ne v7, v6, :cond_7

    .line 396
    const-string v0, "service"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 397
    const-string v0, "component"

    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 398
    .local v14, "compString":Ljava/lang/String;
    const-string v0, "uid"

    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v0

    .line 399
    .local v15, "uidString":Ljava/lang/String;
    if-eqz v14, :cond_4

    if-nez v15, :cond_3

    goto :goto_3

    .line 403
    :cond_3
    :try_start_3
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v10, v0

    .line 404
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v9, v0

    .line 405
    const/4 v8, 0x1

    .line 408
    goto :goto_4

    .line 406
    :catch_1
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v2, "RegisteredServicesCache"

    const-string v5, "Could not parse service uid"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "compString":Ljava/lang/String;
    .end local v15    # "uidString":Ljava/lang/String;
    goto :goto_4

    .line 400
    .restart local v14    # "compString":Ljava/lang/String;
    .restart local v15    # "uidString":Ljava/lang/String;
    :cond_4
    :goto_3
    const-string v0, "RegisteredServicesCache"

    const-string v2, "Invalid service attributes"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v14    # "compString":Ljava/lang/String;
    .end local v15    # "uidString":Ljava/lang/String;
    :cond_5
    :goto_4
    const-string v0, "aid-group"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-ne v0, v13, :cond_a

    if-eqz v8, :cond_a

    .line 412
    invoke-static {v4}, Landroid/nfc/cardemulation/NxpAidGroup;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/nfc/cardemulation/NxpAidGroup;

    move-result-object v0

    .line 413
    .local v0, "group":Landroid/nfc/cardemulation/NxpAidGroup;
    if-eqz v0, :cond_6

    .line 414
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 416
    :cond_6
    const-string v2, "RegisteredServicesCache"

    const-string v5, "Could not parse AID group."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v0    # "group":Landroid/nfc/cardemulation/NxpAidGroup;
    :goto_5
    goto :goto_7

    .line 419
    :cond_7
    if-ne v7, v13, :cond_a

    .line 420
    const-string v0, "service"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 422
    if-eqz v9, :cond_9

    if-ltz v10, :cond_9

    .line 423
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 424
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 425
    .local v0, "userId":I
    new-instance v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    invoke-direct {v2, v10}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;-><init>(I)V

    .line 426
    .local v2, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/nfc/cardemulation/NxpAidGroup;

    .line 427
    .local v13, "group":Landroid/nfc/cardemulation/NxpAidGroup;
    iget-object v14, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v13}, Landroid/nfc/cardemulation/NxpAidGroup;->getCategory()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .end local v13    # "group":Landroid/nfc/cardemulation/NxpAidGroup;
    goto :goto_6

    .line 429
    :cond_8
    invoke-direct {v1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v5

    .line 430
    .local v5, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v13, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v13, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    .end local v0    # "userId":I
    .end local v2    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v5    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_9
    const/4 v0, -0x1

    .line 433
    .end local v10    # "currentUid":I
    .local v0, "currentUid":I
    const/4 v2, 0x0

    .line 434
    .end local v9    # "currentComponent":Landroid/content/ComponentName;
    .local v2, "currentComponent":Landroid/content/ComponentName;
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 435
    const/4 v5, 0x0

    .line 438
    .end local v8    # "inService":Z
    .local v5, "inService":Z
    move v10, v0

    move-object v9, v2

    move v8, v5

    .end local v0    # "currentUid":I
    .end local v2    # "currentComponent":Landroid/content/ComponentName;
    .end local v5    # "inService":Z
    .restart local v8    # "inService":Z
    .restart local v9    # "currentComponent":Landroid/content/ComponentName;
    .restart local v10    # "currentUid":I
    :cond_a
    :goto_7
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v7, v0

    .line 392
    move-object v0, v12

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 445
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "eventType":I
    .end local v8    # "inService":Z
    .end local v9    # "currentComponent":Landroid/content/ComponentName;
    .end local v10    # "currentUid":I
    .end local v11    # "currentGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpAidGroup;>;"
    .end local v12    # "tagName":Ljava/lang/String;
    :cond_b
    if-eqz v3, :cond_c

    .line 447
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 449
    :goto_8
    goto :goto_9

    .line 448
    :catch_2
    move-exception v0

    goto :goto_8

    .line 445
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_a

    .line 441
    :catch_3
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "RegisteredServicesCache"

    const-string v4, "Could not parse dynamic AIDs file, trashing."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 445
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_c

    .line 447
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_8

    .line 452
    :cond_c
    :goto_9
    return-void

    .line 445
    :goto_a
    if-eqz v3, :cond_d

    .line 447
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 449
    goto :goto_b

    .line 448
    :catch_4
    move-exception v0

    .line 449
    :cond_d
    :goto_b
    throw v2
.end method

.method private updateServiceStateFromFile(I)V
    .locals 18
    .param p1, "currUserId"    # I

    move-object/from16 v1, p0

    .line 490
    const/4 v2, 0x0

    move-object v3, v2

    .line 496
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    const-string v0, "RegisteredServicesCache"

    const-string v4, " Reading service state data always from file"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    const-string v0, "RegisteredServicesCache"

    const-string v2, "mServiceStateFile does not exist"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    if-eqz v3, :cond_0

    .line 613
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    goto :goto_1

    .line 616
    :cond_0
    :goto_0
    nop

    .line 499
    :goto_1
    return-void

    .line 501
    :cond_1
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v3, v0

    .line 502
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v4, v0

    .line 503
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 504
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 505
    .local v0, "eventType":I
    const/4 v5, -0x1

    .line 506
    .local v5, "currUid":I
    const/4 v6, 0x0

    .line 507
    .local v6, "currComponent":Landroid/content/ComponentName;
    iget-object v7, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-virtual {v7}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->getApduservicesMaps()Ljava/util/HashMap;

    move-result-object v7

    .line 508
    .local v7, "nxpOffHostServiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    const/4 v8, 0x1

    move v9, v0

    move v0, v8

    .line 510
    .local v0, "state":I
    .local v9, "eventType":I
    :goto_2
    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    if-eq v9, v8, :cond_2

    .line 512
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    move v9, v10

    goto :goto_2

    .line 514
    :cond_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 515
    .local v11, "tagName":Ljava/lang/String;
    const-string v12, "null"

    .line 521
    .local v12, "fileVersion":Ljava/lang/String;
    const-string v13, "Version"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 522
    const-string v13, "FileVersion"

    invoke-interface {v4, v2, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 523
    const-string v13, "RegisteredServicesCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ServiceStateFileVersion="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move v9, v13

    .line 525
    :goto_3
    if-eq v9, v10, :cond_3

    if-eq v9, v8, :cond_3

    .line 527
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v13

    move v9, v13

    goto :goto_3

    .line 529
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 530
    const-string v13, "RegisteredServicesCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Next Tag="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_4
    const-string v13, "services"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 533
    move v13, v0

    .end local v0    # "state":I
    .local v13, "state":I
    :goto_4
    if-eq v9, v8, :cond_11

    .line 534
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 535
    if-ne v9, v10, :cond_c

    .line 536
    const-string v14, "service"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-ne v14, v10, :cond_10

    .line 537
    const-string v14, "component"

    invoke-interface {v4, v2, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 538
    .local v14, "compString":Ljava/lang/String;
    const-string v15, "uid"

    invoke-interface {v4, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 539
    .local v15, "uidString":Ljava/lang/String;
    const-string v8, "serviceState"

    invoke-interface {v4, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    .local v8, "stateString":Ljava/lang/String;
    if-eqz v14, :cond_b

    if-eqz v15, :cond_b

    if-nez v8, :cond_5

    goto/16 :goto_7

    .line 545
    :cond_5
    :try_start_3
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v5, v16

    .line 546
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v16

    move-object/from16 v6, v16

    .line 547
    const-string v2, "RegisteredServicesCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " curr component "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v0, "RegisteredServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " curr uid "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v0, "RegisteredServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " curr state "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const-string v0, "null"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 552
    const-string v0, "false"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 553
    const/4 v13, 0x0

    goto :goto_5

    .line 555
    :cond_6
    const/4 v13, 0x1

    goto :goto_5

    .line 556
    :cond_7
    const-string v0, "1.0"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 557
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v13, v0

    .line 558
    if-ltz v13, :cond_8

    const/4 v0, 0x3

    if-le v13, v0, :cond_9

    .line 559
    :cond_8
    const-string v0, "RegisteredServicesCache"

    const-string v2, "Invalid Service state"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_9
    :goto_5
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 567
    const-string v0, "RegisteredServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "installedServices contains uidString : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 570
    .local v0, "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .end local v0    # "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    goto :goto_6

    .line 573
    :cond_a
    const-string v0, "RegisteredServicesCache"

    const-string v2, "installedServices no uidString "

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 575
    .restart local v0    # "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v2, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 581
    .end local v0    # "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    :goto_6
    goto :goto_8

    .line 579
    :catch_1
    move-exception v0

    .line 580
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_4
    const-string v2, "RegisteredServicesCache"

    const-string v10, "could not parse the service attributes"

    invoke-static {v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "stateString":Ljava/lang/String;
    .end local v14    # "compString":Ljava/lang/String;
    .end local v15    # "uidString":Ljava/lang/String;
    goto :goto_8

    .line 542
    .restart local v8    # "stateString":Ljava/lang/String;
    .restart local v14    # "compString":Ljava/lang/String;
    .restart local v15    # "uidString":Ljava/lang/String;
    :cond_b
    :goto_7
    const-string v0, "RegisteredServicesCache"

    const-string v2, "Invalid service attributes"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v8    # "stateString":Ljava/lang/String;
    .end local v14    # "compString":Ljava/lang/String;
    .end local v15    # "uidString":Ljava/lang/String;
    :goto_8
    goto :goto_a

    .line 584
    :cond_c
    const/4 v0, 0x3

    if-ne v9, v0, :cond_10

    .line 585
    const-string v0, "service"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 586
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 588
    .local v0, "userId":I
    invoke-direct {v1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 589
    .local v2, "serviceCache":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v8, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 591
    .local v8, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    if-nez v8, :cond_e

    .line 593
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    move-object v8, v10

    .line 594
    if-nez v8, :cond_d

    .line 595
    const-string v10, "RegisteredServicesCache"

    const-string v14, "could not find the required serviceInfo"

    invoke-static {v10, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 596
    :cond_d
    const-string v10, "other"

    invoke-virtual {v8, v10, v13}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->setServiceState(Ljava/lang/String;I)I

    goto :goto_9

    .line 597
    :cond_e
    const-string v10, "other"

    invoke-virtual {v8, v10, v13}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->setServiceState(Ljava/lang/String;I)I

    .line 599
    .end local v0    # "userId":I
    .end local v2    # "serviceCache":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v8    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_f
    :goto_9
    const/4 v0, -0x1

    .line 600
    .end local v5    # "currUid":I
    .local v0, "currUid":I
    const/4 v2, 0x0

    .line 601
    .end local v6    # "currComponent":Landroid/content/ComponentName;
    .local v2, "currComponent":Landroid/content/ComponentName;
    const/4 v5, 0x1

    .line 604
    .end local v13    # "state":I
    .local v5, "state":I
    move-object v6, v2

    move v13, v5

    move v5, v0

    .end local v0    # "currUid":I
    .end local v2    # "currComponent":Landroid/content/ComponentName;
    .local v5, "currUid":I
    .restart local v6    # "currComponent":Landroid/content/ComponentName;
    .restart local v13    # "state":I
    :cond_10
    :goto_a
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v9, v0

    .line 533
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x2

    goto/16 :goto_4

    .line 612
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "currUid":I
    .end local v6    # "currComponent":Landroid/content/ComponentName;
    .end local v7    # "nxpOffHostServiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    .end local v9    # "eventType":I
    .end local v11    # "tagName":Ljava/lang/String;
    .end local v12    # "fileVersion":Ljava/lang/String;
    .end local v13    # "state":I
    :cond_11
    if-eqz v3, :cond_12

    .line 613
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    .line 615
    :catch_2
    move-exception v0

    .line 617
    goto :goto_c

    .line 616
    :cond_12
    :goto_b
    goto :goto_c

    .line 611
    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_d

    .line 607
    :catch_3
    move-exception v0

    .line 608
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 609
    const-string v2, "RegisteredServicesCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "could not parse the seriveState file , thrashing the file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_12

    .line 613
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_b

    .line 618
    :goto_c
    return-void

    .line 611
    :goto_d
    nop

    .line 612
    if-eqz v3, :cond_13

    .line 613
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_e

    .line 615
    :catch_4
    move-exception v0

    nop

    .line 616
    :cond_13
    :goto_e
    throw v2
.end method

.method private writeDynamicAidsLocked()Z
    .locals 11

    .line 455
    const/4 v0, 0x0

    move-object v1, v0

    .line 457
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v1, v3

    .line 458
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 459
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v4, "utf-8"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 460
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 461
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 462
    const-string v5, "services"

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 463
    move v5, v2

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 464
    iget-object v6, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 465
    .local v6, "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v7, v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

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

    .line 466
    .local v8, "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    const-string v9, "service"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 467
    const-string v9, "component"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 468
    const-string v9, "uid"

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    iget v10, v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v0, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 469
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    iget-object v9, v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NxpAidGroup;

    .line 470
    .local v10, "group":Landroid/nfc/cardemulation/NxpAidGroup;
    invoke-virtual {v10, v3}, Landroid/nfc/cardemulation/NxpAidGroup;->writeAsXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 471
    .end local v10    # "group":Landroid/nfc/cardemulation/NxpAidGroup;
    goto :goto_2

    .line 472
    :cond_0
    const-string v9, "service"

    invoke-interface {v3, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 473
    .end local v8    # "service":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    goto :goto_1

    .line 463
    .end local v6    # "user":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 475
    .end local v5    # "i":I
    :cond_2
    const-string v5, "services"

    invoke-interface {v3, v0, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 476
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 477
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    return v4

    .line 479
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "RegisteredServicesCache"

    const-string v4, "Error writing dynamic AIDs"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    if-eqz v1, :cond_3

    .line 482
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mDynamicAidsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 484
    :cond_3
    return v2
.end method

.method private writeServiceStateToFile(I)Z
    .locals 17
    .param p1, "currUserId"    # I

    move-object/from16 v1, p0

    .line 621
    const/4 v2, 0x0

    .line 622
    .local v2, "fos":Ljava/io/FileOutputStream;
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-virtual {v0}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->getApduservicesList()Ljava/util/ArrayList;

    move-result-object v3

    .line 627
    .local v3, "nxpOffHostServiceCache":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    const-string v0, "RegisteredServicesCache"

    const-string v4, " Writing service state Data Always"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v4, 0x0

    move/from16 v5, p1

    if-eq v5, v0, :cond_0

    .line 629
    return v4

    .line 631
    :cond_0
    const/4 v0, 0x1

    move v6, v0

    .line 633
    .local v6, "state":I
    :try_start_0
    iget-object v7, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    move-object v2, v7

    .line 634
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 635
    .local v7, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v8, "utf-8"

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 636
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 637
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v7, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 638
    const-string v8, "Version"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 639
    const-string v8, "FileVersion"

    const-string v10, "1.0"

    invoke-interface {v7, v9, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 640
    const-string v8, "Version"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 641
    const-string v8, "services"

    invoke-interface {v7, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 642
    move v8, v6

    move v6, v4

    .local v6, "userId":I
    .local v8, "state":I
    :goto_0
    :try_start_1
    iget-object v10, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v6, v10, :cond_6

    .line 643
    iget-object v10, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-virtual {v10, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 644
    .local v10, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v11, v10, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 645
    .local v12, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const-string v13, "other"

    invoke-virtual {v12, v13}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 646
    goto :goto_1

    .line 648
    :cond_1
    const-string v13, "service"

    invoke-interface {v7, v9, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 649
    const-string v13, "component"

    invoke-virtual {v12}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 650
    const-string v13, "RegisteredServicesCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "component name"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const-string v13, "uid"

    invoke-virtual {v12}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v9, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 653
    const/4 v13, 0x0

    .line 654
    .local v13, "isServiceInstalled":Z
    iget-object v14, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 655
    iget-object v14, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    .line 656
    .local v14, "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 657
    invoke-virtual {v12}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move v8, v15

    .line 658
    invoke-virtual {v12}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 661
    iget-object v15, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v12}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    :cond_2
    const/4 v13, 0x1

    .line 666
    .end local v14    # "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    :cond_3
    if-nez v13, :cond_4

    .line 667
    const-string v4, "other"

    invoke-virtual {v12, v4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getServiceState(Ljava/lang/String;)I

    move-result v4

    .line 669
    .end local v8    # "state":I
    .local v4, "state":I
    move v8, v4

    .end local v4    # "state":I
    .restart local v8    # "state":I
    :cond_4
    const-string v4, "serviceState"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v7, v9, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 670
    const-string v4, "service"

    invoke-interface {v7, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 671
    .end local v12    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v13    # "isServiceInstalled":Z
    nop

    .line 644
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 642
    .end local v10    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 673
    .end local v6    # "userId":I
    :cond_6
    invoke-virtual {v1, v3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/util/ArrayList;)V

    .line 675
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v8

    .end local v8    # "state":I
    .local v6, "state":I
    :goto_2
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 676
    .local v8, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const-string v10, "service"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 677
    const-string v10, "component"

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 678
    const-string v10, "RegisteredServicesCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "component name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v10, "uid"

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v9, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 680
    const-string v10, "RegisteredServicesCache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "uid name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v10, 0x0

    .line 683
    .local v10, "isServiceInstalled":Z
    iget-object v11, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 684
    iget-object v11, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 685
    .local v11, "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 686
    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move v6, v12

    .line 687
    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 690
    iget-object v12, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->installedServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_7
    const/4 v10, 0x1

    .line 695
    .end local v11    # "componentStates":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Ljava/lang/Integer;>;"
    :cond_8
    if-nez v10, :cond_9

    .line 696
    const-string v11, "other"

    invoke-virtual {v8, v11}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getServiceState(Ljava/lang/String;)I

    move-result v11

    move v6, v11

    .line 698
    :cond_9
    const-string v11, "serviceState"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v9, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 699
    const-string v11, "RegisteredServicesCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "service State:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const-string v11, "service"

    invoke-interface {v7, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 701
    .end local v8    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v10    # "isServiceInstalled":Z
    goto/16 :goto_2

    .line 702
    :cond_a
    const-string v4, "services"

    invoke-interface {v7, v9, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 703
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 704
    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 705
    return v0

    .line 706
    .end local v6    # "state":I
    .end local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .local v8, "state":I
    :catch_0
    move-exception v0

    move v6, v8

    goto :goto_3

    .end local v8    # "state":I
    .restart local v6    # "state":I
    :catch_1
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v4, "RegisteredServicesCache"

    const-string v7, "Failed to write serviceStateFile xml"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 709
    if-eqz v2, :cond_b

    .line 710
    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mServiceStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 712
    :cond_b
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 3
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .line 204
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 205
    .local v1, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    .line 206
    .end local v1    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_0
    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 867
    const-string v0, "Registered HCE services for current user: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v0

    .line 869
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 870
    .local v2, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-virtual {v2, p1, p2, p3}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 871
    const-string v3, ""

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    .end local v2    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    goto :goto_0

    .line 873
    :cond_0
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method dump(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 199
    .local v1, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "RegisteredServicesCache"

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v1    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_0
    goto :goto_0

    .line 201
    :cond_1
    return-void
.end method

.method public getAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/NxpAidGroup;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .line 807
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NxpApduServiceInfo;

    move-result-object v0

    .line 808
    .local v0, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 809
    invoke-virtual {v0}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 810
    const-string v2, "RegisteredServicesCache"

    const-string v3, "UID mismatch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-object v1

    .line 813
    :cond_0
    invoke-virtual {v0, p4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getDynamicNxpAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/NxpAidGroup;

    move-result-object v1

    return-object v1

    .line 815
    :cond_1
    const-string v2, "RegisteredServicesCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return-object v1
.end method

.method public getAllServices()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mAllServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAllStaticHashServices()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mAllServices:Ljava/util/HashMap;

    return-object v0
.end method

.method getInstalledServices(I)Ljava/util/ArrayList;
    .locals 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 245
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mContext:Landroid/content/Context;

    const-string v1, "android"

    const/4 v2, 0x0

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 250
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 249
    nop

    .line 251
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mAllServices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 252
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v1, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    .local v2, "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.nfc.cardemulation.action.OFF_HOST_APDU_SERVICE"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 261
    .local v3, "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 263
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 265
    .local v5, "resolvedService":Landroid/content/pm/ResolveInfo;
    :try_start_1
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 266
    .local v6, "onHost":Z
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 267
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .local v8, "componentName":Landroid/content/ComponentName;
    const-string v9, "android.permission.NFC"

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 271
    const-string v9, "RegisteredServicesCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping application component "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": it must request the permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "android.permission.NFC"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    goto :goto_0

    .line 276
    :cond_0
    const-string v9, "android.permission.BIND_NFC_SERVICE"

    iget-object v10, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 278
    const-string v9, "RegisteredServicesCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipping APDU service "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ": it does not require the permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "android.permission.BIND_NFC_SERVICE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    goto :goto_0

    .line 283
    :cond_1
    new-instance v9, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-direct {v9, v0, v5, v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V

    .line 284
    .local v9, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    nop

    .line 285
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    if-nez v6, :cond_2

    .line 287
    iget-object v10, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mAllServices:Ljava/util/HashMap;

    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v6    # "onHost":Z
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    goto :goto_1

    .line 291
    :catch_0
    move-exception v6

    .line 292
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load component info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v5    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 289
    .restart local v5    # "resolvedService":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v6

    .line 290
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load component info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v5    # "resolvedService":Landroid/content/pm/ResolveInfo;
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    nop

    .line 294
    :goto_2
    goto/16 :goto_0

    .line 295
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->AddGsmaServices(Ljava/util/ArrayList;)V

    .line 296
    return-object v1

    .line 247
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    .end local v2    # "resolvedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "resolvedOffHostServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_2
    move-exception v0

    .line 248
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RegisteredServicesCache"

    const-string v2, "Could not create user package context"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v1, 0x0

    return-object v1
.end method

.method public getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 215
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v1

    .line 217
    .local v1, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    monitor-exit v0

    return-object v2

    .line 218
    .end local v1    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
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
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 225
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 226
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    monitor-exit v1

    .line 227
    return-object v0

    .line 226
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getServicesForCategory(ILjava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 233
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 234
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 235
    .local v4, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-virtual {v4, p2}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {v4, p2}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAidCacheSizeForCategory(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v4    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_0
    goto :goto_0

    .line 238
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :cond_1
    monitor-exit v1

    .line 239
    return-object v0

    .line 238
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public hasService(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NxpApduServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initialize(Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;)V
    .locals 2
    .param p1, "registeredNxpServicesCache"    # Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    .line 189
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    .line 190
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->readDynamicAidsLocked()V

    .line 192
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-virtual {v1}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->readDynamicApduService()V

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 195
    return-void

    .line 193
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public invalidateCache(I)V
    .locals 12
    .param p1, "userId"    # I

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getInstalledServices(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 314
    .local v0, "validServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    if-nez v0, :cond_0

    .line 315
    return-void

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 318
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 321
    .local v2, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    .line 322
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 323
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 324
    nop

    .line 325
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 326
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v5}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->containsServiceLocked(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 327
    const-string v5, "RegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service removed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 330
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    :cond_1
    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 332
    .local v5, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "RegisteredServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " AIDs: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 332
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_3
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .end local v5    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    goto :goto_1

    .line 338
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v4, "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v5, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 342
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 343
    .local v7, "component":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 344
    .local v8, "dynamicAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    iget-object v9, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 345
    .local v9, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v10

    iget v11, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->uid:I

    if-eq v10, v11, :cond_5

    goto :goto_4

    .line 349
    :cond_5
    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/NxpAidGroup;

    .line 350
    .local v11, "group":Landroid/nfc/cardemulation/NxpAidGroup;
    invoke-virtual {v9, v11}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->setOrReplaceDynamicNxpAidGroup(Landroid/nfc/cardemulation/NxpAidGroup;)V

    .line 351
    .end local v11    # "group":Landroid/nfc/cardemulation/NxpAidGroup;
    goto :goto_3

    .line 353
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v8    # "dynamicAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v9    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_6
    goto :goto_2

    .line 346
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .restart local v7    # "component":Landroid/content/ComponentName;
    .restart local v8    # "dynamicAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .restart local v9    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_7
    :goto_4
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    goto :goto_2

    .line 355
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;>;"
    .end local v7    # "component":Landroid/content/ComponentName;
    .end local v8    # "dynamicAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v9    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 356
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 357
    .local v6, "component":Landroid/content/ComponentName;
    const-string v7, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removing dynamic AIDs registered by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .end local v6    # "component":Landroid/content/ComponentName;
    goto :goto_5

    .line 361
    :cond_9
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    .line 363
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->updateServiceStateFromFile(I)V

    .line 364
    const-string v5, "RegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":WriteServiceStateToFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeServiceStateToFile(I)Z

    .line 366
    .end local v2    # "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;>;"
    .end local v4    # "toBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 369
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/util/ArrayList;)V

    .line 370
    return-void

    .line 366
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public registerAidGroupForService(IILandroid/content/ComponentName;Landroid/nfc/cardemulation/NxpAidGroup;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "nxpAidGroup"    # Landroid/nfc/cardemulation/NxpAidGroup;

    .line 755
    const/4 v0, 0x0

    .line 757
    .local v0, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 758
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v2

    .line 760
    .local v2, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NxpApduServiceInfo;

    move-result-object v3

    .line 761
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 762
    const-string v5, "RegisteredServicesCache"

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

    .line 763
    monitor-exit v1

    return v4

    .line 765
    :cond_0
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v5

    if-eq v5, p2, :cond_1

    .line 770
    const-string v5, "RegisteredServicesCache"

    const-string v6, "UID mismatch."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    monitor-exit v1

    return v4

    .line 775
    :cond_1
    invoke-virtual {p4}, Landroid/nfc/cardemulation/NxpAidGroup;->getAids()Ljava/util/List;

    move-result-object v5

    .line 776
    .local v5, "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 777
    .local v7, "aid":Ljava/lang/String;
    invoke-static {v7}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 778
    const-string v6, "RegisteredServicesCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not a valid AID"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    monitor-exit v1

    return v4

    .line 781
    .end local v7    # "aid":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 782
    :cond_3
    invoke-virtual {v3, p4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->setOrReplaceDynamicNxpAidGroup(Landroid/nfc/cardemulation/NxpAidGroup;)V

    .line 783
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 784
    .local v4, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    if-nez v4, :cond_4

    .line 785
    new-instance v6, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    invoke-direct {v6, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;-><init>(I)V

    move-object v4, v6

    .line 786
    iget-object v6, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v6, p3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    :cond_4
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/nfc/cardemulation/NxpAidGroup;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    move-result v6

    .line 790
    .local v6, "success":Z
    if-eqz v6, :cond_5

    .line 791
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v7

    goto :goto_1

    .line 793
    :cond_5
    const-string v7, "RegisteredServicesCache"

    const-string v8, "Failed to persist AID group."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {p4}, Landroid/nfc/cardemulation/NxpAidGroup;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    .end local v2    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v4    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    .end local v5    # "aids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    if-eqz v6, :cond_6

    .line 800
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v1, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 802
    :cond_6
    return v6

    .line 797
    .end local v6    # "success":Z
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public removeAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 10
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "category"    # Ljava/lang/String;

    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, "success":Z
    const/4 v1, 0x0

    .line 824
    .local v1, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const/4 v2, 0x0

    .line 825
    .local v2, "newServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 826
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->findOrCreateUserLocked(I)Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    move-result-object v4

    .line 827
    .local v4, "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    invoke-virtual {p0, p1, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NxpApduServiceInfo;

    move-result-object v5

    move-object v1, v5

    .line 828
    if-eqz v1, :cond_4

    .line 829
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getUid()I

    move-result v5

    const/4 v6, 0x0

    if-eq v5, p2, :cond_0

    .line 831
    const-string v5, "RegisteredServicesCache"

    const-string v7, "UID mismatch"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    monitor-exit v3

    return v6

    .line 834
    :cond_0
    invoke-virtual {v1, p4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->removeDynamicNxpAidGroupForCategory(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 835
    const-string v5, "RegisteredServicesCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " Could not find dynamic AIDs for category "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    monitor-exit v3

    return v6

    .line 839
    :cond_1
    iget-object v5, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->dynamicAids:Ljava/util/HashMap;

    invoke-virtual {v5, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;

    .line 840
    .local v5, "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    if-eqz v5, :cond_3

    .line 841
    iget-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v7, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/NxpAidGroup;

    .line 842
    .local v7, "deletedGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeDynamicAidsLocked()Z

    move-result v8

    move v0, v8

    .line 843
    if-eqz v0, :cond_2

    .line 844
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v6

    .line 850
    .end local v7    # "deletedGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    goto :goto_0

    .line 846
    .restart local v7    # "deletedGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    :cond_2
    const-string v8, "RegisteredServicesCache"

    const-string v9, "Could not persist deleted AID group."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v8, v5, Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;->aidGroups:Ljava/util/HashMap;

    invoke-virtual {v8, p4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    monitor-exit v3

    return v6

    .line 851
    .end local v7    # "deletedGroup":Landroid/nfc/cardemulation/NxpAidGroup;
    :cond_3
    const-string v6, "RegisteredServicesCache"

    const-string v7, "Could not find aid group in local cache."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    .end local v5    # "dynAids":Lcom/android/nfc/cardemulation/RegisteredServicesCache$DynamicAids;
    :goto_0
    goto :goto_1

    .line 854
    :cond_4
    const-string v5, "RegisteredServicesCache"

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

    .line 856
    .end local v4    # "services":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 857
    if-eqz v0, :cond_5

    .line 858
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mCallback:Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;

    invoke-interface {v3, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;->onServicesUpdated(ILjava/util/List;)V

    .line 860
    :cond_5
    if-eqz v1, :cond_6

    const-string v3, "other"

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 861
    const/4 v3, 0x2

    invoke-virtual {v1, p4, v3}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->setServiceState(Ljava/lang/String;I)I

    .line 863
    :cond_6
    return v0

    .line 856
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public updateServiceState(IILjava/util/Map;)I
    .locals 11
    .param p1, "userId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 718
    .local p3, "serviceState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    .line 719
    .local v0, "isWriteSuccess":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-virtual {v1}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->getApduservicesMaps()Ljava/util/HashMap;

    move-result-object v1

    .line 720
    .local v1, "nxpOffHostServiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->getAidRoutingTableStatus()I

    move-result v2

    const/16 v3, 0xff

    if-nez v2, :cond_0

    .line 721
    const-string v2, "RegisteredServicesCache"

    const-string v4, " Aid Routing Table still  availble , No need to disable services"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return v3

    .line 724
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 725
    nop

    .line 726
    :try_start_0
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 727
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 728
    nop

    .line 729
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 730
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 731
    .local v6, "componentName":Landroid/content/ComponentName;
    invoke-virtual {p0, p1, v6}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NxpApduServiceInfo;

    move-result-object v7

    .line 732
    .local v7, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const-string v8, "RegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateServiceState "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const-string v8, "RegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateServiceState  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    if-eqz v7, :cond_1

    .line 735
    const-string v8, "other"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->enableService(Ljava/lang/String;Z)V

    goto :goto_1

    .line 736
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    move-object v7, v8

    if-eqz v8, :cond_2

    .line 738
    const-string v8, "other"

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->enableService(Ljava/lang/String;Z)V

    .line 743
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :goto_1
    goto :goto_0

    .line 740
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .restart local v6    # "componentName":Landroid/content/ComponentName;
    .restart local v7    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_2
    const-string v8, "RegisteredServicesCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not find service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    monitor-exit v2

    return v3

    .line 744
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    .end local v6    # "componentName":Landroid/content/ComponentName;
    .end local v7    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_3
    const-string v5, "RegisteredServicesCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":WriteServiceStateToFile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeServiceStateToFile(I)Z

    move-result v5

    move v0, v5

    .line 746
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 748
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->getLastCommitRoutingStatus()Z

    move-result v2

    .line 749
    .local v2, "isCommitSuccessful":Z
    const-string v4, "RegisteredServicesCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WriteState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "LastCommitStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    nop

    :cond_4
    return v3

    .line 746
    .end local v2    # "isCommitSuccessful":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public updateStatusOfServices(Z)V
    .locals 5
    .param p1, "commitStatus"    # Z

    .line 877
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mUserServices:Landroid/util/SparseArray;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;

    .line 878
    .local v0, "userServices":Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$UserServices;->services:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 879
    .local v2, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const-string v3, "other"

    invoke-virtual {v2, v3}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 880
    goto :goto_0

    .line 882
    :cond_0
    const-string v3, "other"

    invoke-virtual {v2, v3, p1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->updateServiceCommitStatus(Ljava/lang/String;Z)V

    .line 883
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    goto :goto_0

    .line 884
    :cond_1
    const-string v1, "RegisteredServicesCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":WriteServiceStateToFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->writeServiceStateToFile(I)Z

    .line 886
    return-void
.end method

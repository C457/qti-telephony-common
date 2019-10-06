.class public Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
.super Ljava/lang/Object;
.source "GeofenceServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$UserChanged;,
        Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$PackageRemovedReceiver;,
        Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    }
.end annotation


# static fields
.field private static final GEOFENCE_REQUEST_TYPE_ADD:I = 0x1

.field private static final GEOFENCE_REQUEST_TYPE_PAUSE:I = 0x3

.field private static final GEOFENCE_REQUEST_TYPE_REMOVE:I = 0x2

.field private static final GEOFENCE_REQUEST_TYPE_RESUME:I = 0x4

.field private static final GEOFENCE_RESULT_ERROR_GENERIC:I = -0x95

.field private static final GEOFENCE_RESULT_ERROR_ID_EXISTS:I = -0x65

.field private static final GEOFENCE_RESULT_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GEOFENCE_RESULT_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GEOFENCE_RESULT_ERROR_TOO_MANY_GEOFENCES:I = -0x64

.field private static final GEOFENCE_RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GeofenceServiceProvider"

.field private static final VERBOSE:Z

.field private static final sCallBacksLock:Ljava/lang/Object;

.field private static sGeofenceId:I

.field public static sInstance:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;


# instance fields
.field private final mBinder:Lcom/qti/geofence/IGeofenceService$Stub;

.field private final mContext:Landroid/content/Context;

.field private mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/location/izat/DataPerPackageAndUser<",
            "Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;",
            ">;"
        }
    .end annotation
.end field

.field private mGeofenceCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/qti/geofence/IGeofenceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "GeofenceServiceProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->VERBOSE:Z

    .line 47
    const/4 v0, 0x1

    sput v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sGeofenceId:I

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sCallBacksLock:Ljava/lang/Object;

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sInstance:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 680
    invoke-static {}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->native_geofence_class_init()V

    .line 681
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mGeofenceCallbacks:Landroid/os/RemoteCallbackList;

    .line 100
    new-instance v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$1;-><init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mBinder:Lcom/qti/geofence/IGeofenceService$Stub;

    .line 83
    sget-boolean v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "GeofenceServiceProvider"

    const-string v1, "GeofenceServiceProvider construction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mContext:Landroid/content/Context;

    .line 88
    new-instance v0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$UserChanged;

    invoke-direct {v2, p0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$UserChanged;-><init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)V

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;-><init>(Landroid/content/Context;Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    .line 91
    invoke-direct {p0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->native_geofence_init()V

    .line 93
    new-instance v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$PackageRemovedReceiver;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$PackageRemovedReceiver;-><init>(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)V

    .line 94
    .local v0, "pkgRemovedReceiver":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$PackageRemovedReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 33
    sget-object v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sCallBacksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 33
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->native_remove_geofence(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;III)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->native_update_geofence(III)V

    return-void
.end method

.method static synthetic access$1200(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
    .param p1, "x1"    # I

    .line 33
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->native_pause_geofence(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;II)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->native_resume_geofence(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 33
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mGeofenceCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$600(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
    .param p1, "x1"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 33
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->removeAllGeofences(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)V

    return-void
.end method

.method static synthetic access$708()I
    .locals 2

    .line 33
    sget v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sGeofenceId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sGeofenceId:I

    return v0
.end method

.method static synthetic access$900(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;IDDDIIIII)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # D
    .param p4, "x3"    # D
    .param p6, "x4"    # D
    .param p8, "x5"    # I
    .param p9, "x6"    # I
    .param p10, "x7"    # I
    .param p11, "x8"    # I
    .param p12, "x9"    # I

    .line 33
    invoke-direct/range {p0 .. p12}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->native_add_geofence(IDDDIIIII)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 76
    sget-object v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sInstance:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sInstance:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    .line 79
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sInstance:Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;

    return-object v0
.end method

.method private native native_add_geofence(IDDDIIIII)V
.end method

.method private static native native_geofence_class_init()V
.end method

.method private native native_geofence_init()V
.end method

.method private native native_pause_geofence(I)V
.end method

.method private native native_remove_geofence(I)V
.end method

.method private native native_resume_geofence(II)V
.end method

.method private native native_update_geofence(III)V
.end method

.method private removeAllGeofences(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)V
    .locals 4
    .param p1, "clData"    # Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 579
    sget-boolean v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "GeofenceServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing all geofences for package and user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 584
    :try_start_0
    invoke-static {p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 585
    .local v2, "key":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->native_remove_geofence(I)V

    .line 586
    .end local v2    # "key":Ljava/lang/Integer;
    goto :goto_0

    .line 587
    :cond_1
    invoke-static {p1}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 588
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-virtual {v0, p1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->removeData(Lcom/qualcomm/location/izat/CallbackData;)V

    .line 591
    return-void

    .line 588
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private reportGeofenceRequestStatus(III)V
    .locals 5
    .param p1, "requestType"    # I
    .param p2, "geofenceId"    # I
    .param p3, "status"    # I

    .line 531
    sget-boolean v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "GeofenceServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportGeofenceRequestStatus requestType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-virtual {v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getAllData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 538
    .local v2, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_2

    .line 540
    :try_start_1
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$200(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Lcom/qti/geofence/IGeofenceCallback;

    move-result-object v1

    invoke-interface {v1, p2, p1, p3}, Lcom/qti/geofence/IGeofenceCallback;->onRequestResultReturned(III)V

    .line 544
    const/4 v1, 0x1

    if-ne v1, p1, :cond_1

    if-eqz p3, :cond_1

    .line 546
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 547
    :try_start_2
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 552
    :cond_1
    :goto_1
    goto :goto_2

    .line 550
    :catch_0
    move-exception v1

    .line 553
    :goto_2
    :try_start_4
    monitor-exit v0

    return-void

    .line 555
    .end local v2    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :cond_2
    goto :goto_0

    .line 556
    :cond_3
    monitor-exit v0

    .line 557
    return-void

    .line 556
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private reportGeofenceStatus(ILandroid/location/Location;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 561
    sget-boolean v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 562
    const-string v0, "GeofenceServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportGeofenceStatus - status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mGeofenceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 568
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mGeofenceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/qti/geofence/IGeofenceCallback;

    invoke-interface {v3, p1, p2}, Lcom/qti/geofence/IGeofenceCallback;->onEngineReportStatus(ILandroid/location/Location;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 571
    goto :goto_1

    .line 569
    :catch_0
    move-exception v3

    .line 566
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    .end local v2    # "i":I
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mGeofenceCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 574
    .end local v1    # "index":I
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private reportGeofenceTransition(IILandroid/location/Location;)V
    .locals 9
    .param p1, "geofenceId"    # I
    .param p2, "transition"    # I
    .param p3, "location"    # Landroid/location/Location;

    .line 466
    sget-boolean v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 467
    const-string v0, "GeofenceServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportGeofenceTransition id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; transition : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 471
    sget-object v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-virtual {v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getAllData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 473
    .local v2, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 474
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qti/geofence/GeofenceData;

    .line 475
    .local v1, "gfData":Lcom/qti/geofence/GeofenceData;
    invoke-virtual {v1}, Lcom/qti/geofence/GeofenceData;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 476
    sget-boolean v3, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->VERBOSE:Z

    if-eqz v3, :cond_8

    .line 477
    const-string v3, "GeofenceServiceProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Breach event with paused geofence: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 482
    :cond_1
    sget-boolean v3, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->VERBOSE:Z

    if-eqz v3, :cond_2

    .line 483
    const-string v3, "GeofenceServiceProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending breach event to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$400(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 488
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 489
    .local v4, "pdIntent":Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/qti/geofence/GeofenceData;->getAppTextData()Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "gfCtxStringData":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 491
    const-string v6, "context-data"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 493
    :cond_3
    invoke-virtual {v1}, Lcom/qti/geofence/GeofenceData;->getAppBundleData()Landroid/os/Bundle;

    move-result-object v6

    .line 494
    .local v6, "gfCtxBundleData":Landroid/os/Bundle;
    if-eqz v6, :cond_4

    .line 495
    const-string v7, "context-data"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 498
    .end local v6    # "gfCtxBundleData":Landroid/os/Bundle;
    :cond_4
    :goto_1
    const-string v6, "transition-location"

    invoke-virtual {v4, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 499
    const-string v6, "transition-event"

    invoke-virtual {v4, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$400(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Landroid/app/PendingIntent;

    move-result-object v6

    iget-object v7, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    .end local v4    # "pdIntent":Landroid/content/Intent;
    .end local v5    # "gfCtxStringData":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 503
    :catch_0
    move-exception v4

    .line 504
    .local v4, "e":Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    invoke-static {v2, v3}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$402(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    .end local v4    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_2
    :try_start_3
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$200(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Lcom/qti/geofence/IGeofenceCallback;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 509
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$200(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Lcom/qti/geofence/IGeofenceCallback;

    move-result-object v4

    invoke-interface {v4, p1, p2, p3}, Lcom/qti/geofence/IGeofenceCallback;->onTransitionEvent(IILandroid/location/Location;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 515
    :cond_6
    goto :goto_3

    .line 513
    :catch_1
    move-exception v4

    .line 514
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_4
    invoke-static {v2, v3}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$202(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;Lcom/qti/geofence/IGeofenceCallback;)Lcom/qti/geofence/IGeofenceCallback;

    .line 517
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_3
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$400(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Landroid/app/PendingIntent;

    move-result-object v3

    if-nez v3, :cond_8

    .line 518
    invoke-static {v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$200(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Lcom/qti/geofence/IGeofenceCallback;

    move-result-object v3

    if-nez v3, :cond_8

    .line 519
    invoke-direct {p0, v2}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->removeAllGeofences(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)V

    goto :goto_4

    .line 524
    .end local v1    # "gfData":Lcom/qti/geofence/GeofenceData;
    .end local v2    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :cond_7
    goto/16 :goto_0

    .line 525
    :cond_8
    :goto_4
    monitor-exit v0

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private reportServiceDied()V
    .locals 21

    .line 657
    move-object/from16 v13, p0

    sget-boolean v0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 658
    const-string v0, "GeofenceServiceProvider"

    const-string v1, "GeofenceServiceDied, initializing..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    iget-object v0, v13, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-virtual {v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getAllData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;

    .line 663
    .local v15, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    invoke-static {v15}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/Integer;

    .line 664
    .local v11, "geofenceId":Ljava/lang/Integer;
    invoke-static {v15}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;->access$800(Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/qti/geofence/GeofenceData;

    .line 666
    .local v10, "gfData":Lcom/qti/geofence/GeofenceData;
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v13, v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->native_remove_geofence(I)V

    .line 667
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10}, Lcom/qti/geofence/GeofenceData;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v10}, Lcom/qti/geofence/GeofenceData;->getLongitude()D

    move-result-wide v4

    .line 668
    invoke-virtual {v10}, Lcom/qti/geofence/GeofenceData;->getRadius()D

    move-result-wide v6

    invoke-virtual {v10}, Lcom/qti/geofence/GeofenceData;->getTransitionType()Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/geofence/GeofenceData$GeofenceTransitionTypes;->getValue()I

    move-result v8

    .line 669
    invoke-virtual {v10}, Lcom/qti/geofence/GeofenceData;->getNotifyResponsiveness()I

    move-result v9

    invoke-virtual {v10}, Lcom/qti/geofence/GeofenceData;->getConfidence()Lcom/qti/geofence/GeofenceData$GeofenceConfidence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/geofence/GeofenceData$GeofenceConfidence;->getValue()I

    move-result v16

    .line 670
    invoke-virtual {v10}, Lcom/qti/geofence/GeofenceData;->getDwellTime()I

    move-result v17

    invoke-virtual {v10}, Lcom/qti/geofence/GeofenceData;->getDwellType()Lcom/qti/geofence/GeofenceData$DwellTypes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qti/geofence/GeofenceData$DwellTypes;->getValue()I

    move-result v18

    .line 667
    move-object v0, v13

    move-object/from16 v19, v14

    move-object v14, v10

    move/from16 v10, v16

    .end local v10    # "gfData":Lcom/qti/geofence/GeofenceData;
    .local v14, "gfData":Lcom/qti/geofence/GeofenceData;
    move-object/from16 v20, v15

    move-object v15, v11

    move/from16 v11, v17

    .end local v11    # "geofenceId":Ljava/lang/Integer;
    .local v15, "geofenceId":Ljava/lang/Integer;
    .local v20, "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    move-object/from16 v16, v12

    move/from16 v12, v18

    invoke-direct/range {v0 .. v12}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->native_add_geofence(IDDDIIIII)V

    .line 672
    invoke-virtual {v14}, Lcom/qti/geofence/GeofenceData;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v13, v0}, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->native_pause_geofence(I)V

    .line 675
    .end local v14    # "gfData":Lcom/qti/geofence/GeofenceData;
    .end local v15    # "geofenceId":Ljava/lang/Integer;
    :cond_1
    nop

    .line 663
    move-object/from16 v12, v16

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    goto :goto_1

    .line 676
    .end local v20    # "clData":Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider$ClientGeofenceData;
    :cond_2
    move-object/from16 v19, v14

    goto/16 :goto_0

    .line 677
    :cond_3
    return-void
.end method


# virtual methods
.method public getGeofenceBinder()Lcom/qti/geofence/IGeofenceService;
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/qualcomm/location/izat/geofence/GeofenceServiceProvider;->mBinder:Lcom/qti/geofence/IGeofenceService$Stub;

    return-object v0
.end method

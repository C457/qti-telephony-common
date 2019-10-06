.class public Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;
.super Ljava/lang/Object;
.source "GnssConfigService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$UserChanged;,
        Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GnssConfigService"

.field private static final VERBOSE:Z

.field private static final sCallBacksLock:Ljava/lang/Object;

.field public static sInstance:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;


# instance fields
.field private final mBinder:Lcom/qti/gnssconfig/IGnssConfigService$Stub;

.field private final mContext:Landroid/content/Context;

.field private mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/location/izat/DataPerPackageAndUser<",
            "Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssConfigCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/qti/gnssconfig/IGnssConfigCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-string v0, "GnssConfigService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->VERBOSE:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->sCallBacksLock:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->sInstance:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 199
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->native_gnssconfig_class_init()V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->mGnssConfigCallbacks:Landroid/os/RemoteCallbackList;

    .line 66
    new-instance v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;-><init>(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->mBinder:Lcom/qti/gnssconfig/IGnssConfigService$Stub;

    .line 54
    sget-boolean v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "GnssConfigService"

    const-string v1, "GnssConfigService construction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    iget-object v1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$UserChanged;

    invoke-direct {v2, p0}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$UserChanged;-><init>(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)V

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;-><init>(Landroid/content/Context;Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    .line 62
    invoke-direct {p0}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->native_gnssconfig_init()V

    .line 63
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 25
    sget-object v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->sCallBacksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 25
    iget-object v0, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 25
    iget-object v0, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->mGnssConfigCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 25
    invoke-direct {p0}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->native_gnssconfig_getGnssSvTypeConfig()V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;
    .param p1, "x1"    # [I

    .line 25
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->native_gnssconfig_setGnssSvTypeConfig([I)V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 25
    invoke-direct {p0}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->native_gnssconfig_resetGnssSvTypeConfig()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 47
    sget-object v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->sInstance:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->sInstance:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 50
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->sInstance:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    return-object v0
.end method

.method private static native native_gnssconfig_class_init()V
.end method

.method private native native_gnssconfig_getGnssSvTypeConfig()V
.end method

.method private native native_gnssconfig_init()V
.end method

.method private native native_gnssconfig_resetGnssSvTypeConfig()V
.end method

.method private native native_gnssconfig_setGnssSvTypeConfig([I)V
.end method

.method private onGnssSvTypeConfigCb([I)V
    .locals 6
    .param p1, "disabledSvTypeArray"    # [I

    .line 155
    sget-object v0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    const-string v1, "GnssConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGnssSvTypeConfigCb: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-virtual {v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getAllData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;

    .line 160
    .local v2, "clData":Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    sget-boolean v3, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->VERBOSE:Z

    if-eqz v3, :cond_0

    .line 161
    const-string v3, "GnssConfigService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invoking cb for client: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->access$300(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;)Lcom/qti/gnssconfig/IGnssConfigCallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/qti/gnssconfig/IGnssConfigCallback;->getGnssSvTypeConfigCb([I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    goto :goto_1

    .line 165
    :catch_0
    move-exception v3

    .line 166
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "GnssConfigService"

    const-string v5, "onGnssSvTypeConfigCb: Failed to invoke cb"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v2    # "clData":Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 169
    :cond_1
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public getGnssConfigBinder()Lcom/qti/gnssconfig/IGnssConfigService;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->mBinder:Lcom/qti/gnssconfig/IGnssConfigService$Stub;

    return-object v0
.end method

.class public Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
.super Ljava/lang/Object;
.source "FlpServiceProvider.java"

# interfaces
.implements Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;,
        Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;,
        Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;,
        Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    }
.end annotation


# static fields
.field private static final BATCHING_MODE_OUTDOOR_TRIP:I = 0x1

.field private static final BATCHING_MODE_ROUTINE:I = 0x0

.field private static final BATCHING_STATUS_POSITION_AVAILABE:I = 0x1

.field private static final BATCHING_STATUS_POSITION_UNAVAILABLE:I = 0x2

.field private static final BATCHING_STATUS_TRIP_COMPLETED:I = 0x0

.field private static final FLP_BG_NOTIFICATION_OUTDOOR_TRIP:I = 0x3

.field private static final FLP_BG_NOTIFICATION_ROUTINE:I = 0x1

.field private static final FLP_PASSIVE_LISTENER_HW_ID:I = -0x1

.field private static final FLP_RESULT_ERROR:I = -0x1

.field private static final FLP_RESULT_SUCCESS:I = 0x0

.field private static final FLP_SESSION_BACKGROUND:I = 0x1

.field private static final FLP_SESSION_FOREGROUND:I = 0x2

.field private static final FLP_SESSION_PASSIVE:I = 0x4

.field private static final LOCATION_REPORT_ON_FIX_INDICATION:I = 0x2

.field private static final LOCATION_REPORT_ON_FULL_INDICATION:I = 0x1

.field private static final LOCATION_REPORT_ON_INDICATIONS:I = 0x8

.field private static final LOCATION_REPORT_ON_QUERY:I = 0x4

.field private static final MAX_STARTTIME_DELTA_MS:I = 0xea60

.field private static final MSG_UPDATE_HIGHPOWER_MONITOR:I = 0x0

.field private static final POWER_MODE_INVALID:I = 0x0

.field private static final POWER_MODE_M1:I = 0x0

.field private static final POWER_MODE_M2:I = 0x0

.field private static final POWER_MODE_M3:I = 0x0

.field private static final POWER_MODE_M4:I = 0x0

.field private static final POWER_MODE_M5:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FlpServiceProvider"

.field private static final VERBOSE:Z

.field private static final sCallBacksLock:Ljava/lang/Object;

.field public static sInstance:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

.field private static final sLocationSettingsLock:Ljava/lang/Object;

.field private static final sStatusCallbacksLock:Ljava/lang/Object;


# instance fields
.field private mAppOpsMgr:Landroid/app/AppOpsManager;

.field private final mBinder:Lcom/qti/flp/IFlpService$Stub;

.field private mCallbacksForBg:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/qti/flp/ILocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksForFg:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/qti/flp/ILocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksForPassive:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/qti/flp/ILocationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacksForStatus:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/qti/flp/ISessionStatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qualcomm/location/izat/DataPerPackageAndUser<",
            "Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;",
            ">;"
        }
    .end annotation
.end field

.field private mFlpFeaturMasks:I

.field private mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

.field private mHandler:Landroid/os/Handler;

.field private mIsLocationSettingsOn:Z

.field private final mLocationSettingsHelper:Lcom/qualcomm/location/izat/LocationSettingsHelper;

.field private final mLooper:Landroid/os/Looper;

.field private mMaxPowerCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/qti/flp/IMaxPowerAllocatedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mTestingBinder:Lcom/qti/flp/ITestService$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-string v0, "FlpServiceProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sCallBacksLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sStatusCallbacksLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sLocationSettingsLock:Ljava/lang/Object;

    .line 194
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sInstance:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 1238
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_class_init()V

    .line 1239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForBg:Landroid/os/RemoteCallbackList;

    .line 140
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForFg:Landroid/os/RemoteCallbackList;

    .line 142
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForPassive:Landroid/os/RemoteCallbackList;

    .line 144
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mMaxPowerCallbacks:Landroid/os/RemoteCallbackList;

    .line 146
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForStatus:Landroid/os/RemoteCallbackList;

    .line 174
    new-instance v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpFeaturMasks:I

    .line 296
    new-instance v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mBinder:Lcom/qti/flp/IFlpService$Stub;

    .line 727
    new-instance v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mTestingBinder:Lcom/qti/flp/ITestService$Stub;

    .line 205
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "FlpServiceProvider"

    const-string v1, "FlpServiceProvider construction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mContext:Landroid/content/Context;

    .line 209
    invoke-direct {p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_init()I

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "FlpServiceProvider"

    const-string v1, "native flp init failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    invoke-static {p1}, Lcom/qualcomm/location/izat/LocationSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/LocationSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mLocationSettingsHelper:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    .line 213
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mLocationSettingsHelper:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    invoke-virtual {v0, p0}, Lcom/qualcomm/location/izat/LocationSettingsHelper;->registerForLocationSettingsCallback(Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;)V

    .line 214
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mLocationSettingsHelper:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    iget-boolean v0, v0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mIsLocationSettingsOn:Z

    iput-boolean v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mIsLocationSettingsOn:Z

    .line 216
    new-instance v0, Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;

    invoke-direct {v2, p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$UserChanged;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;-><init>(Landroid/content/Context;Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    .line 218
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    invoke-virtual {v0}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->useCommonPackage()V

    .line 219
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-virtual {v0, v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->setData(Lcom/qualcomm/location/izat/CallbackData;)V

    .line 221
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "t":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 223
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mLooper:Landroid/os/Looper;

    .line 224
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mHandler:Landroid/os/Handler;

    .line 225
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mAppOpsMgr:Landroid/app/AppOpsManager;

    .line 226
    return-void
.end method

.method private static final MilliToNano(J)J
    .locals 2
    .param p0, "millis"    # J

    .line 88
    const-wide v0, 0x8637bd05af6L

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    :goto_0
    return-wide v0
.end method

.method static synthetic access$000(J)J
    .locals 2
    .param p0, "x0"    # J

    .line 40
    invoke-static {p0, p1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->MilliToNano(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 40
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForBg:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForFg:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForPassive:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/Object;
    .locals 1

    .line 40
    sget-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sCallBacksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    .param p1, "x1"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 40
    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForStatus:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$2500()Ljava/lang/Object;
    .locals 1

    .line 40
    sget-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sStatusCallbacksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    iget v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpFeaturMasks:I

    return v0
.end method

.method static synthetic access$2702(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    .param p1, "x1"    # I

    .line 40
    iput p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpFeaturMasks:I

    return p1
.end method

.method static synthetic access$2800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    invoke-direct {p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_get_all_supported_features()I

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mDataPerPackageAndUser:Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200()Ljava/lang/Object;
    .locals 1

    .line 40
    sget-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sLocationSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    iget-boolean v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mIsLocationSettingsOn:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;IIJIJIJ)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # J
    .param p8, "x6"    # I
    .param p9, "x7"    # J

    .line 40
    invoke-direct/range {p0 .. p10}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_start_session(IIJIJIJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;IIJIJIJ)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # J
    .param p8, "x6"    # I
    .param p9, "x7"    # J

    .line 40
    invoke-direct/range {p0 .. p10}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_update_session(IIJIJIJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;I)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_stop_session(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;I)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_get_all_locations(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;J)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    .param p1, "x1"    # J

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_delete_aiding_data(J)V

    return-void
.end method

.method static synthetic access$4100(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    .param p1, "x1"    # Z

    .line 40
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_update_xtra_throttle(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mMaxPowerCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    invoke-direct {p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_get_max_power_allocated_in_mw()V

    return-void
.end method

.method static synthetic access$4500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    invoke-direct {p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->stopFlpSessions()V

    return-void
.end method

.method static synthetic access$4600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 40
    invoke-direct {p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->startFlpSessions()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .line 196
    sget-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sInstance:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    if-nez v0, :cond_0

    .line 197
    new-instance v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sInstance:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 199
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sInstance:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    return-object v0
.end method

.method private getOffset(J[Landroid/location/Location;)I
    .locals 6
    .param p1, "sessionStartTime"    # J
    .param p3, "locations"    # [Landroid/location/Location;

    .line 1188
    const/4 v0, -0x1

    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "left":I
    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    .line 1189
    .local v2, "right":I
    :goto_0
    if-gt v1, v2, :cond_3

    .line 1190
    add-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    .line 1192
    .local v3, "mid":I
    aget-object v4, p3, v3

    .line 1193
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    .line 1194
    move v0, v3

    .line 1195
    goto :goto_1

    .line 1197
    :cond_0
    aget-object v4, p3, v3

    .line 1198
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    .line 1199
    add-int/lit8 v1, v3, 0x1

    .line 1201
    :cond_1
    aget-object v4, p3, v3

    .line 1202
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_2

    .line 1203
    add-int/lit8 v3, v3, -0x1

    .line 1205
    .end local v2    # "right":I
    .local v3, "right":I
    move v2, v3

    .end local v3    # "right":I
    .restart local v2    # "right":I
    :cond_2
    goto :goto_0

    .line 1206
    :cond_3
    :goto_1
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 1207
    move v0, v1

    .line 1210
    :cond_4
    sget-boolean v3, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v3, :cond_5

    .line 1211
    const-string v3, "FlpServiceProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offset : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :cond_5
    return v0
.end method

.method private static native native_flp_class_init()V
.end method

.method private native native_flp_delete_aiding_data(J)V
.end method

.method private native native_flp_get_all_locations(I)I
.end method

.method private native native_flp_get_all_supported_features()I
.end method

.method private native native_flp_get_max_power_allocated_in_mw()V
.end method

.method private native native_flp_init()I
.end method

.method private native native_flp_start_session(IIJIJIJ)I
.end method

.method private native native_flp_stop_session(I)I
.end method

.method private native native_flp_update_session(IIJIJIJ)I
.end method

.method private native native_flp_update_xtra_throttle(Z)V
.end method

.method private onBatchingStatusCb(I[I)V
    .locals 6
    .param p1, "batchingStatus"    # I
    .param p2, "completedTripClientIds"    # [I

    .line 1028
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1029
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entering onBatchingStatusCb batchingStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    sget-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sStatusCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1032
    const/4 v1, 0x0

    .line 1034
    .local v1, "completedTripClientList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 1035
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, p2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v3

    .line 1036
    move v3, v2

    .local v3, "index":I
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    .line 1037
    aget v4, p2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1036
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1062
    .end local v1    # "completedTripClientList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "index":I
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 1041
    .restart local v1    # "completedTripClientList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForStatus:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1042
    .local v3, "broadcastCount":I
    nop

    .local v2, "broadcastIndex":I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 1044
    if-eqz p1, :cond_2

    .line 1045
    :try_start_1
    iget-object v4, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForStatus:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/qti/flp/ISessionStatusCallback;

    invoke-interface {v4, p1}, Lcom/qti/flp/ISessionStatusCallback;->onBatchingStatusCb(I)V

    goto :goto_2

    .line 1056
    :catch_0
    move-exception v4

    goto :goto_3

    .line 1048
    :cond_2
    iget-object v4, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForStatus:Landroid/os/RemoteCallbackList;

    .line 1049
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1050
    .local v4, "sessionId":I
    if-eqz v1, :cond_3

    .line 1051
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1052
    iget-object v5, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForStatus:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/qti/flp/ISessionStatusCallback;

    invoke-interface {v5, p1}, Lcom/qti/flp/ISessionStatusCallback;->onBatchingStatusCb(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1059
    .end local v4    # "sessionId":I
    :cond_3
    :goto_2
    goto :goto_4

    .line 1056
    :goto_3
    nop

    .line 1042
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1061
    .end local v2    # "broadcastIndex":I
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForStatus:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1062
    .end local v1    # "completedTripClientList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v3    # "broadcastCount":I
    monitor-exit v0

    .line 1063
    return-void

    .line 1062
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private onLocationReport([Landroid/location/Location;II)V
    .locals 27
    .param p1, "locations"    # [Landroid/location/Location;
    .param p2, "reportTrigger"    # I
    .param p3, "batchingMode"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 788
    move/from16 v4, p3

    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 789
    const-string v0, "FlpServiceProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entering onLocationReport() reportTrigger is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; Batching Mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "; and the first timestamp is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v5

    .line 791
    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 789
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    .line 794
    .local v6, "elapsedTime":J
    array-length v0, v2

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    .line 797
    .local v9, "timeStamp":J
    move v0, v5

    .local v0, "i":I
    :goto_0
    array-length v11, v2

    if-ge v0, v11, :cond_1

    .line 798
    aget-object v11, v2, v0

    aget-object v12, v2, v0

    .line 799
    invoke-virtual {v12}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v12, v9, v12

    const-wide/32 v14, 0xf4240

    mul-long/2addr v12, v14

    sub-long v12, v6, v12

    .line 798
    invoke-virtual {v11, v12, v13}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 797
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 802
    .end local v0    # "i":I
    :cond_1
    if-ne v3, v8, :cond_d

    .line 804
    sget-object v13, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v13

    .line 805
    :try_start_0
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForBg:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v14, v0

    .line 806
    .local v14, "index":I
    move v0, v5

    .restart local v0    # "i":I
    :goto_1
    move v15, v0

    .end local v0    # "i":I
    .local v15, "i":I
    if-ge v15, v14, :cond_c

    .line 808
    :try_start_1
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForBg:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v15}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 809
    .local v0, "sessionId":I
    iget-object v5, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-static {v5}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 810
    .local v5, "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    if-nez v5, :cond_2

    .line 811
    :try_start_2
    const-string v11, "FlpServiceProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No Background session data found for id:"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 812
    nop

    .line 806
    move-wide/from16 v22, v6

    goto/16 :goto_6

    .line 860
    .end local v0    # "sessionId":I
    .end local v5    # "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    .end local v14    # "index":I
    .end local v15    # "i":I
    :catchall_0
    move-exception v0

    move-wide/from16 v22, v6

    goto/16 :goto_7

    .line 854
    .restart local v14    # "index":I
    .restart local v15    # "i":I
    :catch_0
    move-exception v0

    move-wide/from16 v22, v6

    goto/16 :goto_6

    .line 814
    .restart local v0    # "sessionId":I
    .restart local v5    # "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    :cond_2
    :try_start_3
    invoke-static {v5}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->access$2100(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;)J

    move-result-wide v11

    .line 815
    .local v11, "sessionStartTime":J
    array-length v8, v2

    const/16 v18, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v2, v8

    .line 816
    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v19
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide/32 v16, 0xea60

    add-long v19, v19, v16

    cmp-long v8, v11, v19

    if-lez v8, :cond_4

    .line 817
    :try_start_4
    sget-boolean v8, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v8, :cond_3

    .line 818
    const-string v8, "FlpServiceProvider"

    move/from16 v21, v0

    const-string v0, "Future start time detected, returning whole batch"

    .end local v0    # "sessionId":I
    .local v21, "sessionId":I
    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 820
    .end local v21    # "sessionId":I
    .restart local v0    # "sessionId":I
    :cond_3
    move/from16 v21, v0

    .end local v0    # "sessionId":I
    .restart local v21    # "sessionId":I
    :goto_2
    const/4 v8, 0x0

    aget-object v0, v2, v8

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v19
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-wide/from16 v11, v19

    goto :goto_3

    .line 823
    .end local v21    # "sessionId":I
    .restart local v0    # "sessionId":I
    :cond_4
    move/from16 v21, v0

    .end local v0    # "sessionId":I
    .restart local v21    # "sessionId":I
    :goto_3
    :try_start_5
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_5

    .line 824
    const-string v0, "FlpServiceProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide/from16 v22, v6

    :try_start_6
    const-string v6, "in the mCallbacksForBg loop : "

    .end local v6    # "elapsedTime":J
    .local v22, "elapsedTime":J
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; timestamp is "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "; notification Type is "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-static {v5}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->access$3000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;)I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 824
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 828
    .end local v22    # "elapsedTime":J
    .restart local v6    # "elapsedTime":J
    :cond_5
    move-wide/from16 v22, v6

    .end local v6    # "elapsedTime":J
    .restart local v22    # "elapsedTime":J
    :goto_4
    invoke-static {v5}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->access$3000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;)I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_6

    if-eqz v4, :cond_7

    .line 830
    :cond_6
    invoke-static {v5}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->access$3000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;)I

    move-result v0

    const/4 v6, 0x3

    if-ne v0, v6, :cond_b

    const/4 v6, 0x1

    if-ne v4, v6, :cond_b

    .line 832
    :cond_7
    const/4 v6, 0x0

    aget-object v0, v2, v6

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v0, v11, v6

    if-gtz v0, :cond_9

    .line 834
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_8

    .line 835
    const-string v0, "FlpServiceProvider"

    const-string v6, "return whole batch"

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_8
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForBg:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/qti/flp/ILocationCallback;

    invoke-interface {v0, v2}, Lcom/qti/flp/ILocationCallback;->onLocationAvailable([Landroid/location/Location;)V

    goto :goto_5

    .line 838
    :cond_9
    array-length v0, v2

    const/4 v6, 0x1

    sub-int/2addr v0, v6

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v0, v11, v6

    if-lez v0, :cond_a

    .line 839
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_b

    .line 840
    const-string v0, "FlpServiceProvider"

    const-string v6, "no need to return"

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 844
    :cond_a
    invoke-direct {v1, v11, v12, v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->getOffset(J[Landroid/location/Location;)I

    move-result v0

    .line 845
    .local v0, "offset":I
    array-length v6, v2

    sub-int/2addr v6, v0

    new-array v6, v6, [Landroid/location/Location;

    .line 846
    .local v6, "newResult":[Landroid/location/Location;
    array-length v7, v2

    sub-int/2addr v7, v0

    const/4 v8, 0x0

    invoke-static {v2, v0, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 851
    iget-object v7, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForBg:Landroid/os/RemoteCallbackList;

    invoke-virtual {v7, v15}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Lcom/qti/flp/ILocationCallback;

    invoke-interface {v7, v6}, Lcom/qti/flp/ILocationCallback;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 857
    .end local v0    # "offset":I
    .end local v5    # "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    .end local v6    # "newResult":[Landroid/location/Location;
    .end local v11    # "sessionStartTime":J
    .end local v21    # "sessionId":I
    :cond_b
    :goto_5
    goto :goto_6

    .line 854
    :catch_1
    move-exception v0

    goto :goto_6

    .end local v22    # "elapsedTime":J
    .local v6, "elapsedTime":J
    :catch_2
    move-exception v0

    move-wide/from16 v22, v6

    .line 806
    .end local v6    # "elapsedTime":J
    .restart local v22    # "elapsedTime":J
    :goto_6
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "i":I
    .local v0, "i":I
    move-wide/from16 v6, v22

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 859
    .end local v0    # "i":I
    .end local v22    # "elapsedTime":J
    .restart local v6    # "elapsedTime":J
    :cond_c
    move-wide/from16 v22, v6

    .end local v6    # "elapsedTime":J
    .restart local v22    # "elapsedTime":J
    :try_start_7
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForBg:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 860
    .end local v14    # "index":I
    monitor-exit v13

    goto/16 :goto_10

    .end local v22    # "elapsedTime":J
    .restart local v6    # "elapsedTime":J
    :catchall_1
    move-exception v0

    move-wide/from16 v22, v6

    .end local v6    # "elapsedTime":J
    .restart local v22    # "elapsedTime":J
    :goto_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 861
    .end local v22    # "elapsedTime":J
    .restart local v6    # "elapsedTime":J
    :cond_d
    move-wide/from16 v22, v6

    .end local v6    # "elapsedTime":J
    .restart local v22    # "elapsedTime":J
    const/4 v0, 0x2

    if-ne v3, v0, :cond_16

    .line 863
    sget-object v5, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v5

    .line 864
    :try_start_8
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForFg:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move v6, v0

    .line 865
    .local v6, "index":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8
    move v7, v0

    .end local v0    # "i":I
    .local v7, "i":I
    if-ge v7, v6, :cond_15

    .line 867
    :try_start_9
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForFg:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 869
    .restart local v11    # "sessionStartTime":J
    array-length v0, v2

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    aget-object v0, v2, v0

    .line 870
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    const-wide/32 v16, 0xea60

    add-long v13, v13, v16

    cmp-long v0, v11, v13

    if-lez v0, :cond_f

    .line 871
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_e

    .line 872
    const-string v0, "FlpServiceProvider"

    const-string v8, "Future start time detected, returning whole batch"

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_e
    const/4 v8, 0x0

    aget-object v0, v2, v8

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    move-wide v11, v13

    .line 876
    :cond_f
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_10

    .line 877
    const-string v0, "FlpServiceProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "in the mCallbacksForFg loop : "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "; cd timestamp is"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :cond_10
    const/4 v8, 0x0

    aget-object v0, v2, v8

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-gtz v0, :cond_12

    .line 882
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_11

    .line 883
    const-string v0, "FlpServiceProvider"

    const-string v8, "return whole batch"

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_11
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForFg:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/qti/flp/ILocationCallback;

    invoke-interface {v0, v2}, Lcom/qti/flp/ILocationCallback;->onLocationAvailable([Landroid/location/Location;)V

    goto :goto_9

    .line 886
    :cond_12
    array-length v0, v2

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-lez v0, :cond_13

    .line 887
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_14

    .line 888
    const-string v0, "FlpServiceProvider"

    const-string v8, "no need to return"

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 892
    :cond_13
    invoke-direct {v1, v11, v12, v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->getOffset(J[Landroid/location/Location;)I

    move-result v0

    .line 893
    .local v0, "offset":I
    array-length v8, v2

    sub-int/2addr v8, v0

    new-array v8, v8, [Landroid/location/Location;

    .line 894
    .local v8, "newResult":[Landroid/location/Location;
    array-length v13, v2

    sub-int/2addr v13, v0

    const/4 v14, 0x0

    invoke-static {v2, v0, v8, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 899
    iget-object v13, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForFg:Landroid/os/RemoteCallbackList;

    invoke-virtual {v13, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v13

    check-cast v13, Lcom/qti/flp/ILocationCallback;

    invoke-interface {v13, v8}, Lcom/qti/flp/ILocationCallback;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 904
    .end local v0    # "offset":I
    .end local v8    # "newResult":[Landroid/location/Location;
    .end local v11    # "sessionStartTime":J
    :cond_14
    :goto_9
    goto :goto_a

    .line 901
    :catch_3
    move-exception v0

    .line 865
    :goto_a
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "i":I
    .local v0, "i":I
    goto/16 :goto_8

    .line 906
    .end local v0    # "i":I
    :cond_15
    :try_start_a
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForFg:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 907
    .end local v6    # "index":I
    monitor-exit v5

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v0

    .line 908
    :cond_16
    const/4 v0, 0x4

    if-ne v3, v0, :cond_21

    .line 909
    sget-object v5, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v5

    .line 910
    :try_start_b
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$3800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 911
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$3800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object v6, v0

    .line 912
    .local v6, "cbPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/qti/flp/ILocationCallback;Ljava/lang/Long;>;"
    if-eqz v6, :cond_1f

    .line 915
    :try_start_c
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/qti/flp/ILocationCallback;

    .line 916
    .local v0, "callback":Lcom/qti/flp/ILocationCallback;
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 917
    .local v7, "sessionStartTime":J
    sget-boolean v11, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v11, :cond_17

    .line 918
    :try_start_d
    const-string v11, "FlpServiceProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calling callback for pulling, sessionStartTime is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_b

    .line 958
    .end local v0    # "callback":Lcom/qti/flp/ILocationCallback;
    .end local v7    # "sessionStartTime":J
    :catch_4
    move-exception v0

    move-object/from16 v24, v6

    goto/16 :goto_e

    .line 922
    .restart local v0    # "callback":Lcom/qti/flp/ILocationCallback;
    .restart local v7    # "sessionStartTime":J
    :cond_17
    :goto_b
    const/4 v11, 0x0

    :try_start_e
    aget-object v12, v2, v11

    invoke-virtual {v12}, Landroid/location/Location;->getTime()J

    move-result-wide v11
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    cmp-long v11, v7, v11

    if-gtz v11, :cond_19

    .line 924
    :try_start_f
    sget-boolean v11, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v11, :cond_18

    .line 925
    const-string v11, "FlpServiceProvider"

    const-string v12, "return whole batch"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_18
    invoke-interface {v0, v2}, Lcom/qti/flp/ILocationCallback;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_c

    .line 928
    :cond_19
    :try_start_10
    array-length v11, v2

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aget-object v11, v2, v11

    invoke-virtual {v11}, Landroid/location/Location;->getTime()J

    move-result-wide v11
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    cmp-long v11, v7, v11

    if-lez v11, :cond_1a

    .line 929
    :try_start_11
    sget-boolean v11, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v11, :cond_1b

    .line 930
    const-string v11, "FlpServiceProvider"

    const-string v12, "no need to return"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_c

    .line 933
    :cond_1a
    :try_start_12
    invoke-direct {v1, v7, v8, v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->getOffset(J[Landroid/location/Location;)I

    move-result v11

    .line 934
    .local v11, "offset":I
    array-length v12, v2

    sub-int/2addr v12, v11

    new-array v12, v12, [Landroid/location/Location;

    .line 935
    .local v12, "newResult":[Landroid/location/Location;
    array-length v13, v2

    sub-int/2addr v13, v11

    const/4 v14, 0x0

    invoke-static {v2, v11, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 940
    invoke-interface {v0, v12}, Lcom/qti/flp/ILocationCallback;->onLocationAvailable([Landroid/location/Location;)V

    .line 943
    .end local v11    # "offset":I
    .end local v12    # "newResult":[Landroid/location/Location;
    :cond_1b
    :goto_c
    iget-object v11, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-static {v11}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$1900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v11

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 944
    .local v11, "sessionId":J
    iget-object v13, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-static {v13}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 945
    .local v13, "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    if-eqz v13, :cond_1c

    .line 946
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->access$2102(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;J)J
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_4
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 948
    :cond_1c
    :try_start_14
    iget-object v14, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForFg:Landroid/os/RemoteCallbackList;

    invoke-virtual {v14, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 949
    iget-object v14, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForFg:Landroid/os/RemoteCallbackList;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    move-object/from16 v24, v6

    move-wide/from16 v25, v7

    :try_start_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .end local v6    # "cbPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/qti/flp/ILocationCallback;Ljava/lang/Long;>;"
    .end local v7    # "sessionStartTime":J
    .local v24, "cbPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/qti/flp/ILocationCallback;Ljava/lang/Long;>;"
    .local v25, "sessionStartTime":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v14, v0, v6}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 950
    iget-object v6, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-static {v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v6

    .line 951
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 950
    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 953
    .end local v24    # "cbPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/qti/flp/ILocationCallback;Ljava/lang/Long;>;"
    .end local v25    # "sessionStartTime":J
    .restart local v6    # "cbPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/qti/flp/ILocationCallback;Ljava/lang/Long;>;"
    .restart local v7    # "sessionStartTime":J
    :cond_1d
    move-object/from16 v24, v6

    move-wide/from16 v25, v7

    .end local v6    # "cbPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/qti/flp/ILocationCallback;Ljava/lang/Long;>;"
    .end local v7    # "sessionStartTime":J
    .restart local v24    # "cbPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/qti/flp/ILocationCallback;Ljava/lang/Long;>;"
    .restart local v25    # "sessionStartTime":J
    :goto_d
    iget-object v6, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForPassive:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 954
    iget-object v6, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForPassive:Landroid/os/RemoteCallbackList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 955
    iget-object v6, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-static {v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v6

    .line 956
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 955
    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 961
    .end local v0    # "callback":Lcom/qti/flp/ILocationCallback;
    .end local v11    # "sessionId":J
    .end local v13    # "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    .end local v25    # "sessionStartTime":J
    :cond_1e
    goto :goto_e

    .line 958
    :catch_5
    move-exception v0

    goto :goto_e

    .end local v24    # "cbPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/qti/flp/ILocationCallback;Ljava/lang/Long;>;"
    .restart local v6    # "cbPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/qti/flp/ILocationCallback;Ljava/lang/Long;>;"
    :catch_6
    move-exception v0

    move-object/from16 v24, v6

    .line 963
    .end local v6    # "cbPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/qti/flp/ILocationCallback;Ljava/lang/Long;>;"
    :cond_1f
    :goto_e
    goto :goto_f

    .line 964
    :cond_20
    :try_start_16
    const-string v0, "FlpServiceProvider"

    const-string v6, "no available callback on query"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :goto_f
    monitor-exit v5

    goto :goto_10

    :catchall_4
    move-exception v0

    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v0

    .line 967
    :cond_21
    const/16 v0, 0x8

    if-ne v3, v0, :cond_22

    goto :goto_10

    .line 973
    :cond_22
    const-string v0, "FlpServiceProvider"

    const-string v5, "unknown reportTrigger"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :goto_10
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForPassive:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_2b

    .line 979
    sget-object v5, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sCallBacksLock:Ljava/lang/Object;

    monitor-enter v5

    .line 980
    :try_start_17
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForPassive:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    move v6, v0

    .line 981
    .local v6, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    move v7, v0

    .end local v0    # "i":I
    .local v7, "i":I
    if-ge v7, v6, :cond_2a

    .line 983
    :try_start_18
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForPassive:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    .line 985
    .local v11, "sessionStartTime":J
    array-length v0, v2

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    aget-object v0, v2, v0

    .line 986
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v13
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    const-wide/32 v16, 0xea60

    add-long v13, v13, v16

    cmp-long v0, v11, v13

    if-lez v0, :cond_24

    .line 987
    :try_start_19
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_23

    .line 988
    const-string v0, "FlpServiceProvider"

    const-string v8, "Future start time detected, returning whole batch"

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_8
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    .line 990
    :cond_23
    const/4 v8, 0x0

    :try_start_1a
    aget-object v0, v2, v8
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_7
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    :try_start_1b
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    move-wide v11, v13

    goto :goto_13

    .line 1017
    .end local v11    # "sessionStartTime":J
    :catch_7
    move-exception v0

    move v15, v8

    const/4 v8, 0x1

    goto/16 :goto_16

    :catch_8
    move-exception v0

    const/4 v8, 0x1

    :goto_12
    const/4 v15, 0x0

    goto/16 :goto_16

    .line 992
    .restart local v11    # "sessionStartTime":J
    :cond_24
    :goto_13
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_25

    .line 993
    const-string v0, "FlpServiceProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "in the mCallbacksForPassive loop : "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "; cd timestamp is"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    .line 996
    :cond_25
    const/4 v8, 0x0

    :try_start_1c
    aget-object v0, v2, v8
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_7
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :try_start_1d
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-gtz v0, :cond_27

    .line 998
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_26

    .line 999
    const-string v0, "FlpServiceProvider"

    const-string v8, "return whole batch"

    invoke-static {v0, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_26
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForPassive:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/qti/flp/ILocationCallback;

    invoke-interface {v0, v2}, Lcom/qti/flp/ILocationCallback;->onLocationAvailable([Landroid/location/Location;)V

    .line 1020
    const/4 v8, 0x1

    goto :goto_14

    .line 1002
    :cond_27
    array-length v0, v2
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_8
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    const/4 v8, 0x1

    sub-int/2addr v0, v8

    :try_start_1e
    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v13

    cmp-long v0, v11, v13

    if-lez v0, :cond_29

    .line 1003
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_28

    .line 1004
    const-string v0, "FlpServiceProvider"

    const-string v13, "no need to return"

    invoke-static {v0, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    .end local v11    # "sessionStartTime":J
    :cond_28
    :goto_14
    const/4 v15, 0x0

    goto :goto_15

    .line 1008
    .restart local v11    # "sessionStartTime":J
    :cond_29
    invoke-direct {v1, v11, v12, v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->getOffset(J[Landroid/location/Location;)I

    move-result v0

    .line 1009
    .local v0, "offset":I
    array-length v13, v2

    sub-int/2addr v13, v0

    new-array v13, v13, [Landroid/location/Location;

    .line 1010
    .local v13, "newResult":[Landroid/location/Location;
    array-length v14, v2
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_a
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    sub-int/2addr v14, v0

    const/4 v15, 0x0

    :try_start_1f
    invoke-static {v2, v0, v13, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1015
    iget-object v14, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForPassive:Landroid/os/RemoteCallbackList;

    invoke-virtual {v14, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v14

    check-cast v14, Lcom/qti/flp/ILocationCallback;

    invoke-interface {v14, v13}, Lcom/qti/flp/ILocationCallback;->onLocationAvailable([Landroid/location/Location;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_9
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    .line 1020
    .end local v0    # "offset":I
    .end local v11    # "sessionStartTime":J
    .end local v13    # "newResult":[Landroid/location/Location;
    :goto_15
    goto :goto_16

    .line 1017
    :catch_9
    move-exception v0

    goto :goto_16

    :catch_a
    move-exception v0

    goto :goto_12

    :catch_b
    move-exception v0

    const/4 v8, 0x1

    const/4 v15, 0x0

    const-wide/32 v16, 0xea60

    .line 981
    :goto_16
    add-int/lit8 v0, v7, 0x1

    .end local v7    # "i":I
    .local v0, "i":I
    goto/16 :goto_11

    .line 1022
    .end local v0    # "i":I
    :cond_2a
    :try_start_20
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mCallbacksForPassive:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1023
    .end local v6    # "index":I
    monitor-exit v5

    goto :goto_17

    :catchall_5
    move-exception v0

    monitor-exit v5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_5

    throw v0

    .line 1025
    :cond_2b
    :goto_17
    return-void
.end method

.method private onMaxPowerAllocatedChanged(I)V
    .locals 5
    .param p1, "power_mW"    # I

    .line 1066
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1067
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entering onMaxPowerAllocatedChanged() power: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mMaxPowerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1071
    .local v0, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1072
    sget-boolean v2, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v2, :cond_1

    .line 1073
    const-string v2, "FlpServiceProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "in the mMaxPowerCallbacks loop : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mMaxPowerCallbacks:Landroid/os/RemoteCallbackList;

    .line 1077
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/qti/flp/IMaxPowerAllocatedCallback;

    .line 1078
    .local v2, "cb":Lcom/qti/flp/IMaxPowerAllocatedCallback;
    int-to-double v3, p1

    invoke-interface {v2, v3, v4}, Lcom/qti/flp/IMaxPowerAllocatedCallback;->onMaxPowerAllocatedChanged(D)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .end local v2    # "cb":Lcom/qti/flp/IMaxPowerAllocatedCallback;
    goto :goto_1

    .line 1079
    :catch_0
    move-exception v2

    .line 1071
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1084
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mMaxPowerCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1085
    return-void
.end method

.method private reportFLPServiceDied()V
    .locals 2

    .line 1228
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1229
    const-string v0, "FlpServiceProvider"

    const-string v1, "FLPServiceDied, restarting sessions..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->stopFlpSessions()V

    .line 1232
    iget-boolean v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mIsLocationSettingsOn:Z

    if-eqz v0, :cond_1

    .line 1233
    invoke-direct {p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->startFlpSessions()V

    .line 1235
    :cond_1
    return-void
.end method

.method private startFlpSessions()V
    .locals 16

    .line 258
    move-object/from16 v11, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 259
    .local v12, "sList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    iget-object v0, v11, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v14, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 260
    .local v15, "flpSessionData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    sget-boolean v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting flp session id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    invoke-static {v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    invoke-static {v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v1

    .line 265
    invoke-static {v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v2

    .line 266
    invoke-static {v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J

    move-result-wide v3

    .line 267
    invoke-static {v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$700(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v5

    .line 268
    invoke-static {v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J

    move-result-wide v6

    .line 269
    invoke-static {v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v8

    .line 270
    invoke-static {v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J

    move-result-wide v9

    .line 264
    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_start_session(IIJIJIJ)I

    .line 271
    new-instance v0, Landroid/util/Pair;

    invoke-static {v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1100(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 272
    invoke-static {v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-static {v15, v14}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$402(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;Z)Z

    .line 275
    .end local v15    # "flpSessionData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    :cond_1
    goto :goto_0

    .line 276
    :cond_2
    iget-object v0, v11, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v14, v14, v12}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 277
    return-void
.end method

.method private stopFlpSessions()V
    .locals 7

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v0, "sList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mFlpUserData:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 282
    .local v2, "flpSessionData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    sget-boolean v4, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->VERBOSE:Z

    if-eqz v4, :cond_0

    .line 283
    const-string v4, "FlpServiceProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stoping flp session id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->native_flp_stop_session(I)I

    .line 287
    new-instance v4, Landroid/util/Pair;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1100(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 288
    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-static {v2, v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$402(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;Z)Z

    .line 291
    .end local v2    # "flpSessionData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    :cond_1
    goto :goto_0

    .line 292
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 293
    return-void
.end method


# virtual methods
.method public getFlpBinder()Lcom/qti/flp/IFlpService;
    .locals 1

    .line 1217
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mBinder:Lcom/qti/flp/IFlpService$Stub;

    return-object v0
.end method

.method public getFlpTestingBinder()Lcom/qti/flp/ITestService;
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mTestingBinder:Lcom/qti/flp/ITestService$Stub;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    .line 178
    .local v0, "msgID":I
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 189
    const-string v2, "FlpServiceProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled Message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 181
    :cond_0
    const-string v2, "FlpServiceProvider"

    const-string v3, "MSG_UPDATE_HIGHPOWER_MONITOR"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 184
    .local v2, "sList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 185
    .local v3, "start":Z
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->updateHighPowerLocationMonitoring(Ljava/util/ArrayList;Z)V

    .line 187
    .end local v2    # "sList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    .end local v3    # "start":Z
    nop

    .line 191
    :goto_1
    return v1
.end method

.method public onLocationSettingsChange(Z)V
    .locals 2
    .param p1, "locationSettingsIsOn"    # Z

    .line 229
    sget-object v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->sLocationSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iput-boolean p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mIsLocationSettingsOn:Z

    .line 231
    iget-boolean v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mIsLocationSettingsOn:Z

    if-eqz v1, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->startFlpSessions()V

    goto :goto_0

    .line 234
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->stopFlpSessions()V

    .line 236
    :goto_0
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateHighPowerLocationMonitoring(Ljava/util/ArrayList;Z)V
    .locals 6
    .param p2, "start"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .line 241
    .local p1, "sList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 242
    .local v1, "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v2, 0x2a

    if-eqz p2, :cond_0

    .line 243
    const-string v3, "FlpServiceProvider"

    const-string v4, "startOpNoThrow"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mAppOpsMgr:Landroid/app/AppOpsManager;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 245
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 244
    invoke-virtual {v3, v2, v4, v5}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    goto :goto_1

    .line 247
    :cond_0
    const-string v3, "FlpServiceProvider"

    const-string v4, "finishOp"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mAppOpsMgr:Landroid/app/AppOpsManager;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 249
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 248
    invoke-virtual {v3, v2, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 251
    .end local v1    # "item":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_1
    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.HIGH_POWER_REQUEST_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 255
    return-void
.end method

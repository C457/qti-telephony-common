.class public Lcom/qualcomm/location/izat/LocationSettingsHelper;
.super Ljava/lang/Object;
.source "LocationSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationSettingsHelper"

.field private static final VERBOSE:Z

.field private static sInstance:Lcom/qualcomm/location/izat/LocationSettingsHelper;


# instance fields
.field public mIsLocationSettingsOn:Z

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationSettingsCallbackSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationSettingsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-string v0, "LocationSettingsHelper"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->VERBOSE:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->sInstance:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mLocationSettingsCallbackSet:Ljava/util/HashSet;

    .line 73
    new-instance v0, Lcom/qualcomm/location/izat/LocationSettingsHelper$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/LocationSettingsHelper$1;-><init>(Lcom/qualcomm/location/izat/LocationSettingsHelper;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mLocationSettingsReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mLocationManager:Landroid/location/LocationManager;

    .line 57
    iget-object v0, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mLocationSettingsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    invoke-direct {p0}, Lcom/qualcomm/location/izat/LocationSettingsHelper;->isLocationSettingsOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mIsLocationSettingsOn:Z

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/location/izat/LocationSettingsHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/LocationSettingsHelper;

    .line 22
    invoke-direct {p0}, Lcom/qualcomm/location/izat/LocationSettingsHelper;->isLocationSettingsOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/qualcomm/location/izat/LocationSettingsHelper;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/LocationSettingsHelper;

    .line 22
    iget-object v0, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mLocationSettingsCallbackSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/qualcomm/location/izat/LocationSettingsHelper;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/qualcomm/location/izat/LocationSettingsHelper;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/qualcomm/location/izat/LocationSettingsHelper;->sInstance:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/qualcomm/location/izat/LocationSettingsHelper;

    invoke-direct {v1, p0}, Lcom/qualcomm/location/izat/LocationSettingsHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/location/izat/LocationSettingsHelper;->sInstance:Lcom/qualcomm/location/izat/LocationSettingsHelper;

    .line 38
    :cond_0
    sget-object v1, Lcom/qualcomm/location/izat/LocationSettingsHelper;->sInstance:Lcom/qualcomm/location/izat/LocationSettingsHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 33
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private isLocationSettingsOn()Z
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mLocationManager:Landroid/location/LocationManager;

    .line 64
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    .line 66
    .local v0, "isLocationSettingsOn":Z
    sget-boolean v1, Lcom/qualcomm/location/izat/LocationSettingsHelper;->VERBOSE:Z

    if-eqz v1, :cond_0

    .line 67
    const-string v1, "LocationSettingsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isLocationSettingsOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return v0
.end method


# virtual methods
.method public deregisterForLocationSettingsCallback(Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;)V
    .locals 1
    .param p1, "locationSettingsCallback"    # Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;

    .line 52
    iget-object v0, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mLocationSettingsCallbackSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public registerForLocationSettingsCallback(Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;)V
    .locals 1
    .param p1, "locationSettingsCallback"    # Lcom/qualcomm/location/izat/LocationSettingsHelper$ILocationSettingsCallback;

    .line 47
    iget-object v0, p0, Lcom/qualcomm/location/izat/LocationSettingsHelper;->mLocationSettingsCallbackSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.class public Lcom/qualcomm/location/izat/IzatService;
.super Landroid/app/Service;
.source "IzatService.java"


# static fields
.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final GTPWIFI_CROWDSOURCING_PERMISSION:Ljava/lang/String; = "com.qualcomm.permission.ACCESS_GTPWIFI_CROWDSOURCING_API"

.field private static final GTPWIFI_PERMISSION:Ljava/lang/String; = "com.qualcomm.permission.ACCESS_GTPWIFI_API"

.field private static final GTPWWAN_CROWDSOURCING_PERMISSION:Ljava/lang/String; = "com.qualcomm.permission.ACCESS_GTPWWAN_CROWDSOURCING_API"

.field private static final GTPWWAN_PERMISSION:Ljava/lang/String; = "com.qualcomm.permission.ACCESS_GTPWWAN_API"

.field private static final IZAT_SERVICE_NAME:Ljava/lang/String; = "com.qualcomm.location.izat.IzatService"

.field private static final Service_Version:Ljava/lang/String; = "7.2.0"

.field private static final TAG:Ljava/lang/String; = "IzatService"

.field private static final VERBOSE:Z


# instance fields
.field private final mBinder:Lcom/qti/izat/IIzatService$Stub;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const-string v0, "IzatService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izat/IzatService;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 79
    new-instance v0, Lcom/qualcomm/location/izat/IzatService$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/location/izat/IzatService$1;-><init>(Lcom/qualcomm/location/izat/IzatService;)V

    iput-object v0, p0, Lcom/qualcomm/location/izat/IzatService;->mBinder:Lcom/qti/izat/IIzatService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/location/izat/IzatService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izat/IzatService;

    .line 35
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 65
    sget-boolean v0, Lcom/qualcomm/location/izat/IzatService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 66
    const-string v0, "IzatService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    const-string v0, "com.qualcomm.location.izat.IzatService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    sget-boolean v0, Lcom/qualcomm/location/izat/IzatService;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 70
    const-string v0, "IzatService"

    const-string v1, "Got a binding request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/location/izat/IzatService;->mBinder:Lcom/qti/izat/IIzatService$Stub;

    return-object v0

    .line 74
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 52
    sget-boolean v0, Lcom/qualcomm/location/izat/IzatService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "IzatService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iput-object p0, p0, Lcom/qualcomm/location/izat/IzatService;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, "com.qualcomm.location.izat.IzatService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 58
    const-string v0, "IzatService"

    const-string v1, "register Izat service on entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const-string v0, "com.qualcomm.location.izat.IzatService"

    iget-object v1, p0, Lcom/qualcomm/location/izat/IzatService;->mBinder:Lcom/qti/izat/IIzatService$Stub;

    invoke-virtual {v1}, Lcom/qti/izat/IIzatService$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 61
    :cond_1
    return-void
.end method

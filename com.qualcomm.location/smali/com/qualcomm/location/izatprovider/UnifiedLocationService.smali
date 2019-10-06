.class public Lcom/qualcomm/location/izatprovider/UnifiedLocationService;
.super Landroid/app/Service;
.source "UnifiedLocationService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnifiedLocationService"

.field private static final VERBOSE_DBG:Z


# instance fields
.field private mProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-string v0, "UnifiedLocationService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/izatprovider/UnifiedLocationService;->VERBOSE_DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 46
    sget-boolean v0, Lcom/qualcomm/location/izatprovider/UnifiedLocationService;->VERBOSE_DBG:Z

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "UnifiedLocationService"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    .local v0, "res":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/UnifiedLocationService;->mProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/qualcomm/location/izatprovider/UnifiedLocationService;->mProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;

    invoke-virtual {v1}, Lcom/qualcomm/location/izatprovider/IzatProvider;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 56
    :cond_1
    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 40
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 41
    invoke-virtual {p0}, Lcom/qualcomm/location/izatprovider/UnifiedLocationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izatprovider/IzatProvider;->getFusedProvider(Landroid/content/Context;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/location/izatprovider/UnifiedLocationService;->mProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;

    .line 42
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 61
    sget-boolean v0, Lcom/qualcomm/location/izatprovider/UnifiedLocationService;->VERBOSE_DBG:Z

    if-eqz v0, :cond_0

    .line 62
    const-string v0, "UnifiedLocationService"

    const-string v1, "onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/UnifiedLocationService;->mProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/UnifiedLocationService;->mProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;

    invoke-virtual {v0}, Lcom/qualcomm/location/izatprovider/IzatProvider;->onDisable()V

    .line 69
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

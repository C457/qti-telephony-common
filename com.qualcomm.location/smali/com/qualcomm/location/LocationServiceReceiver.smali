.class public Lcom/qualcomm/location/LocationServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationServiceReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationServiceReceiver"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "locationservice_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 37
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "intentAction":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 39
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qualcomm/location/LBSSystemMonitorService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v1, "i":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 43
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/qualcomm/location/LocationService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .local v2, "intentLocationService":Landroid/content/Intent;
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 46
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/qualcomm/location/izat/IzatService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .local v3, "intentIzatService":Landroid/content/Intent;
    const-string v4, "com.qualcomm.location.izat.IzatService"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "intentAction":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "intentLocationService":Landroid/content/Intent;
    .end local v3    # "intentIzatService":Landroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

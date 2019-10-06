.class public Lcom/qualcomm/location/LBSSystemMonitorService;
.super Landroid/app/Service;
.source "LBSSystemMonitorService.java"

# interfaces
.implements Lcom/qualcomm/location/MonitorInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;
    }
.end annotation


# static fields
.field private static final LISTENER_FLAG_BIT_MAX:I = 0xf

.field static final NON_SGLTE_WITH_ES_SUPL:I = 0x2

.field static final SGLTE_NO_ES_SUPL:I = 0x0

.field static final SGLTE_WITH_ES_SUPL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LBSSystemMonitorService"

.field private static final VERBOSE_DBG:Z


# instance fields
.field private mHandler:Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/qualcomm/location/MonitorInterface$Monitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    const-string v0, "LBSSystemMonitorService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/qualcomm/location/LBSSystemMonitorService;->VERBOSE_DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/location/LBSSystemMonitorService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/LBSSystemMonitorService;

    .line 31
    iget-object v0, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mMonitors:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .line 120
    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mHandler:Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mMonitors:Ljava/util/ArrayList;

    .line 46
    sget-boolean v0, Lcom/qualcomm/location/LBSSystemMonitorService;->VERBOSE_DBG:Z

    if-eqz v0, :cond_0

    .line 47
    const-string v0, "LBSSystemMonitorService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LBSSystemMonitorService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;

    iget-object v1, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;-><init>(Lcom/qualcomm/location/LBSSystemMonitorService;Landroid/os/Looper;Lcom/qualcomm/location/LBSSystemMonitorService;Lcom/qualcomm/location/LBSSystemMonitorService$1;)V

    iput-object v0, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mHandler:Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;

    .line 53
    const/4 v0, 0x1

    .line 56
    .local v0, "msgBase":I
    new-instance v1, Lcom/qualcomm/location/RilInfoMonitor;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v0, v2}, Lcom/qualcomm/location/RilInfoMonitor;-><init>(Lcom/qualcomm/location/MonitorInterface;II)V

    .line 57
    .local v1, "m":Lcom/qualcomm/location/MonitorInterface$Monitor;
    invoke-virtual {p0, v1}, Lcom/qualcomm/location/LBSSystemMonitorService;->subscribe(Lcom/qualcomm/location/MonitorInterface$Monitor;)V

    .line 58
    invoke-virtual {v1}, Lcom/qualcomm/location/MonitorInterface$Monitor;->getNumOfMessages()I

    move-result v2

    add-int/2addr v0, v2

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 64
    const-string v0, "LBSSystemMonitorService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    :cond_0
    monitor-exit v0

    .line 74
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subscribe(Lcom/qualcomm/location/MonitorInterface$Monitor;)V
    .locals 2
    .param p1, "m"    # Lcom/qualcomm/location/MonitorInterface$Monitor;

    .line 130
    iget-object v0, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mMonitors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unsubscribe(Lcom/qualcomm/location/MonitorInterface$Monitor;)V
    .locals 2
    .param p1, "m"    # Lcom/qualcomm/location/MonitorInterface$Monitor;

    .line 137
    iget-object v0, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mMonitors:Ljava/util/ArrayList;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/LBSSystemMonitorService;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v0

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

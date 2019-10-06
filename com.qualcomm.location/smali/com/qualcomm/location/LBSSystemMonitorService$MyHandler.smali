.class Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;
.super Landroid/os/Handler;
.source "LBSSystemMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/LBSSystemMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/qualcomm/location/LBSSystemMonitorService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qualcomm/location/LBSSystemMonitorService;


# direct methods
.method private constructor <init>(Lcom/qualcomm/location/LBSSystemMonitorService;Landroid/os/Looper;Lcom/qualcomm/location/LBSSystemMonitorService;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "ms"    # Lcom/qualcomm/location/LBSSystemMonitorService;

    .line 79
    iput-object p1, p0, Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;->this$0:Lcom/qualcomm/location/LBSSystemMonitorService;

    .line 80
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/location/LBSSystemMonitorService;Landroid/os/Looper;Lcom/qualcomm/location/LBSSystemMonitorService;Lcom/qualcomm/location/LBSSystemMonitorService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/location/LBSSystemMonitorService;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/qualcomm/location/LBSSystemMonitorService;
    .param p4, "x3"    # Lcom/qualcomm/location/LBSSystemMonitorService$1;

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;-><init>(Lcom/qualcomm/location/LBSSystemMonitorService;Landroid/os/Looper;Lcom/qualcomm/location/LBSSystemMonitorService;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    .line 87
    .local v0, "msgID":I
    const-string v1, "LBSSystemMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage what - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "monitorHandler":Lcom/qualcomm/location/MonitorInterface$Monitor;
    iget-object v2, p0, Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;->this$0:Lcom/qualcomm/location/LBSSystemMonitorService;

    invoke-static {v2}, Lcom/qualcomm/location/LBSSystemMonitorService;->access$100(Lcom/qualcomm/location/LBSSystemMonitorService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/location/LBSSystemMonitorService$MyHandler;->this$0:Lcom/qualcomm/location/LBSSystemMonitorService;

    invoke-static {v3}, Lcom/qualcomm/location/LBSSystemMonitorService;->access$100(Lcom/qualcomm/location/LBSSystemMonitorService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/location/MonitorInterface$Monitor;

    .line 93
    .local v4, "monitor":Lcom/qualcomm/location/MonitorInterface$Monitor;
    invoke-virtual {v4}, Lcom/qualcomm/location/MonitorInterface$Monitor;->getMsgIdBase()I

    move-result v5

    .line 94
    .local v5, "handlerStart":I
    invoke-virtual {v4}, Lcom/qualcomm/location/MonitorInterface$Monitor;->getNumOfMessages()I

    move-result v6

    add-int/2addr v6, v5

    .line 95
    .local v6, "handlerEnd":I
    if-ge v0, v6, :cond_0

    if-lt v0, v5, :cond_0

    .line 99
    iget v3, p1, Landroid/os/Message;->what:I

    sub-int/2addr v3, v5

    iput v3, p1, Landroid/os/Message;->what:I

    .line 100
    move-object v1, v4

    .line 101
    goto :goto_1

    .line 103
    .end local v4    # "monitor":Lcom/qualcomm/location/MonitorInterface$Monitor;
    .end local v5    # "handlerStart":I
    .end local v6    # "handlerEnd":I
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v1, p1}, Lcom/qualcomm/location/MonitorInterface$Monitor;->handleMessage(Landroid/os/Message;)V

    .end local v1    # "monitorHandler":Lcom/qualcomm/location/MonitorInterface$Monitor;
    goto :goto_2

    .line 104
    .restart local v1    # "monitorHandler":Lcom/qualcomm/location/MonitorInterface$Monitor;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 110
    .end local v1    # "monitorHandler":Lcom/qualcomm/location/MonitorInterface$Monitor;
    :cond_2
    :goto_2
    return-void
.end method

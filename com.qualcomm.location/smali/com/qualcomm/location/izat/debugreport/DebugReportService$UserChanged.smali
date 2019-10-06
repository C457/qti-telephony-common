.class Lcom/qualcomm/location/izat/debugreport/DebugReportService$UserChanged;
.super Ljava/lang/Object;
.source "DebugReportService.java"

# interfaces
.implements Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/debugreport/DebugReportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserChanged"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener<",
        "Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    .line 430
    iput-object p1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$UserChanged;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserChange(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;",
            ">;)V"
        }
    .end annotation

    .line 434
    .local p1, "prevUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;>;"
    .local p2, "currentUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;>;"
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "DebugReportService"

    const-string v1, "Active user has changed, updating debugReport callbacks..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 440
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;

    .line 441
    .local v2, "debugReportDataData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$UserChanged;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v3}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$400(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-static {v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->access$300(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;)Lcom/qti/debugreport/IDebugReportCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 442
    .end local v2    # "debugReportDataData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    goto :goto_0

    .line 445
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;

    .line 446
    .restart local v2    # "debugReportDataData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    iget-object v3, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$UserChanged;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v3}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$400(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-static {v2}, Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;->access$300(Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;)Lcom/qti/debugreport/IDebugReportCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 447
    .end local v2    # "debugReportDataData":Lcom/qualcomm/location/izat/debugreport/DebugReportService$ClientDebugReportData;
    goto :goto_1

    .line 449
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/location/izat/debugreport/DebugReportService$UserChanged;->this$0:Lcom/qualcomm/location/izat/debugreport/DebugReportService;

    invoke-static {v1}, Lcom/qualcomm/location/izat/debugreport/DebugReportService;->access$500(Lcom/qualcomm/location/izat/debugreport/DebugReportService;)V

    .line 450
    monitor-exit v0

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

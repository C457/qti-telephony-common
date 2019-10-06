.class Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$UserChanged;
.super Ljava/lang/Object;
.source "GnssConfigService.java"

# interfaces
.implements Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserChanged"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qualcomm/location/izat/DataPerPackageAndUser$UserChangeListener<",
        "Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 172
    iput-object p1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$UserChanged;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

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
            "Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "prevUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;>;"
    .local p2, "currentUserData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;>;"
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "GnssConfigService"

    const-string v1, "Active user has changed, updating gnssConfig callbacks..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 182
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

    check-cast v2, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;

    .line 183
    .local v2, "gnssConfigData":Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    iget-object v3, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$UserChanged;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-static {v3}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$400(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-static {v2}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->access$300(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;)Lcom/qti/gnssconfig/IGnssConfigCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 184
    .end local v2    # "gnssConfigData":Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    goto :goto_0

    .line 187
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

    check-cast v2, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;

    .line 188
    .restart local v2    # "gnssConfigData":Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    iget-object v3, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$UserChanged;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-static {v3}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$400(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-static {v2}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->access$300(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;)Lcom/qti/gnssconfig/IGnssConfigCallback;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 189
    .end local v2    # "gnssConfigData":Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    goto :goto_1

    .line 190
    :cond_2
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

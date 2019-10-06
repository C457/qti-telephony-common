.class Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1$1;
.super Ljava/lang/Object;
.source "GnssConfigService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->registerCallback(Lcom/qti/gnssconfig/IGnssConfigCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;

.field final synthetic val$callback:Lcom/qti/gnssconfig/IGnssConfigCallback;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;Lcom/qti/gnssconfig/IGnssConfigCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;

    .line 96
    iput-object p1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1$1;->this$1:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;

    iput-object p2, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1$1;->val$callback:Lcom/qti/gnssconfig/IGnssConfigCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 99
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1$1;->this$1:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 101
    invoke-static {v1}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$200(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1$1;->val$callback:Lcom/qti/gnssconfig/IGnssConfigCallback;

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getDataByCallback(Landroid/os/IInterface;)Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;

    .line 103
    .local v1, "clData":Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    if-eqz v1, :cond_0

    .line 104
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "GnssConfigService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1$1;->this$1:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;

    iget-object v2, v2, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-static {v2}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$400(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1$1;->val$callback:Lcom/qti/gnssconfig/IGnssConfigCallback;

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 111
    .end local v1    # "clData":Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

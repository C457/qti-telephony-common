.class Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;
.super Lcom/qti/gnssconfig/IGnssConfigService$Stub;
.source "GnssConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 66
    iput-object p1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-direct {p0}, Lcom/qti/gnssconfig/IGnssConfigService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getGnssSvTypeConfig()V
    .locals 4

    .line 120
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "GnssConfigService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGnssSvTypeConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-static {v2}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$200(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-static {v1}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$500(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)V

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerCallback(Lcom/qti/gnssconfig/IGnssConfigCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/qti/gnssconfig/IGnssConfigCallback;

    .line 69
    if-nez p1, :cond_0

    .line 70
    const-string v0, "GnssConfigService"

    const-string v1, "callback is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 75
    :try_start_0
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const-string v1, "GnssConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGnssSvTypeConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 77
    invoke-static {v3}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$200(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-static {v1}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$200(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;

    .line 82
    .local v1, "clData":Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    if-nez v1, :cond_2

    .line 83
    new-instance v2, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;

    iget-object v3, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-direct {v2, v3, p1}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;-><init>(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;Lcom/qti/gnssconfig/IGnssConfigCallback;)V

    move-object v1, v2

    .line 84
    iget-object v2, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-static {v2}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$200(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->setData(Lcom/qualcomm/location/izat/CallbackData;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {v1}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->access$300(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;)Lcom/qti/gnssconfig/IGnssConfigCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 87
    iget-object v2, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-static {v2}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$400(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-static {v1}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->access$300(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;)Lcom/qti/gnssconfig/IGnssConfigCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 89
    :cond_3
    invoke-static {v1, p1}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;->access$302(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;Lcom/qti/gnssconfig/IGnssConfigCallback;)Lcom/qti/gnssconfig/IGnssConfigCallback;

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-static {v2}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$400(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 93
    .end local v1    # "clData":Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$ClientGnssConfigData;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :try_start_1
    invoke-interface {p1}, Lcom/qti/gnssconfig/IGnssConfigCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1$1;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1$1;-><init>(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;Lcom/qti/gnssconfig/IGnssConfigCallback;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    nop

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed unregister gnss config cb"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public resetGnssSvTypeConfig()V
    .locals 5

    .line 143
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 144
    :try_start_0
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    const-string v1, "GnssConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetGnssSvTypeConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 146
    invoke-static {v3}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$200(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-static {v1}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$700(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)V

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGnssSvTypeConfig([I)V
    .locals 5
    .param p1, "disabledSvTypeArray"    # [I

    .line 132
    invoke-static {}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 134
    :try_start_0
    const-string v1, "GnssConfigService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGnssSvTypeConfig: arrLen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    .line 135
    invoke-static {v3}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$200(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getPackageName(Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService$1;->this$0:Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;

    invoke-static {v1, p1}, Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;->access$600(Lcom/qualcomm/location/izat/gnssconfig/GnssConfigService;[I)V

    .line 138
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

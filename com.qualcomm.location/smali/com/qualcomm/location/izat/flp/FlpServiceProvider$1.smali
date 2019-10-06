.class Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;
.super Lcom/qti/flp/IFlpService$Stub;
.source "FlpServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izat/flp/FlpServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 296
    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-direct {p0}, Lcom/qti/flp/IFlpService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllSupportedFeatures()I
    .locals 2

    .line 479
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    const-string v0, "FlpServiceProvider"

    const-string v1, "in IFlpService.Stub(): getAllSupportedFeatures()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2700(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 483
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2702(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;I)I

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2700(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)I

    move-result v0

    return v0
.end method

.method public pullLocations(Lcom/qti/flp/ILocationCallback;JI)I
    .locals 5
    .param p1, "cb"    # Lcom/qti/flp/ILocationCallback;
    .param p2, "sessionStartTime"    # J
    .param p4, "id"    # I

    .line 694
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IFlpService.Stub(): pullLocations(), sessionStartTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_0
    const/4 v0, -0x1

    if-nez p1, :cond_1

    .line 699
    const-string v1, "FlpServiceProvider"

    const-string v2, "in IFlpService.Stub(): cb is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return v0

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 704
    const-string v1, "FlpServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid FlpSession id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return v0

    .line 709
    :cond_2
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 711
    const/4 v1, 0x0

    .local v1, "result":I
    goto :goto_0

    .line 713
    .end local v1    # "result":I
    :cond_3
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1700()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 715
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$3800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Queue;

    move-result-object v2

    new-instance v3, Landroid/util/Pair;

    .line 716
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 715
    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 717
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    :try_start_2
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1, p4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;I)I

    move-result v1

    .line 720
    .restart local v1    # "result":I
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 722
    return v1

    .line 717
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 720
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public registerCallback(IILcom/qti/flp/ILocationCallback;J)V
    .locals 6
    .param p1, "sessionType"    # I
    .param p2, "id"    # I
    .param p3, "cb"    # Lcom/qti/flp/ILocationCallback;
    .param p4, "sessionStartTime"    # J

    .line 301
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IFlpService.Stub(): registerCallback(), sessionType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; sessionStartTime is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    if-eqz p3, :cond_4

    .line 308
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 309
    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 310
    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 311
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 386
    const-string v0, "FlpServiceProvider"

    const-string v1, "unknown sessionType"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    goto/16 :goto_1

    .line 344
    :pswitch_0
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1700()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 345
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 346
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :try_start_1
    invoke-interface {p3}, Lcom/qti/flp/ILocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v2, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$2;

    invoke-direct {v2, p0, p3, p2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$2;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;Lcom/qti/flp/ILocationCallback;I)V

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 361
    goto/16 :goto_1

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed clean up flp sessions"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 347
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 313
    :pswitch_1
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1700()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 314
    :try_start_3
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 315
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$1900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Ljava/lang/Long;

    int-to-long v4, p2

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;

    .local v2, "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    goto :goto_0

    .line 321
    .end local v2    # "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    :cond_1
    new-instance v2, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;

    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-direct {v2, v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V

    .line 324
    .restart local v2    # "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    :goto_0
    invoke-static {v2, p4, p5}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->access$2102(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;J)J

    .line 325
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v2    # "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 328
    :try_start_4
    invoke-interface {p3}, Lcom/qti/flp/ILocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v2, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$1;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;Lcom/qti/flp/ILocationCallback;I)V

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 341
    goto :goto_1

    .line 339
    :catch_1
    move-exception v0

    .line 340
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed clean up flp sessions"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 326
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    .line 364
    :cond_2
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1700()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 365
    :try_start_6
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 366
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 369
    :try_start_7
    invoke-interface {p3}, Lcom/qti/flp/ILocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v2, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;

    invoke-direct {v2, p0, p3, p2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;Lcom/qti/flp/ILocationCallback;I)V

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 383
    goto :goto_1

    .line 381
    :catch_2
    move-exception v0

    .line 382
    .restart local v0    # "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed unregister passive cb"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v1

    .line 390
    :cond_3
    const-string v0, "FlpServiceProvider"

    const-string v1, "one of the callback list is not created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 393
    :cond_4
    const-string v0, "FlpServiceProvider"

    const-string v1, "cb is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerForSessionStatus(ILcom/qti/flp/ISessionStatusCallback;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "cb"    # Lcom/qti/flp/ISessionStatusCallback;

    .line 434
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IFlpService.Stub(): registerForSessionStatus() cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    if-eqz p2, :cond_2

    .line 438
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 439
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 441
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljava/lang/Long;

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :try_start_1
    invoke-interface {p2}, Lcom/qti/flp/ISessionStatusCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$4;

    invoke-direct {v1, p0, p2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$4;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;Lcom/qti/flp/ISessionStatusCallback;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 455
    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed clean up flp sessions"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 442
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 457
    :cond_1
    const-string v0, "FlpServiceProvider"

    const-string v1, "cb is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_2
    :goto_0
    return-void
.end method

.method public startFlpSession(IIJIJ)I
    .locals 11
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "period_ms"    # J
    .param p5, "distance_interval_mps"    # I
    .param p6, "trip_distance_m"    # J

    .line 494
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->startFlpSessionWithPower(IIJIJIJ)I

    move-result v0

    return v0
.end method

.method public startFlpSessionWithPower(IIJIJIJ)I
    .locals 19
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "period_ms"    # J
    .param p5, "distance_interval_mps"    # I
    .param p6, "trip_distance_m"    # J
    .param p8, "power_mode"    # I
    .param p9, "tbm_ms"    # J

    move-object/from16 v1, p0

    move/from16 v15, p2

    .line 508
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    const-string v0, "FlpServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in IFlpService.Stub(): startFlpSession(); id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p1

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; period_ms is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v12, p3

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; flags is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; distance interval is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p5

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; trip distance is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, p6

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; power mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; tbm is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p9

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 521
    :cond_0
    move/from16 v14, p1

    move-wide/from16 v12, p3

    move/from16 v11, p5

    move-wide/from16 v9, p6

    move/from16 v8, p8

    move-wide/from16 v6, p9

    :goto_0
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    iget-object v2, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-static {v0, v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1802(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 524
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1700()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 525
    const/4 v0, 0x1

    if-eq v15, v0, :cond_1

    const/4 v3, 0x3

    if-ne v15, v3, :cond_3

    .line 527
    :cond_1
    :try_start_0
    iget-object v3, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;

    .line 529
    .local v3, "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    if-eqz v3, :cond_2

    .line 530
    invoke-static {v3, v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->access$3002(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;I)I

    goto :goto_1

    .line 532
    :cond_2
    const-string v4, "FlpServiceProvider"

    const-string v5, "No registered callback for this session id."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v3    # "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 537
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 538
    .local v5, "calling_uid":I
    iget-object v2, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3100(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v16

    .line 540
    .local v16, "calling_package":Ljava/lang/String;
    new-instance v17, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    iget-object v3, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    move-object/from16 v2, v17

    move v4, v14

    move/from16 v18, v5

    move v5, v15

    .end local v5    # "calling_uid":I
    .local v18, "calling_uid":I
    move-wide v6, v12

    move v8, v11

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-wide/from16 v12, p9

    move/from16 v14, v18

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;IIJIJIJILjava/lang/String;)V

    move-object/from16 v3, v17

    .line 550
    .local v3, "flpSessionData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3200()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 551
    :try_start_1
    iget-object v2, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v2, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 558
    :cond_4
    iget-object v5, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v6

    .line 559
    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v7

    .line 560
    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J

    move-result-wide v8

    .line 561
    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$700(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v10

    .line 562
    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J

    move-result-wide v11

    .line 563
    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v13

    .line 564
    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J

    move-result-wide v14

    .line 558
    invoke-static/range {v5 .. v15}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;IIJIJIJ)I

    move-result v2

    .line 565
    .local v2, "result":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v5, "sList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    new-instance v6, Landroid/util/Pair;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1100(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 567
    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 566
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    iget-object v6, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0, v0, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 569
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 570
    invoke-static {v3, v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$402(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;Z)Z

    .end local v5    # "sList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    goto :goto_3

    .line 553
    .end local v2    # "result":I
    :cond_5
    :goto_2
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 554
    const-string v0, "FlpServiceProvider"

    const-string v2, "Location setting is OFF or already running, no need to start."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_6
    const/4 v2, 0x0

    .line 572
    .restart local v2    # "result":I
    :goto_3
    monitor-exit v4

    move v0, v2

    .line 574
    .end local v2    # "result":I
    .local v0, "result":I
    return v0

    .line 572
    .end local v0    # "result":I
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 535
    .end local v3    # "flpSessionData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    .end local v16    # "calling_package":Ljava/lang/String;
    .end local v18    # "calling_uid":I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public stopFlpSession(I)I
    .locals 6
    .param p1, "id"    # I

    .line 658
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/DataPerPackageAndUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/location/izat/DataPerPackageAndUser;->getData()Lcom/qualcomm/location/izat/CallbackData;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    invoke-static {v0, v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1802(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    .line 660
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IFlpService.Stub(): stopFlpSession(); id is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1700()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid FlpSession id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/4 v0, -0x1

    return v0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 675
    .local v0, "flpSessionData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 676
    const/4 v1, 0x0

    .local v1, "result":I
    goto :goto_0

    .line 678
    .end local v1    # "result":I
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1, p1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3700(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;I)I

    move-result v1

    .line 679
    .restart local v1    # "result":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v2, "sList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1100(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 681
    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 680
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object v3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v5, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 683
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 686
    .end local v2    # "sList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    return v1

    .line 666
    .end local v0    # "flpSessionData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    .end local v1    # "result":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterCallback(ILcom/qti/flp/ILocationCallback;)V
    .locals 3
    .param p1, "sessionType"    # I
    .param p2, "cb"    # Lcom/qti/flp/ILocationCallback;

    .line 399
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IFlpService.Stub(): unregisterCallback(): cb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    if-eqz p2, :cond_3

    .line 403
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 404
    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    .line 405
    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 406
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1700()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 407
    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 421
    :try_start_0
    const-string v1, "FlpServiceProvider"

    const-string v2, "unknown sessionType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 413
    :pswitch_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 414
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    goto :goto_0

    .line 409
    :pswitch_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 410
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$1900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    goto :goto_0

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 418
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    nop

    .line 424
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 426
    :cond_2
    const-string v0, "FlpServiceProvider"

    const-string v1, "one of the callback list is not created"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 429
    :cond_3
    const-string v0, "FlpServiceProvider"

    const-string v1, "cb is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unregisterForSessionStatus(Lcom/qti/flp/ISessionStatusCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/qti/flp/ISessionStatusCallback;

    .line 463
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in FlpService.Stub unregisterForSessionStatus() cb = : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_0
    if-eqz p1, :cond_1

    .line 467
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 468
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$2400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 470
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 474
    :cond_1
    const-string v0, "FlpServiceProvider"

    const-string v1, "cb is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_2
    :goto_0
    return-void
.end method

.method public updateFlpSession(IIJIJ)I
    .locals 11
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "period_ms"    # J
    .param p5, "distance_interval_mps"    # I
    .param p6, "trip_distance_m"    # J

    .line 583
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v10}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->updateFlpSessionWithPower(IIJIJIJ)I

    move-result v0

    return v0
.end method

.method public updateFlpSessionWithPower(IIJIJIJ)I
    .locals 26
    .param p1, "id"    # I
    .param p2, "flags"    # I
    .param p3, "period_ms"    # J
    .param p5, "distance_interval_mps"    # I
    .param p6, "trip_distance_m"    # J
    .param p8, "power_mode"    # I
    .param p9, "tbm_ms"    # J

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p5

    move-wide/from16 v5, p6

    move/from16 v7, p8

    .line 594
    move-wide/from16 v8, p9

    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const-string v0, "FlpServiceProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "in IFlpService.Stub(): updateFlpSession(); id is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "; period_ms is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p3

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "; flags is "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "; distance_ms is "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "; trip distance "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "; power mode "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "; tbm_ms "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 606
    :cond_0
    move-wide/from16 v11, p3

    :goto_0
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1700()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 607
    :try_start_0
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;

    .line 609
    .local v0, "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    const/4 v13, 0x1

    if-eq v3, v13, :cond_1

    const/4 v13, 0x3

    if-ne v3, v13, :cond_3

    .line 611
    :cond_1
    if-eqz v0, :cond_2

    .line 612
    invoke-static {v0, v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->access$3002(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;I)I

    goto :goto_1

    .line 616
    :cond_2
    new-instance v13, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;

    iget-object v14, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-direct {v13, v14}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V

    move-object v0, v13

    .line 617
    invoke-static {v0, v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;->access$3002(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;I)I

    .line 618
    iget-object v13, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v13}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v13

    invoke-static {v13}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    .end local v0    # "bgSessData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$BgSessionData;
    :cond_3
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 623
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 624
    const-string v0, "FlpServiceProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid FlpSession id: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v0, -0x1

    return v0

    .line 629
    :cond_4
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;

    .line 630
    .local v13, "flpSessionData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3200()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 631
    :try_start_1
    invoke-static {v13, v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$302(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;I)I

    .line 632
    invoke-static {v13, v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$502(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;I)I

    .line 633
    invoke-static/range {p3 .. p4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$000(J)J

    move-result-wide v2

    invoke-static {v13, v2, v3}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$602(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;J)J

    .line 634
    invoke-static {v13, v4}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$702(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;I)I

    .line 635
    invoke-static {v13, v5, v6}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$802(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;J)J

    .line 636
    invoke-static {v13, v7}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$902(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;I)I

    .line 637
    invoke-static {v13, v8, v9}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1002(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;J)J

    .line 639
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 640
    const/4 v0, 0x0

    .local v0, "result":I
    goto :goto_2

    .line 642
    .end local v0    # "result":I
    :cond_5
    iget-object v0, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v13}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v16

    .line 643
    invoke-static {v13}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$500(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v17

    .line 644
    invoke-static {v13}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J

    move-result-wide v18

    .line 645
    invoke-static {v13}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$700(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v20

    .line 646
    invoke-static {v13}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J

    move-result-wide v21

    .line 647
    invoke-static {v13}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$900(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)I

    move-result v23

    .line 648
    invoke-static {v13}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;->access$1000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;)J

    move-result-wide v24

    .line 642
    move-object v15, v0

    invoke-static/range {v15 .. v25}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$3600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;IIJIJIJ)I

    move-result v0

    .line 650
    .restart local v0    # "result":I
    :goto_2
    monitor-exit v14

    .line 652
    return v0

    .line 650
    .end local v0    # "result":I
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 621
    .end local v13    # "flpSessionData":Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpSessionData;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

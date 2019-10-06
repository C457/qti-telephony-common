.class Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;
.super Lcom/qti/flp/ITestService$Stub;
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

    .line 727
    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-direct {p0}, Lcom/qti/flp/ITestService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteAidingData(J)V
    .locals 3
    .param p1, "flags"    # J

    .line 729
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IFlpService.Stub(): deleteAidingData(). Flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0, p1, p2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4000(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;J)V

    .line 733
    return-void
.end method

.method public registerMaxPowerChangeCallback(Lcom/qti/flp/IMaxPowerAllocatedCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/qti/flp/IMaxPowerAllocatedCallback;

    .line 743
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    const-string v0, "FlpServiceProvider"

    const-string v1, "in IFlpService.Stub(): registerMaxPowerChangeCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    if-eqz p1, :cond_2

    .line 747
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 749
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$4300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    :try_start_0
    invoke-interface {p1}, Lcom/qti/flp/IMaxPowerAllocatedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2$1;

    invoke-direct {v1, p0, p1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2$1;-><init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;Lcom/qti/flp/IMaxPowerAllocatedCallback;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 759
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4400(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed clean up"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 764
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v0, "FlpServiceProvider"

    const-string v1, "mMaxPowerCallbacks is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 767
    :cond_2
    const-string v0, "FlpServiceProvider"

    const-string v1, "cb is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :goto_0
    return-void
.end method

.method public unregisterMaxPowerChangeCallback(Lcom/qti/flp/IMaxPowerAllocatedCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/qti/flp/IMaxPowerAllocatedCallback;

    .line 772
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    const-string v0, "FlpServiceProvider"

    const-string v1, "in IFlpService.Stub(): unregisterMaxPowerChangeCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_0
    if-eqz p1, :cond_2

    .line 776
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 779
    :cond_1
    const-string v0, "FlpServiceProvider"

    const-string v1, "mMaxPowerCallbacks is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 782
    :cond_2
    const-string v0, "FlpServiceProvider"

    const-string v1, "cb is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_0
    return-void
.end method

.method public updateXtraThrottle(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 736
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    const-string v0, "FlpServiceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in IFlpService.Stub(): updateXtraThrottle(). enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0, p1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4100(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;Z)V

    .line 740
    return-void
.end method

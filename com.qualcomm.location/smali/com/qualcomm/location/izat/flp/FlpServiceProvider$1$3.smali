.class Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;
.super Ljava/lang/Object;
.source "FlpServiceProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->registerCallback(IILcom/qti/flp/ILocationCallback;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;

.field final synthetic val$cb:Lcom/qti/flp/ILocationCallback;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;Lcom/qti/flp/ILocationCallback;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;

    .line 369
    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;->this$1:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;

    iput-object p2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;->val$cb:Lcom/qti/flp/ILocationCallback;

    iput p3, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 372
    invoke-static {}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1700()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;->this$1:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1600(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;->val$cb:Lcom/qti/flp/ILocationCallback;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 374
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;->this$1:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;

    iget-object v1, v1, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$2300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;->val$cb:Lcom/qti/flp/ILocationCallback;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;->val$id:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 376
    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;->this$1:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;

    iget v2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1$3;->val$id:I

    invoke-virtual {v1, v2}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$1;->stopFlpSession(I)I

    .line 378
    :cond_0
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

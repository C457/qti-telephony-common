.class Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2$1;
.super Ljava/lang/Object;
.source "FlpServiceProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->registerMaxPowerChangeCallback(Lcom/qti/flp/IMaxPowerAllocatedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;

.field final synthetic val$cb:Lcom/qti/flp/IMaxPowerAllocatedCallback;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;Lcom/qti/flp/IMaxPowerAllocatedCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;

    .line 752
    iput-object p1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2$1;->this$1:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;

    iput-object p2, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2$1;->val$cb:Lcom/qti/flp/IMaxPowerAllocatedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2$1;->this$1:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;

    iget-object v0, v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$4200(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2$1;->val$cb:Lcom/qti/flp/IMaxPowerAllocatedCallback;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 756
    iget-object v0, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2$1;->this$1:Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;

    iget-object v0, v0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2;->this$0:Lcom/qualcomm/location/izat/flp/FlpServiceProvider;

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider;->access$1800(Lcom/qualcomm/location/izat/flp/FlpServiceProvider;)Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;->access$4300(Lcom/qualcomm/location/izat/flp/FlpServiceProvider$FlpUserData;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/location/izat/flp/FlpServiceProvider$2$1;->val$cb:Lcom/qti/flp/IMaxPowerAllocatedCallback;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 757
    return-void
.end method

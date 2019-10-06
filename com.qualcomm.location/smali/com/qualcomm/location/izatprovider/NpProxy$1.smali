.class Lcom/qualcomm/location/izatprovider/NpProxy$1;
.super Ljava/lang/Object;
.source "NpProxy.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izatprovider/NpProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/izatprovider/NpProxy;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/izatprovider/NpProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/izatprovider/NpProxy;

    .line 447
    iput-object p1, p0, Lcom/qualcomm/location/izatprovider/NpProxy$1;->this$0:Lcom/qualcomm/location/izatprovider/NpProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 450
    const-string v0, "network"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    invoke-static {}, Lcom/qualcomm/location/izatprovider/NpProxy;->access$000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy$1;->this$0:Lcom/qualcomm/location/izatprovider/NpProxy;

    invoke-static {v0, p1}, Lcom/qualcomm/location/izatprovider/NpProxy;->access$100(Lcom/qualcomm/location/izatprovider/NpProxy;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/NpProxy$1;->this$0:Lcom/qualcomm/location/izatprovider/NpProxy;

    invoke-static {v0}, Lcom/qualcomm/location/izatprovider/NpProxy;->access$200(Lcom/qualcomm/location/izatprovider/NpProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 454
    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 464
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 461
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 458
    return-void
.end method

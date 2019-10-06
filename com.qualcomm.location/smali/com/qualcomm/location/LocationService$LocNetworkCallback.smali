.class final Lcom/qualcomm/location/LocationService$LocNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocNetworkCallback"
.end annotation


# instance fields
.field private connType:I

.field final synthetic this$0:Lcom/qualcomm/location/LocationService;


# direct methods
.method public constructor <init>(Lcom/qualcomm/location/LocationService;I)V
    .locals 2
    .param p2, "type"    # I

    .line 665
    iput-object p1, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->this$0:Lcom/qualcomm/location/LocationService;

    .line 666
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 667
    iput p2, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->connType:I

    .line 668
    invoke-static {}, Lcom/qualcomm/location/LocationService;->access$1700()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "LocSvc_java"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New LocNetworkCallback for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->connType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_0
    return-void
.end method


# virtual methods
.method public getConnType()I
    .locals 3

    .line 661
    invoke-static {}, Lcom/qualcomm/location/LocationService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocSvc_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnType for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->connType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_0
    iget v0, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->connType:I

    return v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 4
    .param p1, "network"    # Landroid/net/Network;

    .line 639
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 640
    invoke-static {}, Lcom/qualcomm/location/LocationService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocSvc_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnAvailable for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->connType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->this$0:Lcom/qualcomm/location/LocationService;

    const/4 v1, 0x3

    const/4 v2, 0x1

    iget v3, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->connType:I

    invoke-static {v0, v1, v2, v3, p1}, Lcom/qualcomm/location/LocationService;->access$2000(Lcom/qualcomm/location/LocationService;IIILjava/lang/Object;)V

    .line 642
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .line 653
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 654
    invoke-static {}, Lcom/qualcomm/location/LocationService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const-string v0, "LocSvc_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLinkPropertiesChanged type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->connType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " IPv4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {p2}, Landroid/net/LinkProperties;->isIPv4Provisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "IPv6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->isIPv6Provisioned()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 655
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_0
    return-void
.end method

.method public onUnavailable()V
    .locals 5

    .line 646
    invoke-super {p0}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V

    .line 647
    invoke-static {}, Lcom/qualcomm/location/LocationService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocSvc_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnUnavailable for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->connType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->this$0:Lcom/qualcomm/location/LocationService;

    const/4 v1, 0x3

    const/4 v2, 0x0

    iget v3, p0, Lcom/qualcomm/location/LocationService$LocNetworkCallback;->connType:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/location/LocationService;->access$2000(Lcom/qualcomm/location/LocationService;IIILjava/lang/Object;)V

    .line 649
    return-void
.end method

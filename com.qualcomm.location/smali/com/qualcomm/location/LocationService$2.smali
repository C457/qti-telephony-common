.class Lcom/qualcomm/location/LocationService$2;
.super Ljava/lang/Object;
.source "LocationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/location/LocationService;->handleNetworkCallback(IILandroid/net/Network;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/LocationService;

.field final synthetic val$agpsConnInfoForApn:Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

.field final synthetic val$info:Landroid/net/NetworkInfo;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/LocationService;Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/LocationService;

    .line 271
    iput-object p1, p0, Lcom/qualcomm/location/LocationService$2;->this$0:Lcom/qualcomm/location/LocationService;

    iput-object p2, p0, Lcom/qualcomm/location/LocationService$2;->val$agpsConnInfoForApn:Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    iput-object p3, p0, Lcom/qualcomm/location/LocationService$2;->val$info:Landroid/net/NetworkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$2;->val$agpsConnInfoForApn:Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    iget-object v1, p0, Lcom/qualcomm/location/LocationService$2;->val$info:Landroid/net/NetworkInfo;

    invoke-static {v0, v1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$1000(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;Landroid/net/NetworkInfo;)Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$2;->val$agpsConnInfoForApn:Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    iget-object v1, p0, Lcom/qualcomm/location/LocationService$2;->val$info:Landroid/net/NetworkInfo;

    invoke-static {v0, v1}, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;->access$1100(Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;Landroid/net/NetworkInfo;)I

    .line 277
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$2;->this$0:Lcom/qualcomm/location/LocationService;

    iget-object v1, p0, Lcom/qualcomm/location/LocationService$2;->val$agpsConnInfoForApn:Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lcom/qualcomm/location/LocationService;->access$1200(Lcom/qualcomm/location/LocationService;IILjava/lang/Object;)V

    .line 278
    return-void
.end method

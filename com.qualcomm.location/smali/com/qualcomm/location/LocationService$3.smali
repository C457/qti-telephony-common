.class Lcom/qualcomm/location/LocationService$3;
.super Landroid/location/INetInitiatedListener$Stub;
.source "LocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/LocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/LocationService;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/LocationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/LocationService;

    .line 462
    iput-object p1, p0, Lcom/qualcomm/location/LocationService$3;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-direct {p0}, Landroid/location/INetInitiatedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendNiResponse(II)Z
    .locals 3
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    .line 469
    invoke-static {}, Lcom/qualcomm/location/LocationService;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocSvc_java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendNiResponse, notifId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/LocationService$3;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-static {v0, p1, p2}, Lcom/qualcomm/location/LocationService;->access$1800(Lcom/qualcomm/location/LocationService;II)V

    .line 472
    const/4 v0, 0x1

    return v0
.end method

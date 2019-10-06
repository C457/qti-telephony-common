.class Lcom/qualcomm/location/LocationService$1;
.super Landroid/os/Handler;
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

    .line 211
    iput-object p1, p0, Lcom/qualcomm/location/LocationService$1;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    .line 215
    .local v0, "message":I
    const/4 v1, 0x0

    .line 216
    .local v1, "msgObj":Lcom/qualcomm/location/LocationService$LocSvcMsgObj;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Lcom/qualcomm/location/LocationService$LocSvcMsgObj;

    .line 219
    :cond_0
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 238
    :sswitch_0
    if-eqz v1, :cond_2

    .line 239
    iget-object v2, p0, Lcom/qualcomm/location/LocationService$1;->this$0:Lcom/qualcomm/location/LocationService;

    iget-object v3, v1, Lcom/qualcomm/location/LocationService$LocSvcMsgObj;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;

    invoke-static {v2, v3}, Lcom/qualcomm/location/LocationService;->access$400(Lcom/qualcomm/location/LocationService;Lcom/qualcomm/location/LocationService$AGpsConnectionInfo;)V

    goto :goto_0

    .line 228
    :sswitch_1
    if-eqz v1, :cond_2

    .line 229
    iget-object v2, p0, Lcom/qualcomm/location/LocationService$1;->this$0:Lcom/qualcomm/location/LocationService;

    iget-object v3, v1, Lcom/qualcomm/location/LocationService$LocSvcMsgObj;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;

    invoke-static {v2, v3}, Lcom/qualcomm/location/LocationService;->access$200(Lcom/qualcomm/location/LocationService;Lcom/qualcomm/location/LocationService$ReportAgpsStatusMessage;)V

    goto :goto_0

    .line 233
    :sswitch_2
    if-eqz v1, :cond_2

    .line 234
    iget-object v2, p0, Lcom/qualcomm/location/LocationService$1;->this$0:Lcom/qualcomm/location/LocationService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, v1, Lcom/qualcomm/location/LocationService$LocSvcMsgObj;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/Network;

    invoke-static {v2, v3, v4, v5}, Lcom/qualcomm/location/LocationService;->access$300(Lcom/qualcomm/location/LocationService;IILandroid/net/Network;)V

    goto :goto_0

    .line 221
    :sswitch_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 222
    iget-object v2, p0, Lcom/qualcomm/location/LocationService$1;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-static {v2}, Lcom/qualcomm/location/LocationService;->access$000(Lcom/qualcomm/location/LocationService;)V

    goto :goto_0

    .line 224
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/location/LocationService$1;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-static {v2}, Lcom/qualcomm/location/LocationService;->access$100(Lcom/qualcomm/location/LocationService;)V

    .line 226
    nop

    .line 244
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lcom/qualcomm/location/LocationService$LocSvcMsgObj;->wakeLockHeld:Z

    if-eqz v2, :cond_3

    .line 245
    iget-object v2, p0, Lcom/qualcomm/location/LocationService$1;->this$0:Lcom/qualcomm/location/LocationService;

    invoke-static {v2}, Lcom/qualcomm/location/LocationService;->access$500(Lcom/qualcomm/location/LocationService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 247
    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.class Lcom/qualcomm/location/osagent/OsAgent$13;
.super Landroid/content/BroadcastReceiver;
.source "OsAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/osagent/OsAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/osagent/OsAgent;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/osagent/OsAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 1617
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$13;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1619
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1620
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.adapter.action.BLE_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1621
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v2, -0x80000000

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1623
    .local v1, "state":I
    packed-switch v1, :pswitch_data_0

    .end local v1    # "state":I
    goto :goto_0

    .line 1634
    .restart local v1    # "state":I
    :pswitch_0
    const-string v2, "BtLeStateChangeReceiver STATE_BLE_TURNING_OFF"

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 1635
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$13;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$1100(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x70

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 1636
    .local v2, "msgObj":Landroid/os/Message;
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent$13;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v3}, Lcom/qualcomm/location/osagent/OsAgent;->access$1100(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v1    # "state":I
    .end local v2    # "msgObj":Landroid/os/Message;
    goto :goto_0

    .line 1626
    .restart local v1    # "state":I
    :pswitch_1
    const-string v2, "BtLeStateChangeReceiver STATE_BLE_ON"

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 1627
    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$13;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$1100(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6f

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 1628
    .restart local v2    # "msgObj":Landroid/os/Message;
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent$13;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v3}, Lcom/qualcomm/location/osagent/OsAgent;->access$1100(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1630
    .end local v2    # "msgObj":Landroid/os/Message;
    nop

    .line 1641
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

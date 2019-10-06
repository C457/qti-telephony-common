.class Lcom/qualcomm/location/osagent/OsAgent$3;
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

    .line 863
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$3;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 868
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    const-string v1, "Action screen state change:ON"

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 872
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$3;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$300(Lcom/qualcomm/location/osagent/OsAgent;Z)V

    goto :goto_0

    .line 873
    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 874
    const-string v1, "Action screen state change:OFF"

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 875
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$3;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$300(Lcom/qualcomm/location/osagent/OsAgent;Z)V

    .line 877
    :cond_1
    :goto_0
    return-void
.end method

.class Lcom/qualcomm/location/osagent/OsAgent$8;
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

    .line 937
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$8;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 941
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    const-string v1, "Action shutdown fired"

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 944
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$8;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$800(Lcom/qualcomm/location/osagent/OsAgent;)V

    .line 946
    :cond_0
    return-void
.end method

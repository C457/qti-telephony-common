.class Lcom/qualcomm/location/osagent/OsAgent$6;
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

    .line 913
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$6;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 917
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$6;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$600(Lcom/qualcomm/location/osagent/OsAgent;)V

    .line 921
    :cond_0
    return-void
.end method

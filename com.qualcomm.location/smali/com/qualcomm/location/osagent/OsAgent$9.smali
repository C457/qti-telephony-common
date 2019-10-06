.class Lcom/qualcomm/location/osagent/OsAgent$9;
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

    .line 950
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$9;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/qualcomm/location/osagent/OsAgent$9;)V
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/qualcomm/location/osagent/OsAgent$9;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v0}, Lcom/qualcomm/location/osagent/OsAgent;->access$1200(Lcom/qualcomm/location/osagent/OsAgent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 954
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 955
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 956
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$9;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x2

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$902(Lcom/qualcomm/location/osagent/OsAgent;I)I

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action user switched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qualcomm/location/osagent/OsAgent$9;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$900(Lcom/qualcomm/location/osagent/OsAgent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$9;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$1000(Lcom/qualcomm/location/osagent/OsAgent;Ljava/util/List;)V

    .line 961
    iget-object v1, p0, Lcom/qualcomm/location/osagent/OsAgent$9;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$1100(Lcom/qualcomm/location/osagent/OsAgent;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/location/osagent/-$$Lambda$OsAgent$9$MiHzjlUPRdzx4ZI8jhxw3yxjWTM;

    invoke-direct {v2, p0}, Lcom/qualcomm/location/osagent/-$$Lambda$OsAgent$9$MiHzjlUPRdzx4ZI8jhxw3yxjWTM;-><init>(Lcom/qualcomm/location/osagent/OsAgent$9;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 963
    :cond_0
    return-void
.end method

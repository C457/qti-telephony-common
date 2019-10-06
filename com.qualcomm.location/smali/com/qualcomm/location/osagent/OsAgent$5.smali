.class Lcom/qualcomm/location/osagent/OsAgent$5;
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

    .line 897
    iput-object p1, p0, Lcom/qualcomm/location/osagent/OsAgent$5;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 901
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 902
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    const-string v1, "Action Battery changed"

    invoke-static {v1}, Lcom/qualcomm/location/osagent/OsAgent;->access$200(Ljava/lang/String;)V

    .line 904
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 905
    .local v1, "level":I
    const-string v3, "scale"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 906
    .local v2, "scale":I
    iget-object v3, p0, Lcom/qualcomm/location/osagent/OsAgent$5;->this$0:Lcom/qualcomm/location/osagent/OsAgent;

    invoke-static {v3, v1, v2}, Lcom/qualcomm/location/osagent/OsAgent;->access$500(Lcom/qualcomm/location/osagent/OsAgent;II)V

    .line 909
    .end local v1    # "level":I
    .end local v2    # "scale":I
    :cond_0
    return-void
.end method

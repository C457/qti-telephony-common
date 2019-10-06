.class Lcom/qualcomm/location/NetInitiatedActivity$2;
.super Landroid/os/Handler;
.source "NetInitiatedActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/NetInitiatedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/NetInitiatedActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/NetInitiatedActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/NetInitiatedActivity;

    .line 82
    iput-object p1, p0, Lcom/qualcomm/location/NetInitiatedActivity$2;->this$0:Lcom/qualcomm/location/NetInitiatedActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/location/NetInitiatedActivity$2;->this$0:Lcom/qualcomm/location/NetInitiatedActivity;

    invoke-static {v0}, Lcom/qualcomm/location/NetInitiatedActivity;->access$100(Lcom/qualcomm/location/NetInitiatedActivity;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/qualcomm/location/NetInitiatedActivity$2;->this$0:Lcom/qualcomm/location/NetInitiatedActivity;

    iget-object v1, p0, Lcom/qualcomm/location/NetInitiatedActivity$2;->this$0:Lcom/qualcomm/location/NetInitiatedActivity;

    invoke-static {v1}, Lcom/qualcomm/location/NetInitiatedActivity;->access$200(Lcom/qualcomm/location/NetInitiatedActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/qualcomm/location/NetInitiatedActivity;->access$300(Lcom/qualcomm/location/NetInitiatedActivity;I)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/location/NetInitiatedActivity$2;->this$0:Lcom/qualcomm/location/NetInitiatedActivity;

    invoke-virtual {v0}, Lcom/qualcomm/location/NetInitiatedActivity;->finish()V

    .line 91
    nop

    .line 94
    :goto_0
    return-void
.end method

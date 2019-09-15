.class Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;
.super Landroid/content/BroadcastReceiver;
.source "QtiDcRetryAlarmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    .line 52
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: ignore empty action=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;Ljava/lang/String;)V

    .line 59
    return-void

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    invoke-static {v1}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 62
    const-string v1, "what"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string v1, "tag"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "what"

    const v2, 0x7fffffff

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, "what":I
    const-string v3, "tag"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 71
    .local v2, "tag":I
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sendMessage(what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", tag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;Ljava/lang/String;)V

    .line 75
    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->access$200(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    invoke-static {v4}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->access$200(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v2, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 76
    .end local v1    # "what":I
    .end local v2    # "tag":I
    goto :goto_0

    .line 66
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no INTENT_RETRY_ALRAM_TAG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    invoke-static {v3}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->access$100(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has no INTENT_RETRY_ALRAM_WHAT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 77
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController$1;->this$0:Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: unknown action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;->access$000(Lcom/qualcomm/qti/internal/telephony/dataconnection/QtiDcRetryAlarmController;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void
.end method

.class Lcom/qualcomm/location/RilInfoMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "RilInfoMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/RilInfoMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/RilInfoMonitor;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/RilInfoMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/location/RilInfoMonitor;

    .line 45
    iput-object p1, p0, Lcom/qualcomm/location/RilInfoMonitor$1;->this$0:Lcom/qualcomm/location/RilInfoMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBroadcastReceiver - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/location/RilInfoMonitor;->access$000(Ljava/lang/String;)V

    .line 51
    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 52
    invoke-static {p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 53
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v1, :cond_0

    .line 54
    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 55
    iget-object v5, p0, Lcom/qualcomm/location/RilInfoMonitor$1;->this$0:Lcom/qualcomm/location/RilInfoMonitor;

    aget-object v6, v1, v4

    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v6

    invoke-virtual {v5, v2, v3, v3, v6}, Lcom/qualcomm/location/RilInfoMonitor;->sendMessage(IIILjava/lang/Object;)V

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "messages":[Landroid/telephony/SmsMessage;
    .end local v4    # "i":I
    :cond_0
    goto :goto_1

    :cond_1
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/qualcomm/location/RilInfoMonitor$1;->this$0:Lcom/qualcomm/location/RilInfoMonitor;

    const-string v4, "data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v2, v3, v3, v4}, Lcom/qualcomm/location/RilInfoMonitor;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 60
    :cond_2
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 61
    const-string v1, "Received intent TelephonyIntents.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED."

    invoke-static {v1}, Lcom/qualcomm/location/RilInfoMonitor;->access$000(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/qualcomm/location/RilInfoMonitor$1;->this$0:Lcom/qualcomm/location/RilInfoMonitor;

    invoke-static {v1}, Lcom/qualcomm/location/RilInfoMonitor;->access$100(Lcom/qualcomm/location/RilInfoMonitor;)V

    .line 64
    :cond_3
    :goto_1
    return-void
.end method

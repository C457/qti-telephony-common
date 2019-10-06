.class Lcom/android/nfc/NfcService$6;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 5446
    iput-object p1, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5450
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5452
    .local v0, "action":Ljava/lang/String;
    const-string v1, "org.codeaurora.intent.action.stk.activate_notify"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5454
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received ACTIVATE intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    iget-object v1, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)I

    move-result v1

    invoke-static {}, Lcom/android/nfc/NfcService;->access$1900()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 5457
    iget-object v1, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 5458
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 5461
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doGetSecureElementList()[I

    move-result-object v1

    .line 5462
    .local v1, "seList":[I
    const-string v2, "NfcService"

    const-string v3, "Activating all SE:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5464
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 5465
    iget-object v3, p0, Lcom/android/nfc/NfcService$6;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    aget v4, v1, v2

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->doActivateSecureElement(I)V

    .line 5468
    const-wide/16 v3, 0xc8

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5471
    goto :goto_1

    .line 5469
    :catch_0
    move-exception v3

    .line 5470
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 5464
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5475
    .end local v1    # "seList":[I
    .end local v2    # "i":I
    :cond_1
    :goto_2
    return-void
.end method

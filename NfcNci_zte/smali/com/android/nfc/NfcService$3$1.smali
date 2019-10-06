.class Lcom/android/nfc/NfcService$3$1;
.super Ljava/util/TimerTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$3;->onAfterSwitch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$3;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$3;

    .line 1318
    iput-object p1, p0, Lcom/android/nfc/NfcService$3$1;->this$1:Lcom/android/nfc/NfcService$3;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1320
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoSwitchTimertask, status:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService$3$1;->this$1:Lcom/android/nfc/NfcService$3;

    iget-object v2, v2, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v0, p0, Lcom/android/nfc/NfcService$3$1;->this$1:Lcom/android/nfc/NfcService$3;

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcService$3$1;->this$1:Lcom/android/nfc/NfcService$3;

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mAutoEnable:Z

    if-eqz v0, :cond_0

    .line 1323
    const-string v0, "NfcService"

    const-string v1, "autoSwitchTimertask: enable failed, abort"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v0, p0, Lcom/android/nfc/NfcService$3$1;->this$1:Lcom/android/nfc/NfcService$3;

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    const-string v1, "dualsystem"

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->doAbort(Ljava/lang/String;)V

    .line 1326
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$3$1;->this$1:Lcom/android/nfc/NfcService$3;

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->autoSwitchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1327
    iget-object v0, p0, Lcom/android/nfc/NfcService$3$1;->this$1:Lcom/android/nfc/NfcService$3;

    iget-object v0, v0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/nfc/NfcService;->autoSwitchTimer:Ljava/util/Timer;

    .line 1328
    return-void
.end method

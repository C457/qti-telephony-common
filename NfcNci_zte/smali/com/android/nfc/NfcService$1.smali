.class Lcom/android/nfc/NfcService$1;
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

    .line 650
    iput-object p1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 653
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAidTableReceiver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    sget-boolean v0, Lcom/android/nfc/NfcService;->GSMA_MENU_ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "NFC_SHOW_GSMA"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    iget-object v0, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->access$002(Lcom/android/nfc/NfcService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 659
    :cond_1
    new-instance v0, Lcom/android/nfc/NfcService$1$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$1$1;-><init>(Lcom/android/nfc/NfcService$1;)V

    .line 666
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$1$1;->start()V

    .line 667
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/AidTableFullActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 668
    .local v0, "nfcDialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 669
    iget-object v1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 671
    return-void
.end method

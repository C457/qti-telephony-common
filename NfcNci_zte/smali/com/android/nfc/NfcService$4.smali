.class Lcom/android/nfc/NfcService$4;
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

    .line 5428
    iput-object p1, p0, Lcom/android/nfc/NfcService$4;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5431
    const-string v0, "org.simalliance.openmobileapi.service.extra.EXTRA_RESULT"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 5432
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService$4;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3800(Lcom/android/nfc/NfcService;)Lcom/gsma/nfc/internal/NxpNfcController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/gsma/nfc/internal/NxpNfcController;->setResultForCertificates(Z)V

    .line 5433
    return-void
.end method

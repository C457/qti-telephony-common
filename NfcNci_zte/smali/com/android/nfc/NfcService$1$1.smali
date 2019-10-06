.class Lcom/android/nfc/NfcService$1$1;
.super Ljava/lang/Thread;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$1;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$1;

    .line 659
    iput-object p1, p0, Lcom/android/nfc/NfcService$1$1;->this$1:Lcom/android/nfc/NfcService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 662
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 663
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x40

    iput v1, v0, Landroid/os/Message;->what:I

    .line 664
    iget-object v1, p0, Lcom/android/nfc/NfcService$1$1;->this$1:Lcom/android/nfc/NfcService$1;

    iget-object v1, v1, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 665
    return-void
.end method

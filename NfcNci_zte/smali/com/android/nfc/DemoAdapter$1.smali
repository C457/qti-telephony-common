.class Lcom/android/nfc/DemoAdapter$1;
.super Landroid/os/Handler;
.source "DemoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/DemoAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/DemoAdapter;


# direct methods
.method constructor <init>(Lcom/android/nfc/DemoAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/DemoAdapter;

    .line 64
    iput-object p1, p0, Lcom/android/nfc/DemoAdapter$1;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 85
    const-string v0, "DemoAdapter"

    const-string v1, "Unknown message received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 72
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter$1;->this$0:Lcom/android/nfc/DemoAdapter;

    iget-object v2, p0, Lcom/android/nfc/DemoAdapter$1;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-static {v2}, Lcom/android/nfc/DemoAdapter;->access$000(Lcom/android/nfc/DemoAdapter;)Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->getAidRoutingTableSize()I

    move-result v2

    iput v2, v0, Lcom/android/nfc/DemoAdapter;->aidTabtotalSize:I

    .line 73
    const-string v0, "DemoAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "baojian aidTabtotalSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/nfc/DemoAdapter$1;->this$0:Lcom/android/nfc/DemoAdapter;

    iget v3, v3, Lcom/android/nfc/DemoAdapter;->aidTabtotalSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DemoAdapter"

    const-string v3, "baojian getCommittedAidRoutingTableSize error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter$1;->this$0:Lcom/android/nfc/DemoAdapter;

    iget-object v2, p0, Lcom/android/nfc/DemoAdapter$1;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-static {v2}, Lcom/android/nfc/DemoAdapter;->access$000(Lcom/android/nfc/DemoAdapter;)Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->getRemainingAidTableSize()I

    move-result v2

    iput v2, v0, Lcom/android/nfc/DemoAdapter;->mRemainingSize:I

    .line 80
    iget-object v0, p0, Lcom/android/nfc/DemoAdapter$1;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-static {v0}, Lcom/android/nfc/DemoAdapter;->access$100(Lcom/android/nfc/DemoAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/AidTableFullActivity;

    const v2, 0x7f090001

    invoke-virtual {v0, v2}, Lcom/android/nfc/AidTableFullActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    .local v0, "tvRemainSize":Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/nfc/DemoAdapter$1;->this$0:Lcom/android/nfc/DemoAdapter;

    iget v3, v3, Lcom/android/nfc/DemoAdapter;->mRemainingSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "Bytes remaining."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 83
    nop

    .line 88
    .end local v0    # "tvRemainSize":Landroid/widget/TextView;
    :goto_1
    return-void
.end method

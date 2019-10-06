.class Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;
.super Landroid/os/Handler;
.source "BluetoothPeripheralHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/BluetoothPeripheralHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 600
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 603
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 631
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v0, v2, :cond_0

    .line 633
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v3, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v0, v1, :cond_1

    .line 635
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v2, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 637
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v1, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    .line 638
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto/16 :goto_2

    .line 628
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    .line 629
    goto :goto_2

    .line 605
    :pswitch_2
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v4, 0x7

    if-ne v0, v4, :cond_2

    return-void

    .line 606
    :cond_2
    const-string v0, "BluetoothPeripheralHandover"

    const-string v4, "Timeout completing BT handover"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v0, v3, :cond_3

    .line 608
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.nfc.handover.action.TIMEOUT_CONNECT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 609
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v0, v2, :cond_4

    .line 610
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    const v2, 0x7f060016

    invoke-static {v1, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->access$000(Lcom/android/nfc/handover/BluetoothPeripheralHandover;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 611
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-ne v0, v1, :cond_8

    .line 612
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    const/4 v1, 0x2

    if-nez v0, :cond_5

    .line 613
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v1, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 615
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-nez v0, :cond_6

    .line 616
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v1, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 618
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v0, :cond_7

    .line 619
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iput v1, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 622
    :cond_7
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    .line 623
    goto :goto_2

    .line 625
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;->this$0:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 626
    nop

    .line 641
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

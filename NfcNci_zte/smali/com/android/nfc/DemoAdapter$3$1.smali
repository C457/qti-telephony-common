.class Lcom/android/nfc/DemoAdapter$3$1;
.super Ljava/lang/Thread;
.source "DemoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/DemoAdapter$3;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/DemoAdapter$3;


# direct methods
.method constructor <init>(Lcom/android/nfc/DemoAdapter$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/nfc/DemoAdapter$3;

    .line 199
    iput-object p1, p0, Lcom/android/nfc/DemoAdapter$3$1;->this$1:Lcom/android/nfc/DemoAdapter$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 202
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 203
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 204
    iget-object v1, p0, Lcom/android/nfc/DemoAdapter$3$1;->this$1:Lcom/android/nfc/DemoAdapter$3;

    iget-object v1, v1, Lcom/android/nfc/DemoAdapter$3;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-static {v1}, Lcom/android/nfc/DemoAdapter;->access$200(Lcom/android/nfc/DemoAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    return-void
.end method

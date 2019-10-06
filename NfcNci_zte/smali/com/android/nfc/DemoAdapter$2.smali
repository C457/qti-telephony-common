.class Lcom/android/nfc/DemoAdapter$2;
.super Ljava/lang/Thread;
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

    .line 90
    iput-object p1, p0, Lcom/android/nfc/DemoAdapter$2;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 110
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 111
    iget-object v1, p0, Lcom/android/nfc/DemoAdapter$2;->this$0:Lcom/android/nfc/DemoAdapter;

    invoke-static {v1}, Lcom/android/nfc/DemoAdapter;->access$200(Lcom/android/nfc/DemoAdapter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 112
    return-void
.end method

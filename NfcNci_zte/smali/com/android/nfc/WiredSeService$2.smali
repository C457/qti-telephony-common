.class Lcom/android/nfc/WiredSeService$2;
.super Landroid/os/Handler;
.source "WiredSeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/WiredSeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/WiredSeService;


# direct methods
.method constructor <init>(Lcom/android/nfc/WiredSeService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/WiredSeService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 157
    iput-object p1, p0, Lcom/android/nfc/WiredSeService$2;->this$0:Lcom/android/nfc/WiredSeService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/nfc/WiredSeService;->access$400()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 164
    const-string v2, "WiredSeService"

    const-string v3, "WiredSe GET_HAL retry failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-static {v0}, Lcom/android/nfc/WiredSeService;->access$402(I)I

    .line 166
    goto :goto_0

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/WiredSeService$2;->this$0:Lcom/android/nfc/WiredSeService;

    invoke-virtual {v2}, Lcom/android/nfc/WiredSeService;->wiredSeInitialize()V

    .line 169
    invoke-static {v0}, Lcom/android/nfc/WiredSeService;->access$402(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "WiredSeService"

    const-string v4, " could not get the service. trying again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {}, Lcom/android/nfc/WiredSeService;->access$408()I

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/WiredSeService$2;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/nfc/WiredSeService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .line 180
    :goto_0
    return-void
.end method

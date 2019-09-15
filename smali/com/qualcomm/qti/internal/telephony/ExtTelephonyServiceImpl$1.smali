.class Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;
.super Ljava/lang/Object;
.source "ExtTelephonyServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->showDeactiveCdmaDiag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 259
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 262
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$400(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 263
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$1;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;->removeMessages(I)V

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 267
    return-void

    .line 266
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

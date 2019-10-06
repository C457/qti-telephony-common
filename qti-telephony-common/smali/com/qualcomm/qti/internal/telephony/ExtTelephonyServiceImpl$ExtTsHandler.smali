.class public Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;
.super Landroid/os/Handler;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtTsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# direct methods
.method public constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 137
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 138
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 139
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 151
    :pswitch_0
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    const-string v1, "handleMessage: EVENT_DIALOG_DISMISS"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$000(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$300(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Z)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    const-string v1, "handleMessage: EVENT_SUBSCRIPTION_CHANGED"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$000(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$200(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V

    .line 148
    nop

    .line 155
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

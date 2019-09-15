.class public Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "ExtTelephonyServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExtTsSubscriptionsChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;


# direct methods
.method protected constructor <init>(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    .line 122
    iput-object p1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    const-string v1, "onSubscriptionsChanged"

    invoke-static {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$000(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    invoke-static {v0}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->access$100(Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    iget-object v0, v0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;

    iget-object v1, p0, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsSubscriptionsChangedListener;->this$0:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;

    iget-object v1, v1, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl;->mHandler:Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/qti/internal/telephony/ExtTelephonyServiceImpl$ExtTsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    :cond_0
    return-void
.end method

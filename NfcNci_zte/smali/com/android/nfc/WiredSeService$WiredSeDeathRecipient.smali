.class Lcom/android/nfc/WiredSeService$WiredSeDeathRecipient;
.super Ljava/lang/Object;
.source "WiredSeService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/WiredSeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredSeDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/WiredSeService;


# direct methods
.method constructor <init>(Lcom/android/nfc/WiredSeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/WiredSeService;

    .line 138
    iput-object p1, p0, Lcom/android/nfc/WiredSeService$WiredSeDeathRecipient;->this$0:Lcom/android/nfc/WiredSeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 142
    :try_start_0
    const-string v0, "WiredSeService"

    const-string v1, "WiredSe: serviceDied !!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/android/nfc/WiredSeService;->access$000()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/nfc/WiredSeService$WiredSeDeathRecipient;->this$0:Lcom/android/nfc/WiredSeService;

    invoke-static {v0}, Lcom/android/nfc/WiredSeService;->access$100(Lcom/android/nfc/WiredSeService;)Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSeHalCallback$Stub;

    move-result-object v0

    invoke-static {}, Lcom/android/nfc/WiredSeService;->access$000()I

    move-result v2

    invoke-virtual {v0, v2}, Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSeHalCallback$Stub;->closeWiredSe(I)I

    .line 145
    invoke-static {v1}, Lcom/android/nfc/WiredSeService;->access$002(I)I

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/WiredSeService$WiredSeDeathRecipient;->this$0:Lcom/android/nfc/WiredSeService;

    iget-object v0, v0, Lcom/android/nfc/WiredSeService;->mWiredSEHal:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;

    iget-object v2, p0, Lcom/android/nfc/WiredSeService$WiredSeDeathRecipient;->this$0:Lcom/android/nfc/WiredSeService;

    invoke-static {v2}, Lcom/android/nfc/WiredSeService;->access$200(Lcom/android/nfc/WiredSeService;)Landroid/os/IHwBinder$DeathRecipient;

    move-result-object v2

    invoke-interface {v0, v2}, Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    .line 148
    iget-object v0, p0, Lcom/android/nfc/WiredSeService$WiredSeDeathRecipient;->this$0:Lcom/android/nfc/WiredSeService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/WiredSeService;->mWiredSEHal:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;

    .line 149
    iget-object v0, p0, Lcom/android/nfc/WiredSeService$WiredSeDeathRecipient;->this$0:Lcom/android/nfc/WiredSeService;

    invoke-static {v0}, Lcom/android/nfc/WiredSeService;->access$300(Lcom/android/nfc/WiredSeService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/WiredSeService$WiredSeDeathRecipient;->this$0:Lcom/android/nfc/WiredSeService;

    invoke-static {v2}, Lcom/android/nfc/WiredSeService;->access$300(Lcom/android/nfc/WiredSeService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

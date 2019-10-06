.class final Lcom/android/nfc/NfcService$NfcVzwService;
.super Lcom/nxp/nfc/INfcVzw$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcVzwService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 3422
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/nxp/nfc/INfcVzw$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setScreenOffCondition(Z)V
    .locals 2
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3426
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 3427
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x19

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3428
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3429
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3431
    return-void
.end method

.method public setVzwAidList([Lcom/vzw/nfc/RouteEntry;)Z
    .locals 7
    .param p1, "entries"    # [Lcom/vzw/nfc/RouteEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3436
    const-string v0, "NfcService"

    const-string v1, "setVzwAidList enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVzwAidList  entries length ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3438
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3439
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->ClearVzwCache()V

    .line 3440
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3441
    aget-object v1, p1, v0

    .line 3442
    .local v1, "routeEntry":Lcom/vzw/nfc/RouteEntry;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/vzw/nfc/RouteEntry;->getAid()[B

    move-result-object v3

    .line 3443
    invoke-virtual {v1}, Lcom/vzw/nfc/RouteEntry;->getLocation()I

    move-result v4

    invoke-virtual {v1}, Lcom/vzw/nfc/RouteEntry;->getPowerState()I

    move-result v5

    .line 3444
    invoke-virtual {v1}, Lcom/vzw/nfc/RouteEntry;->isAllowed()Z

    move-result v6

    .line 3442
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/nfc/cardemulation/AidRoutingManager;->UpdateVzwCache([BIIZ)Z

    .line 3446
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3447
    invoke-virtual {v1}, Lcom/vzw/nfc/RouteEntry;->getAid()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "Location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3448
    invoke-virtual {v1}, Lcom/vzw/nfc/RouteEntry;->getLocation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "powerstate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3449
    invoke-virtual {v1}, Lcom/vzw/nfc/RouteEntry;->getPowerState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3446
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    .end local v1    # "routeEntry":Lcom/vzw/nfc/RouteEntry;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_0

    .line 3451
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 3452
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcVzwService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onRoutingTableChanged()V

    .line 3453
    const/4 v0, 0x1

    return v0

    .line 3455
    :cond_1
    return v1
.end method

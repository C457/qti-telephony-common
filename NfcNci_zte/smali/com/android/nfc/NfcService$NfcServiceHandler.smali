.class final Lcom/android/nfc/NfcService$NfcServiceHandler;
.super Landroid/os/Handler;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 4416
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .locals 7
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 5345
    new-instance v6, Landroid/nfc/Tag;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    .line 5346
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 5347
    .local v0, "tag":Landroid/nfc/Tag;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 5348
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 5350
    :try_start_0
    iget v2, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_0

    .line 5351
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$5300(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$5200(Lcom/android/nfc/NfcService;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 5352
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 5354
    :cond_0
    iget-object v2, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    if-eqz v2, :cond_1

    .line 5355
    iget-object v2, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    invoke-interface {v2, v0}, Landroid/nfc/IAppCallback;->onTagDiscovered(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5356
    return-void

    .line 5363
    :catch_0
    move-exception v1

    .line 5365
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "NfcService"

    const-string v3, "App exception, not dispatching."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5366
    return-void

    .line 5360
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 5361
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "NfcService"

    const-string v4, "Reader mode remote has died, falling back."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5367
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    nop

    .line 5369
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v2

    .line 5370
    .local v2, "dispatchResult":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 5371
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 5372
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_0

    .line 5373
    :cond_3
    if-ne v2, v1, :cond_4

    .line 5374
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$5300(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$5200(Lcom/android/nfc/NfcService;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 5375
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 5377
    :cond_4
    :goto_0
    return-void
.end method

.method private getSEAccessAllowedPackages()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5169
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$5000(Lcom/android/nfc/NfcService;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 5172
    :cond_0
    move-object v0, v1

    .line 5174
    .local v0, "readers":[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$5100(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/se/omapi/ISecureElementService;->getReaders()[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 5178
    nop

    .line 5180
    if-eqz v0, :cond_a

    array-length v2, v0

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 5183
    :cond_1
    const/4 v2, 0x0

    .line 5184
    .local v2, "nfcAccessFinal":[Z
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 5185
    .local v3, "installedPackages":[Ljava/lang/String;
    array-length v4, v0

    const/4 v5, 0x0

    move-object v6, v2

    move v2, v5

    .end local v2    # "nfcAccessFinal":[Z
    .local v6, "nfcAccessFinal":[Z
    :goto_0
    if-ge v2, v4, :cond_6

    aget-object v7, v0, v2

    .line 5187
    .local v7, "reader":Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$5100(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;

    move-result-object v8

    iget-object v9, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v9, v9, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    .line 5188
    invoke-interface {v9, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 5187
    invoke-interface {v8, v7, v1, v9}, Landroid/se/omapi/ISecureElementService;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;)[Z

    move-result-object v8

    .line 5189
    .local v8, "accessList":[Z
    if-nez v8, :cond_2

    .line 5190
    goto :goto_2

    .line 5192
    :cond_2
    if-nez v6, :cond_3

    .line 5193
    move-object v6, v8

    .line 5195
    :cond_3
    move v9, v5

    .local v9, "i":I
    :goto_1
    array-length v10, v8

    if-ge v9, v10, :cond_5

    .line 5196
    aget-boolean v10, v8, v9

    if-eqz v10, :cond_4

    .line 5197
    const/4 v10, 0x1

    aput-boolean v10, v6, v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5195
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 5202
    .end local v8    # "accessList":[Z
    .end local v9    # "i":I
    :cond_5
    goto :goto_2

    .line 5200
    :catch_0
    move-exception v8

    .line 5201
    .local v8, "e":Landroid/os/RemoteException;
    const-string v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in isNFCEventAllowed() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5185
    .end local v7    # "reader":Ljava/lang/String;
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5204
    :cond_6
    if-nez v6, :cond_7

    .line 5205
    return-object v1

    .line 5207
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5208
    .local v1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .local v5, "i":I
    :goto_3
    move v2, v5

    .end local v5    # "i":I
    .local v2, "i":I
    array-length v4, v6

    if-ge v2, v4, :cond_9

    .line 5209
    aget-boolean v4, v6, v2

    if-eqz v4, :cond_8

    .line 5210
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5208
    :cond_8
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .line 5213
    .end local v5    # "i":I
    :cond_9
    return-object v1

    .line 5181
    .end local v1    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "installedPackages":[Ljava/lang/String;
    .end local v6    # "nfcAccessFinal":[Z
    :cond_a
    :goto_4
    return-object v1

    .line 5175
    :catch_1
    move-exception v2

    .line 5176
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in getReaders() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5177
    return-object v1

    .line 5170
    .end local v0    # "readers":[Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_b
    :goto_5
    return-object v1
.end method

.method private llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z
    .locals 4
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 5290
    const-string v0, "NfcService"

    const-string v1, "LLCP Activation message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5292
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 5293
    const-string v0, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_TARGET"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5294
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->connect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5296
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5298
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5299
    const-string v0, "NfcService"

    const-string v2, "Initiator Activate LLCP OK"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5300
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 5302
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5303
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5304
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 5305
    return v1

    .line 5303
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 5308
    :cond_0
    const-string v0, "NfcService"

    const-string v1, "Initiator LLCP activation failed. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5309
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_0

    .line 5312
    :cond_1
    const-string v0, "NfcService"

    const-string v1, "Remote Target does not support LLCP. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_0

    .line 5316
    :cond_2
    const-string v0, "NfcService"

    const-string v1, "Cannot connect remote Target. Polling loop restarted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5322
    :cond_3
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 5323
    const-string v0, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_INITIATOR"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5325
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5327
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5328
    const-string v0, "NfcService"

    const-string v2, "Target Activate LLCP OK"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5329
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 5331
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5332
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5333
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 5334
    return v1

    .line 5332
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 5337
    :cond_4
    const-string v0, "NfcService"

    const-string v1, "checkLlcp failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5341
    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendMultiEvtBroadcast(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 5252
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$3800(Lcom/android/nfc/NfcService;)Lcom/gsma/nfc/internal/NxpNfcController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gsma/nfc/internal/NxpNfcController;->getEnabledMultiEvtsPackageList()Ljava/util/ArrayList;

    move-result-object v0

    .line 5253
    .local v0, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 5254
    .local v1, "unicastComponent":Landroid/content/ComponentName;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 5255
    return v3

    .line 5279
    :cond_0
    nop

    .local v3, "i":I
    :goto_0
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5280
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiEvt Enabled Application packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5281
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5282
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v5, "com.gsma.services.nfc.permission.TRANSACTION_EVENT"

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 5279
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 5285
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private sendOffHostTransactionEvent([B[B[B)V
    .locals 17
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "readerByteArray"    # [B

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 5045
    const-string v0, "NfcService"

    const-string v3, "sendOffHostTransactionEvent come in!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5047
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$5000(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 5052
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v4, p3

    :try_start_1
    invoke-direct {v0, v4, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 5053
    .local v0, "reader":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 5054
    .local v3, "installedPackages":[Ljava/lang/String;
    iget-object v5, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$5100(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;

    move-result-object v5

    iget-object v6, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    .line 5055
    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 5054
    invoke-interface {v5, v0, v2, v6}, Landroid/se/omapi/ISecureElementService;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;)[Z

    move-result-object v5

    .line 5056
    .local v5, "nfcAccess":[Z
    if-nez v5, :cond_1

    .line 5057
    return-void

    .line 5059
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5061
    .local v6, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.nfc.action.TRANSACTION_DETECTED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5062
    .local v7, "intent":Landroid/content/Intent;
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5063
    const/high16 v8, 0x10000000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5064
    const-string v8, "android.nfc.extra.AID"

    invoke-virtual {v7, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5065
    const-string v8, "android.nfc.extra.DATA"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v9, p2

    :try_start_2
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 5066
    const-string v8, "android.nfc.extra.SECURE_ELEMENT_NAME"

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5067
    new-instance v8, Ljava/lang/StringBuilder;

    array-length v10, v2

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5068
    .local v8, "aidString":Ljava/lang/StringBuilder;
    array-length v10, v2

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_2

    aget-byte v13, v2, v12

    .line 5069
    .local v13, "b":B
    const-string v14, "%02X"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    aput-object v16, v15, v11

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5068
    .end local v13    # "b":B
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 5071
    :cond_2
    new-instance v10, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "nfc://secure:0/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 5072
    .local v10, "url":Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5073
    const-string v12, "NfcService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendOffHostTransactionEvent nfcAccess.length:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5074
    nop

    .local v11, "i":I
    :goto_1
    array-length v12, v5

    if-ge v11, v12, :cond_4

    .line 5075
    aget-boolean v12, v5, v11

    if-eqz v12, :cond_3

    .line 5076
    iget-object v12, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v12, v12, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5077
    const-string v12, "NfcService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendOffHostTransactionEvent sendBroadcastandroid.nfc.action.TRANSACTION_DETECTED setPackage:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v14, v14, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5078
    iget-object v12, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v12, v12, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5074
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 5093
    .end local v0    # "reader":Ljava/lang/String;
    .end local v3    # "installedPackages":[Ljava/lang/String;
    .end local v5    # "nfcAccess":[Z
    .end local v6    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "aidString":Ljava/lang/StringBuilder;
    .end local v10    # "url":Ljava/lang/String;
    .end local v11    # "i":I
    :catch_0
    move-exception v0

    goto :goto_2

    .line 5091
    :catch_1
    move-exception v0

    goto :goto_3

    .line 5093
    :catch_2
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_2

    .line 5091
    :catch_3
    move-exception v0

    move-object/from16 v9, p2

    goto :goto_3

    .line 5093
    :catch_4
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 v4, p3

    .line 5094
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    const-string v3, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incorrect format for Secure Element name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_4

    .line 5091
    :catch_5
    move-exception v0

    move-object/from16 v9, p2

    move-object/from16 v4, p3

    .line 5092
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3
    const-string v3, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in isNFCEventAllowed() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5095
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    nop

    .line 5096
    :goto_4
    return-void

    .line 5048
    :cond_5
    :goto_5
    move-object/from16 v9, p2

    move-object/from16 v4, p3

    const-string v0, "NfcService"

    const-string v3, "sendOffHostTransactionEvent return!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5049
    return-void
.end method

.method private sendSeBroadcast(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 5217
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5219
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 5220
    const-string v0, "NfcService"

    const-string v1, "NFCINTENT sendNfcEeAccessProtectedBroadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5221
    monitor-enter p0

    .line 5222
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->getSEAccessAllowedPackages()Ljava/util/ArrayList;

    move-result-object v0

    .line 5223
    .local v0, "SEPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5224
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5225
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5226
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NFCINTENT SENT TO PACKAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5227
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5228
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 5230
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5231
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5233
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 5234
    .local v4, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5235
    goto :goto_1

    .line 5237
    :cond_1
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    .line 5240
    :cond_2
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5241
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5245
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    goto :goto_2

    .line 5243
    :catch_0
    move-exception v4

    .line 5244
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in getPackageInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5246
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 5247
    .end local v0    # "SEPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    monitor-exit p0

    .line 5248
    return-void

    .line 5247
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private zteGetApplicationInstallTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5156
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5158
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 5159
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 5160
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 5161
    .local v1, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "NfcService"

    const-string v3, "Application install time not retrieved"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private zteGetPackageListUnicastMode(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 5100
    .local p1, "intentServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 5101
    .local v0, "unicastPkg":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 5102
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5103
    .local v2, "apduResolvedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 5104
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 5105
    .local v4, "resolvedApduService":Ljava/lang/String;
    const/16 v5, -0x3e8

    .line 5107
    .local v5, "highestPriority":I
    const/4 v6, 0x0

    .line 5108
    .local v6, "resolveInfoService":Landroid/content/pm/ResolveInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 5109
    .local v8, "resInfo":Landroid/content/pm/ResolveInfo;
    const-string v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Registered Service in resolved cache"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5110
    move-object v6, v8

    .line 5111
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 5112
    if-nez v6, :cond_0

    .line 5113
    const-string v9, "NfcService"

    const-string v10, "Registered Service is not found in cache"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5114
    goto :goto_0

    .line 5116
    :cond_0
    iget v9, v6, Landroid/content/pm/ResolveInfo;->priority:I

    .line 5117
    .local v9, "priority":I
    if-ne v9, v5, :cond_1

    .line 5118
    const-string v10, "NfcService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "highestPriority add :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5119
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5120
    :cond_1
    if-ge v5, v9, :cond_2

    .line 5121
    move v5, v9

    .line 5122
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 5123
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5124
    const-string v10, "NfcService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "highestPriority clear & add :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5126
    .end local v8    # "resInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "priority":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 5127
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 5128
    const-string v7, "NfcService"

    const-string v8, "No services to resolve, not starting the activity"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5129
    return-object v0

    .line 5130
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-le v7, v8, :cond_6

    .line 5131
    const-string v7, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resolved"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5132
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/nfc/NfcService$NfcServiceHandler;->zteGetApplicationInstallTime(Ljava/lang/String;)J

    move-result-wide v7

    .line 5133
    .local v7, "minInstallTime":J
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 5134
    .local v10, "resolvedService":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/nfc/NfcService$NfcServiceHandler;->zteGetApplicationInstallTime(Ljava/lang/String;)J

    move-result-wide v11

    cmp-long v11, v11, v7

    if-gtz v11, :cond_5

    .line 5135
    invoke-direct {p0, v10}, Lcom/android/nfc/NfcService$NfcServiceHandler;->zteGetApplicationInstallTime(Ljava/lang/String;)J

    move-result-wide v7

    .line 5136
    move-object v4, v10

    .line 5138
    :cond_5
    const-string v11, "NfcService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Install time  of application"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5139
    .end local v10    # "resolvedService":Ljava/lang/String;
    goto :goto_2

    .line 5141
    .end local v7    # "minInstallTime":J
    :cond_6
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Ljava/lang/String;

    .line 5143
    :cond_7
    const-string v7, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Final Resolved Service"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5144
    if-eqz v4, :cond_9

    .line 5145
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 5146
    .local v8, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 5147
    new-instance v7, Landroid/content/ComponentName;

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    .line 5148
    const-string v7, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPackageListUnicastMode unicastPkg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5149
    goto :goto_4

    .line 5151
    .end local v8    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_8
    goto :goto_3

    .line 5153
    :cond_9
    :goto_4
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .line 4419
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_24

    const/16 v4, 0x17

    if-eq v0, v4, :cond_23

    const/16 v4, 0x28

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v4, :cond_1f

    packed-switch v0, :pswitch_data_0

    const/16 v4, 0xff

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/16 v8, 0x20

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    .line 5038
    const-string v0, "NfcService"

    const-string v1, "Unknown message received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 4422
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getChangedFlag()Z

    move-result v0

    .line 4423
    .local v0, "flag":Z
    if-eqz v0, :cond_2b

    .line 4424
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getLastPerferredService()Landroid/content/ComponentName;

    move-result-object v1

    .line 4425
    .local v1, "lastPerferredService":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$3200(Lcom/android/nfc/NfcService;)I

    move-result v4

    const-string v5, "payment"

    invoke-virtual {v2, v4, v1, v5}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 4426
    const-string v2, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "baojian lastPerferredService is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->setChangedFlag(Z)V

    .line 4428
    .end local v1    # "lastPerferredService":Landroid/content/ComponentName;
    goto/16 :goto_b

    .line 5031
    .end local v0    # "flag":Z
    :pswitch_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5032
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onOffHostAidSelected()V

    .line 5034
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [[B

    .line 5035
    .local v0, "data":[[B
    aget-object v1, v0, v3

    aget-object v2, v0, v7

    aget-object v3, v0, v6

    invoke-direct {p0, v1, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendOffHostTransactionEvent([B[B[B)V

    .line 5036
    goto/16 :goto_b

    .line 5026
    .end local v0    # "data":[[B
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5027
    .local v0, "apdu":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-static {v0}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost;->unrouteApduPattern([B)Z

    .line 5028
    goto/16 :goto_b

    .line 5011
    .end local v0    # "apdu":Ljava/lang/String;
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5012
    .local v0, "route":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 5013
    .local v1, "power":I
    const/4 v2, 0x0

    .line 5014
    .local v2, "apduData":Ljava/lang/String;
    const/4 v3, 0x0

    .line 5015
    .local v3, "apduMask":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 5016
    .local v4, "dataBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 5017
    const-string v5, "apduData"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5018
    const-string v5, "apduMask"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5021
    :cond_1
    if-eqz v2, :cond_2b

    if-eqz v4, :cond_2b

    .line 5022
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-static {v2}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v3}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v5, v0, v1, v6, v7}, Lcom/android/nfc/DeviceHost;->routeApduPattern(II[B[B)Z

    goto/16 :goto_b

    .line 4983
    .end local v0    # "route":I
    .end local v1    # "power":I
    .end local v2    # "apduData":Ljava/lang/String;
    .end local v3    # "apduMask":Ljava/lang/String;
    .end local v4    # "dataBundle":Landroid/os/Bundle;
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4984
    .local v0, "enable":I
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$WatchDogThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 4986
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$WatchDogThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4988
    goto :goto_0

    .line 4987
    :catch_0
    move-exception v1

    .line 4989
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    new-instance v2, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const-string v4, "disableInternal"

    const/16 v5, 0x2710

    invoke-direct {v2, v3, v4, v5}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$2902(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$WatchDogThread;)Lcom/android/nfc/NfcService$WatchDogThread;

    .line 4990
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Watchdog: WatchDog Thread ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$WatchDogThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/NfcService$WatchDogThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$WatchDogThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 4992
    goto/16 :goto_b

    .line 4931
    .end local v0    # "enable":I
    :pswitch_5
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_SWP_READER_RESTART"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4934
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4936
    .local v0, "swpReaderRestartIntent":Landroid/content/Intent;
    const-string v1, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_RESTART"

    .line 4937
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4939
    const-string v1, "NfcService"

    const-string v2, "SWP READER - RESTART"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4942
    goto/16 :goto_b

    .line 4994
    .end local v0    # "swpReaderRestartIntent":Landroid/content/Intent;
    :pswitch_6
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    .line 4995
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "nfc_tag"

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 4996
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 4998
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_3

    .line 4999
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "nfc_ce"

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5000
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5002
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_4

    .line 5003
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "nfc_p2p"

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5004
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5006
    :cond_4
    const/16 v0, 0x39

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 5007
    const-wide/32 v1, 0xdbba00

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5008
    goto/16 :goto_b

    .line 4968
    :pswitch_7
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 4969
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v2, v3, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    .line 4970
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 4971
    .local v3, "tagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v2, v4, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 4972
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput v1, v2, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 4973
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4974
    if-eqz v3, :cond_2b

    .line 4976
    :try_start_2
    invoke-interface {v3}, Landroid/nfc/ITagRemovedCallback;->onTagRemoved()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 4979
    .end local v3    # "tagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    :goto_1
    goto/16 :goto_b

    .line 4977
    .restart local v3    # "tagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    :catch_1
    move-exception v0

    goto :goto_1

    .line 4973
    .end local v3    # "tagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 4462
    :pswitch_8
    const-string v0, "NfcService"

    const-string v1, "message to deregister LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4463
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 4465
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 4466
    .local v0, "t3tIdentifier":[B
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost;->deregisterT3tIdentifier([B)V

    .line 4468
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$4500(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    .line 4469
    .local v1, "params":Lcom/android/nfc/NfcDiscoveryParameters;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v2}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    .line 4470
    .local v2, "shouldRestart":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 4471
    goto/16 :goto_b

    .line 4450
    .end local v0    # "t3tIdentifier":[B
    .end local v1    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    .end local v2    # "shouldRestart":Z
    :pswitch_9
    const-string v0, "NfcService"

    const-string v1, "message to register LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4451
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 4453
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 4454
    .restart local v0    # "t3tIdentifier":[B
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost;->registerT3tIdentifier([B)V

    .line 4456
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$4500(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    .line 4457
    .restart local v1    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v2}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    .line 4458
    .restart local v2    # "shouldRestart":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 4459
    goto/16 :goto_b

    .line 4558
    .end local v0    # "t3tIdentifier":[B
    .end local v1    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    .end local v2    # "shouldRestart":Z
    :pswitch_a
    const-string v0, "NfcService"

    const-string v1, "SE DELIVER INTENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    .line 4561
    .local v0, "seIntent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 4562
    .local v1, "action":Ljava/lang/String;
    const-string v2, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4563
    const-string v2, "com.android.nfc_extras.extra.AID"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 4564
    .local v2, "byteAid":[B
    const-string v5, "com.android.nfc_extras.extra.DATA"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    .line 4565
    .local v5, "data":[B
    const-string v6, "com.android.nfc_extras.extra.SECURE_ELEMENT_NAME"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4566
    .local v6, "seName":Ljava/lang/String;
    const-string v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " TRANSACTION_EVENT seName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4568
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 4569
    .local v9, "strAid":Ljava/lang/StringBuffer;
    nop

    .local v3, "i":I
    :goto_2
    array-length v10, v2

    if-ge v3, v10, :cond_6

    .line 4570
    aget-byte v10, v2, v3

    and-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    .line 4571
    .local v10, "hex":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v7, :cond_5

    .line 4572
    const/16 v11, 0x30

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 4573
    :cond_5
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4569
    .end local v10    # "hex":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4575
    .end local v3    # "i":I
    :cond_6
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 4576
    .local v3, "gsmaIntent":Landroid/content/Intent;
    const-string v4, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4577
    if-eqz v2, :cond_7

    .line 4578
    const-string v4, "com.gsma.services.nfc.extra.AID"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4579
    :cond_7
    if-eqz v5, :cond_8

    .line 4580
    const-string v4, "com.gsma.services.nfc.extra.DATA"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4582
    :cond_8
    new-instance v4, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "nfc://secure:0/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4583
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4584
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4585
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4587
    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$3800(Lcom/android/nfc/NfcService;)Lcom/gsma/nfc/internal/NxpNfcController;

    move-result-object v8

    iget-object v8, v8, Lcom/gsma/nfc/internal/NxpNfcController;->mMultiReceptionMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 4588
    .local v8, "receptionMode":Ljava/lang/Boolean;
    if-nez v8, :cond_9

    .line 4589
    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v10}, Lcom/android/nfc/NfcService;->access$4700(Lcom/android/nfc/NfcService;)Ljava/lang/Boolean;

    move-result-object v8

    .line 4591
    :cond_9
    invoke-static {}, Lcom/android/nfc/NfcService;->access$4800()Ljava/lang/Boolean;

    move-result-object v10

    if-ne v8, v10, :cond_a

    .line 4593
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_3

    .line 4597
    :cond_a
    :try_start_4
    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v10, v10, Lcom/android/nfc/NfcService;->mIsSentUnicastReception:Z

    if-nez v10, :cond_b

    .line 4599
    const/high16 v10, 0x10000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4600
    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v10, v10, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4601
    const-string v10, "NfcService"

    const-string v11, "MSG_SE_DELIVER_INTENT startActivity ! "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4602
    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v7, v10, Lcom/android/nfc/NfcService;->mIsSentUnicastReception:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 4606
    :cond_b
    goto :goto_3

    .line 4604
    :catch_2
    move-exception v7

    .line 4605
    .local v7, "e":Ljava/lang/Exception;
    const-string v10, "NfcService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    .end local v2    # "byteAid":[B
    .end local v3    # "gsmaIntent":Landroid/content/Intent;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "data":[B
    .end local v6    # "seName":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "receptionMode":Ljava/lang/Boolean;
    .end local v9    # "strAid":Ljava/lang/StringBuffer;
    :goto_3
    goto/16 :goto_b

    .line 4609
    :cond_c
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4611
    goto/16 :goto_b

    .line 4528
    .end local v0    # "seIntent":Landroid/content/Intent;
    .end local v1    # "action":Ljava/lang/String;
    :pswitch_b
    const-string v0, "NfcService"

    const-string v1, "Handler: Change default route"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4530
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$4600(Lcom/android/nfc/NfcService;)I

    move-result v1

    invoke-virtual {v0, v1, v7, v3, v3}, Lcom/android/nfc/NfcService$NxpNfcAdapterService;->DefaultRouteSet(IZZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 4533
    goto/16 :goto_b

    .line 4531
    :catch_3
    move-exception v0

    .line 4532
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "NfcService"

    const-string v2, "NxpNci: onAidRoutingTableFull: Exception to change default route to host!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4534
    .end local v0    # "re":Landroid/os/RemoteException;
    goto/16 :goto_b

    .line 4946
    :pswitch_c
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 4949
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 4950
    :try_start_6
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    if-ne v1, v5, :cond_d

    .line 4951
    monitor-exit v0

    return-void

    .line 4952
    :cond_d
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4954
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4955
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    or-int/2addr v0, v1

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 4956
    .local v0, "screen_state_mask":I
    :goto_4
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost;->doSetScreenOrPowerState(I)V

    .line 4958
    invoke-static {}, Lcom/android/nfc/NfcService;->access$2600()I

    move-result v1

    if-eq v1, v8, :cond_f

    .line 4959
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_b

    .line 4960
    :cond_f
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_10

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    .line 4961
    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 4962
    :cond_10
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_b

    .line 4952
    .end local v0    # "screen_state_mask":I
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1

    .line 4916
    :pswitch_d
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_ETSI_SWP_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4919
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4921
    .local v0, "swpReaderTimeoutIntent":Landroid/content/Intent;
    const-string v1, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_TIMEOUT"

    .line 4922
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4924
    const-string v1, "NfcService"

    const-string v2, "SWP READER - Timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4926
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4927
    goto/16 :goto_b

    .line 4909
    .end local v0    # "swpReaderTimeoutIntent":Landroid/content/Intent;
    :pswitch_e
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_ETSI_STOP_CONFIG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4911
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->etsiStopConfig(I)V

    .line 4912
    goto/16 :goto_b

    .line 4891
    :pswitch_f
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_ETSI_START_CONFIG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 4894
    .local v0, "configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v1, 0x402

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4896
    const/16 v1, 0x402

    .local v1, "eeHandle":I
    goto :goto_5

    .line 4899
    .end local v1    # "eeHandle":I
    :cond_11
    const/16 v1, 0x4c0

    .line 4901
    .restart local v1    # "eeHandle":I
    :goto_5
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 4902
    :try_start_8
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v1}, Lcom/android/nfc/NfcService;->etsiStartConfig(I)V

    .line 4903
    monitor-exit v2

    .line 4905
    .end local v0    # "configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "eeHandle":I
    goto/16 :goto_b

    .line 4903
    .restart local v0    # "configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v1    # "eeHandle":I
    :catchall_2
    move-exception v3

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v3

    .line 4730
    .end local v0    # "configList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1    # "eeHandle":I
    :pswitch_10
    const-string v0, "NfcService"

    const-string v1, "EMVCO MULTI CARD DETECTED EVENT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4734
    .local v0, "eventEmvcoMultiCardIntent":Landroid/content/Intent;
    const-string v1, "com.nxp.action.EMVCO_MULTIPLE_CARD_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4736
    const-string v1, "NfcService"

    const-string v2, "Broadcasting Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4738
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.NFC"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4739
    goto/16 :goto_b

    .line 4492
    .end local v0    # "eventEmvcoMultiCardIntent":Landroid/content/Intent;
    :pswitch_11
    const-string v0, "NfcService"

    const-string v1, "applyRouting -11"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4493
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v7, v0, Lcom/android/nfc/NfcService;->mIsFelicaOnHostConfigured:Z

    .line 4494
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v7}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 4495
    goto/16 :goto_b

    .line 4485
    :pswitch_12
    const-string v0, "NfcService"

    const-string v1, "applyRouting -10"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4486
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v7, v0, Lcom/android/nfc/NfcService;->mIsFelicaOnHostConfiguring:Z

    .line 4487
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v7}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 4488
    goto/16 :goto_b

    .line 4879
    :pswitch_13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4881
    .local v0, "swpReaderRequestedFailIntent":Landroid/content/Intent;
    const-string v1, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_START_FAIL"

    .line 4882
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4884
    const-string v1, "NfcService"

    const-string v2, "SWP READER - Requested Fail"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4886
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4887
    goto/16 :goto_b

    .line 4835
    .end local v0    # "swpReaderRequestedFailIntent":Landroid/content/Intent;
    :pswitch_14
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->resumePolling()V

    .line 4836
    goto/16 :goto_b

    .line 4865
    :pswitch_15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4866
    .local v0, "swpReaderRequestedIntent":Landroid/content/Intent;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 4867
    .local v1, "techList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4868
    const-string v2, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_START_SUCCESS"

    .line 4869
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4871
    const-string v2, "NfcService"

    const-string v3, "SWP READER - Requested"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4874
    goto/16 :goto_b

    .line 4474
    .end local v0    # "swpReaderRequestedIntent":Landroid/content/Intent;
    .end local v1    # "techList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_16
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/nfc/BeamShareData;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    .line 4475
    goto/16 :goto_b

    .line 4499
    :pswitch_17
    const-string v0, "NfcService"

    const-string v1, "applyRouting -9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    const/4 v0, 0x0

    .line 4501
    .local v0, "commit":Z
    const/4 v1, 0x0

    .line 4502
    .local v1, "enForced":Z
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 4503
    :try_start_9
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v3}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4504
    const/4 v0, 0x1

    goto :goto_6

    .line 4505
    :cond_12
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$4000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/cardemulation/AidRoutingManager;->isRoutingTableUpdated()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4506
    const/4 v0, 0x1

    .line 4507
    const/4 v1, 0x1

    .line 4508
    const-string v3, "NfcService"

    const-string v4, "Routing table is updated thus needs to be committed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4511
    :cond_13
    const-string v3, "NfcService"

    const-string v4, "Not committing routing because discovery is disabled."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    :goto_6
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 4514
    if-eqz v0, :cond_2b

    .line 4515
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v7, v2, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 4516
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_b

    .line 4513
    :catchall_3
    move-exception v3

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v3

    .line 4479
    .end local v0    # "commit":Z
    .end local v1    # "enForced":Z
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4480
    .local v0, "aid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-static {v0}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost;->unrouteAid([B)Z

    .line 4481
    goto/16 :goto_b

    .line 4434
    .end local v0    # "aid":Ljava/lang/String;
    :pswitch_19
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4435
    .local v0, "route":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4436
    .local v1, "power":I
    const/4 v2, 0x0

    .line 4437
    .local v2, "aidInfo":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 4438
    .local v4, "dataBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_14

    .line 4439
    const-string v5, "aidinfo"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 4440
    :cond_14
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 4441
    .local v5, "aid":Ljava/lang/String;
    move-object v6, v5

    .line 4442
    .local v6, "cuttedAid":Ljava/lang/String;
    const-string v8, "*"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_15

    const-string v8, "#"

    invoke-virtual {v5, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 4443
    :cond_15
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v5, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 4445
    :cond_16
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-static {v6}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-interface {v3, v7, v0, v1, v2}, Lcom/android/nfc/DeviceHost;->routeAid([BIII)Z

    .line 4447
    goto/16 :goto_b

    .line 4816
    .end local v0    # "route":I
    .end local v1    # "power":I
    .end local v2    # "aidInfo":I
    .end local v4    # "dataBundle":Landroid/os/Bundle;
    .end local v5    # "aid":Ljava/lang/String;
    .end local v6    # "cuttedAid":Ljava/lang/String;
    :pswitch_1a
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    .line 4817
    goto/16 :goto_b

    .line 4855
    :pswitch_1b
    const-string v0, "NfcService"

    const-string v1, "SE LISTEN MODE DEACTIVATED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4856
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4857
    .local v0, "listenModeDeactivated":Landroid/content/Intent;
    const-string v1, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4858
    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    .line 4859
    goto/16 :goto_b

    .line 4847
    .end local v0    # "listenModeDeactivated":Landroid/content/Intent;
    :pswitch_1c
    const-string v0, "NfcService"

    const-string v1, "SE LISTEN MODE ACTIVATED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4848
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4849
    .local v0, "listenModeActivated":Landroid/content/Intent;
    const-string v1, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4850
    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    .line 4851
    goto/16 :goto_b

    .line 4764
    .end local v0    # "listenModeActivated":Landroid/content/Intent;
    :pswitch_1d
    const-string v0, "NfcService"

    const-string v1, "MIFARE access message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4766
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 4767
    .local v0, "mifareCmd":[B
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4768
    .local v1, "mifareAccessIntent":Landroid/content/Intent;
    const-string v2, "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4769
    if-eqz v0, :cond_17

    array-length v2, v0

    if-le v2, v7, :cond_17

    .line 4770
    aget-byte v2, v0, v7

    and-int/2addr v2, v4

    .line 4771
    .local v2, "mifareBlock":I
    const-string v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mifare Block="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4772
    const-string v3, "com.android.nfc_extras.extra.MIFARE_BLOCK"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4774
    .end local v2    # "mifareBlock":I
    :cond_17
    const-string v2, "NfcService"

    const-string v3, "Broadcasting com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    .line 4776
    goto/16 :goto_b

    .line 4742
    .end local v0    # "mifareCmd":[B
    .end local v1    # "mifareAccessIntent":Landroid/content/Intent;
    :pswitch_1e
    const-string v0, "NfcService"

    const-string v1, "Card Removal message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4744
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4745
    .local v0, "cardRemovalIntent":Landroid/content/Intent;
    const-string v1, "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4746
    const-string v1, "NfcService"

    const-string v2, "Broadcasting com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4747
    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    .line 4748
    goto/16 :goto_b

    .line 4751
    .end local v0    # "cardRemovalIntent":Landroid/content/Intent;
    :pswitch_1f
    const-string v0, "NfcService"

    const-string v1, "APDU Received message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 4754
    .local v0, "apduBytes":[B
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4755
    .local v1, "apduReceivedIntent":Landroid/content/Intent;
    const-string v2, "com.android.nfc_extras.action.APDU_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4756
    if-eqz v0, :cond_18

    array-length v2, v0

    if-lez v2, :cond_18

    .line 4757
    const-string v2, "com.android.nfc_extras.extra.APDU_BYTES"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4759
    :cond_18
    const-string v2, "NfcService"

    const-string v3, "Broadcasting com.android.nfc_extras.action.APDU_RECEIVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4760
    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    .line 4761
    goto/16 :goto_b

    .line 4839
    .end local v0    # "apduBytes":[B
    .end local v1    # "apduReceivedIntent":Landroid/content/Intent;
    :pswitch_20
    const-string v0, "NfcService"

    const-string v1, "SE FIELD DEACTIVATED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4840
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4841
    .local v0, "eventFieldOffIntent":Landroid/content/Intent;
    const-string v1, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4842
    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    .line 4843
    goto/16 :goto_b

    .line 4828
    .end local v0    # "eventFieldOffIntent":Landroid/content/Intent;
    :pswitch_21
    const-string v0, "NfcService"

    const-string v1, "SE FIELD ACTIVATED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4830
    .local v0, "eventFieldOnIntent":Landroid/content/Intent;
    const-string v1, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4831
    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    .line 4832
    goto/16 :goto_b

    .line 4537
    .end local v0    # "eventFieldOnIntent":Landroid/content/Intent;
    :pswitch_22
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 4538
    .local v0, "ndefMsg":Landroid/nfc/NdefMessage;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4539
    .local v2, "extras":Landroid/os/Bundle;
    const-string v4, "ndefmsg"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4540
    const-string v4, "ndefmaxlength"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4541
    const-string v4, "ndefcardstate"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4542
    const-string v4, "ndeftype"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4543
    new-array v1, v7, [B

    aput-byte v3, v1, v3

    new-array v4, v7, [I

    const/4 v5, 0x6

    aput v5, v4, v3

    new-array v5, v7, [Landroid/os/Bundle;

    aput-object v2, v5, v3

    invoke-static {v1, v4, v5}, Landroid/nfc/Tag;->createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;

    move-result-object v1

    .line 4546
    .local v1, "tag":Landroid/nfc/Tag;
    const-string v3, "NfcService"

    const-string v4, "mock NDEF tag, starting corresponding activity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    const-string v3, "NfcService"

    invoke-virtual {v1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v3

    .line 4549
    .local v3, "dispatchStatus":I
    if-ne v3, v7, :cond_19

    .line 4550
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, v7}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_b

    .line 4551
    :cond_19
    if-ne v3, v6, :cond_2b

    .line 4552
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, v6}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_b

    .line 4820
    .end local v0    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v1    # "tag":Landroid/nfc/Tag;
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "dispatchStatus":I
    :pswitch_23
    const-string v0, "NfcService"

    const-string v1, "Target Deselected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4821
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4822
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4823
    const-string v1, "NfcService"

    const-string v2, "Broadcasting Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4824
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.NFC"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4825
    goto/16 :goto_b

    .line 4789
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_24
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    if-eqz v0, :cond_1a

    .line 4790
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.action.LLCP_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4791
    .local v0, "deactIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4793
    .end local v0    # "deactIntent":Landroid/content/Intent;
    :cond_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 4794
    .local v0, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    const/4 v1, 0x0

    .line 4796
    .local v1, "needsDisconnect":Z
    const-string v2, "NfcService"

    const-string v3, "LLCP Link Deactivated message. Restart polling loop."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4797
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 4799
    :try_start_b
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 4801
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v3

    if-nez v3, :cond_1b

    .line 4802
    const-string v3, "NfcService"

    const-string v4, "disconnecting from target"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4803
    const/4 v1, 0x1

    goto :goto_7

    .line 4805
    :cond_1b
    const-string v3, "NfcService"

    const-string v4, "not disconnecting from initiator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4808
    :cond_1c
    :goto_7
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 4809
    if-eqz v1, :cond_1d

    .line 4810
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 4813
    :cond_1d
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 4814
    goto/16 :goto_b

    .line 4808
    :catchall_4
    move-exception v3

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v3

    .line 4779
    .end local v0    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    .end local v1    # "needsDisconnect":Z
    :pswitch_25
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$4900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 4781
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    if-eqz v0, :cond_1e

    .line 4782
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.action.LLCP_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4783
    .local v0, "actIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4785
    .end local v0    # "actIntent":Landroid/content/Intent;
    :cond_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z

    .line 4786
    goto/16 :goto_b

    .line 4706
    :cond_1f
    const-string v0, "NfcService"

    const-string v1, "SE EVENT CONNECTIVITY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4708
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 4709
    .local v0, "evtSrcInfo":Ljava/lang/Integer;
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event source "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4710
    const-string v1, ""

    .line 4711
    .local v1, "evtSrc":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v6, :cond_20

    .line 4712
    const-string v1, "com.nxp.uicc.ID"

    goto :goto_8

    .line 4713
    :cond_20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_21

    .line 4714
    const-string v1, "com.nxp.uicc2.ID"

    goto :goto_8

    .line 4715
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v7, :cond_22

    .line 4716
    const-string v1, "com.nxp.smart_mx.ID"

    .line 4719
    :cond_22
    :goto_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4720
    .local v2, "eventConnectivityIntent":Landroid/content/Intent;
    const-string v3, "com.nxp.action.CONNECTIVITY_EVENT_DETECTED"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4721
    const-string v3, "com.nxp.extra.SOURCE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4723
    const-string v3, "NfcService"

    const-string v4, "Broadcasting Intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.NFC"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 4726
    goto/16 :goto_b

    .line 4523
    .end local v0    # "evtSrcInfo":Ljava/lang/Integer;
    .end local v1    # "evtSrc":Ljava/lang/String;
    .end local v2    # "eventConnectivityIntent":Landroid/content/Intent;
    :cond_23
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->clearAidTable()Z

    .line 4524
    goto/16 :goto_b

    .line 4615
    :cond_24
    const-string v0, "NfcService"

    const-string v4, "Tag detected, notifying applications"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4616
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$4900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v3, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 4618
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4619
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 4623
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 4624
    :try_start_d
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    .line 4625
    .local v4, "debounceTagUid":[B
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mDebounceTagDebounceMs:I

    .line 4626
    .local v5, "debounceTagMs":I
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 4627
    .local v6, "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 4629
    const/4 v3, 0x0

    .line 4630
    .local v3, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    const/16 v7, 0x7d

    .line 4631
    .local v7, "presenceCheckDelay":I
    new-instance v8, Lcom/android/nfc/NfcService$NfcServiceHandler$1;

    invoke-direct {v8, p0}, Lcom/android/nfc/NfcService$NfcServiceHandler$1;-><init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V

    .line 4640
    .local v8, "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    iget-object v9, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v9

    .line 4641
    :try_start_e
    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v10, v10, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    move-object v3, v10

    .line 4642
    monitor-exit v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 4643
    if-eqz v3, :cond_25

    .line 4644
    iget v7, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    .line 4645
    iget v9, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_25

    .line 4646
    const-string v1, "NfcService"

    const-string v2, "Skipping NDEF detection in reader mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4647
    invoke-interface {v0, v7, v8}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4648
    invoke-direct {p0, v0, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 4649
    goto/16 :goto_b

    .line 4653
    :cond_25
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_26

    .line 4658
    const-string v1, "NfcService"

    const-string v2, "Skipping NDEF detection for NFC Barcode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4659
    invoke-interface {v0, v7, v8}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4660
    invoke-direct {p0, v0, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 4661
    goto :goto_b

    .line 4663
    :cond_26
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    move-result-object v9

    .line 4665
    .local v9, "ndefMsg":Landroid/nfc/NdefMessage;
    if-nez v9, :cond_27

    .line 4667
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v10

    if-nez v10, :cond_27

    .line 4668
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 4669
    goto :goto_b

    .line 4673
    :cond_27
    if-eqz v4, :cond_2a

    .line 4676
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v10

    invoke-static {v4, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-nez v10, :cond_29

    if-eqz v9, :cond_28

    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v10, v10, Lcom/android/nfc/NfcService;->mLastReadNdefMessage:Landroid/nfc/NdefMessage;

    .line 4677
    invoke-virtual {v9, v10}, Landroid/nfc/NdefMessage;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    goto :goto_9

    .line 4683
    :cond_28
    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v10

    .line 4684
    :try_start_f
    iget-object v11, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v2, v11, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    .line 4685
    iget-object v11, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v2, v11, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 4686
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput v1, v2, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 4687
    monitor-exit v10
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 4688
    if-eqz v6, :cond_2a

    .line 4690
    :try_start_10
    invoke-interface {v6}, Landroid/nfc/ITagRemovedCallback;->onTagRemoved()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_4

    .line 4693
    goto :goto_a

    .line 4691
    :catch_4
    move-exception v1

    goto :goto_a

    .line 4687
    :catchall_5
    move-exception v1

    :try_start_11
    monitor-exit v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v1

    .line 4678
    :cond_29
    :goto_9
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    const/16 v2, 0x38

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 4679
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    int-to-long v10, v5

    invoke-virtual {v1, v2, v10, v11}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4680
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 4681
    return-void

    .line 4698
    :cond_2a
    :goto_a
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v9, v1, Lcom/android/nfc/NfcService;->mLastReadNdefMessage:Landroid/nfc/NdefMessage;

    .line 4700
    invoke-interface {v0, v7, v8}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4701
    invoke-direct {p0, v0, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 4702
    nop

    .line 5041
    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    .end local v3    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    .end local v4    # "debounceTagUid":[B
    .end local v5    # "debounceTagMs":I
    .end local v6    # "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    .end local v7    # "presenceCheckDelay":I
    .end local v8    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .end local v9    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_2b
    :goto_b
    return-void

    .line 4642
    .restart local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    .restart local v3    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    .restart local v4    # "debounceTagUid":[B
    .restart local v5    # "debounceTagMs":I
    .restart local v6    # "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    .restart local v7    # "presenceCheckDelay":I
    .restart local v8    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    :catchall_6
    move-exception v1

    :try_start_12
    monitor-exit v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v1

    .line 4627
    .end local v3    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    .end local v4    # "debounceTagUid":[B
    .end local v5    # "debounceTagMs":I
    .end local v6    # "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    .end local v7    # "presenceCheckDelay":I
    .end local v8    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    :catchall_7
    move-exception v1

    :try_start_13
    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_25
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2d
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3c
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

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

    .line 3138
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .locals 8
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 3771
    const-string v0, "NfcService"

    new-instance v7, Landroid/nfc/Tag;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v2

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v3

    .line 3772
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v5

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v1, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 3773
    .local v1, "tag":Landroid/nfc/Tag;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 3774
    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 3776
    :try_start_0
    iget v3, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_0

    .line 3777
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$3400(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$3300(Lcom/android/nfc/NfcService;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 3778
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 3780
    :cond_0
    iget-object v3, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    if-eqz v3, :cond_1

    .line 3781
    iget-object v3, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    invoke-interface {v3, v1}, Landroid/nfc/IAppCallback;->onTagDiscovered(Landroid/nfc/Tag;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3782
    return-void

    .line 3789
    :catch_0
    move-exception v2

    .line 3791
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "App exception, not dispatching."

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3792
    return-void

    .line 3786
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 3787
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Reader mode remote has died, falling back."

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3795
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v0

    .line 3796
    .local v0, "dispatchResult":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v4, :cond_4

    .line 3797
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 3798
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    .line 3799
    invoke-static {}, Lcom/android/nfc/NfcService;->access$3000()Landroid/widget/Toast;

    move-result-object v2

    const v4, 0x7f0b0028

    if-nez v2, :cond_2

    .line 3800
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 3803
    :cond_2
    invoke-static {}, Lcom/android/nfc/NfcService;->access$3000()Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setText(I)V

    .line 3804
    invoke-static {}, Lcom/android/nfc/NfcService;->access$3000()Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3806
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_0

    .line 3807
    :cond_4
    if-ne v0, v2, :cond_5

    .line 3808
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$3400(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$3300(Lcom/android/nfc/NfcService;)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    .line 3809
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 3811
    :cond_5
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

    .line 3634
    const-string v0, "NfcService"

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 3637
    :cond_0
    const/4 v1, 0x0

    .line 3639
    .local v1, "readers":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$3200(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;

    move-result-object v3

    invoke-interface {v3}, Landroid/se/omapi/ISecureElementService;->getReaders()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v3

    .line 3643
    nop

    .line 3645
    if-eqz v1, :cond_a

    array-length v3, v1

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 3648
    :cond_1
    const/4 v3, 0x0

    .line 3649
    .local v3, "nfcAccessFinal":[Z
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 3650
    .local v4, "installedPackages":[Ljava/lang/String;
    array-length v5, v1

    const/4 v6, 0x0

    move-object v7, v3

    move v3, v6

    .end local v3    # "nfcAccessFinal":[Z
    .local v7, "nfcAccessFinal":[Z
    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v8, v1, v3

    .line 3652
    .local v8, "reader":Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->access$3200(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v10, v10, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    .line 3653
    invoke-interface {v10, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 3652
    invoke-interface {v9, v8, v2, v10}, Landroid/se/omapi/ISecureElementService;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;)[Z

    move-result-object v9

    .line 3654
    .local v9, "accessList":[Z
    if-nez v9, :cond_2

    .line 3655
    goto :goto_2

    .line 3657
    :cond_2
    if-nez v7, :cond_3

    .line 3658
    move-object v7, v9

    .line 3660
    :cond_3
    move v10, v6

    .local v10, "i":I
    :goto_1
    array-length v11, v9

    if-ge v10, v11, :cond_5

    .line 3661
    aget-boolean v11, v9, v10

    if-eqz v11, :cond_4

    .line 3662
    const/4 v11, 0x1

    aput-boolean v11, v7, v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3660
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3667
    .end local v9    # "accessList":[Z
    .end local v10    # "i":I
    :cond_5
    goto :goto_2

    .line 3665
    :catch_0
    move-exception v9

    .line 3666
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in isNFCEventAllowed() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3650
    .end local v8    # "reader":Ljava/lang/String;
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3669
    :cond_6
    if-nez v7, :cond_7

    .line 3670
    return-object v2

    .line 3672
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3673
    .local v0, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v3, v7

    if-ge v2, v3, :cond_9

    .line 3674
    aget-boolean v3, v7, v2

    if-eqz v3, :cond_8

    .line 3675
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3673
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3678
    .end local v2    # "i":I
    :cond_9
    return-object v0

    .line 3646
    .end local v0    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "installedPackages":[Ljava/lang/String;
    .end local v7    # "nfcAccessFinal":[Z
    :cond_a
    :goto_4
    return-object v2

    .line 3640
    :catch_1
    move-exception v3

    .line 3641
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in getReaders() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    return-object v2

    .line 3635
    .end local v1    # "readers":[Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_b
    :goto_5
    return-object v2
.end method

.method private llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z
    .locals 4
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 3716
    const-string v0, "NfcService"

    const-string v1, "LLCP Activation message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 3719
    const-string v0, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_TARGET"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->connect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3722
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3724
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3725
    const-string v0, "NfcService"

    const-string v2, "Initiator Activate LLCP OK"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 3728
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3729
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3730
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 3731
    return v1

    .line 3729
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3734
    :cond_0
    const-string v0, "NfcService"

    const-string v1, "Initiator LLCP activation failed. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_0

    .line 3738
    :cond_1
    const-string v0, "NfcService"

    const-string v1, "Remote Target does not support LLCP. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3739
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_0

    .line 3742
    :cond_2
    const-string v0, "NfcService"

    const-string v1, "Cannot connect remote Target. Polling loop restarted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3748
    :cond_3
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 3749
    const-string v0, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_INITIATOR"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3753
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3754
    const-string v0, "NfcService"

    const-string v2, "Target Activate LLCP OK"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 3757
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3758
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3759
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 3760
    return v1

    .line 3758
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 3763
    :cond_4
    const-string v0, "NfcService"

    const-string v1, "checkLlcp failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3682
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3684
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 3685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3686
    .local v0, "matchingPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3687
    .local v1, "preferredPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 3688
    :try_start_0
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->getSEAccessAllowedPackages()Ljava/util/ArrayList;

    move-result-object v2

    .line 3689
    .local v2, "SEPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3690
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3691
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3692
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3693
    .end local v4    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 3695
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3696
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3698
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 3699
    .local v6, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3700
    goto :goto_1

    .line 3702
    :cond_1
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_3

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_2

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_3

    .line 3705
    :cond_2
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3706
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3710
    .end local v6    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    goto :goto_2

    .line 3708
    :catch_0
    move-exception v6

    .line 3709
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "NfcService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in getPackageInfo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 3712
    .end local v2    # "SEPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    monitor-exit p0

    .line 3713
    return-void

    .line 3712
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private sendOffHostTransactionEvent([B[B[B)V
    .locals 18
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "readerByteArray"    # [B

    .line 3594
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "NfcService"

    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$3100(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v10, p2

    move-object/from16 v5, p3

    goto/16 :goto_6

    .line 3599
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v5, p3

    :try_start_1
    invoke-direct {v0, v5, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3600
    .local v0, "reader":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 3601
    .local v4, "installedPackages":[Ljava/lang/String;
    iget-object v6, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$3200(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;

    move-result-object v6

    iget-object v7, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    .line 3602
    invoke-interface {v7, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 3601
    invoke-interface {v6, v0, v2, v7}, Landroid/se/omapi/ISecureElementService;->isNFCEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;)[Z

    move-result-object v6

    .line 3603
    .local v6, "nfcAccess":[Z
    if-nez v6, :cond_1

    .line 3604
    return-void

    .line 3606
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3607
    .local v7, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.nfc.action.TRANSACTION_DETECTED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3608
    .local v8, "intent":Landroid/content/Intent;
    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3609
    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3610
    const-string v9, "android.nfc.extra.AID"

    invoke-virtual {v8, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3611
    const-string v9, "android.nfc.extra.DATA"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v10, p2

    :try_start_2
    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3612
    const-string v9, "android.nfc.extra.SECURE_ELEMENT_NAME"

    invoke-virtual {v8, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3613
    new-instance v9, Ljava/lang/StringBuilder;

    array-length v11, v2

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3614
    .local v9, "aidString":Ljava/lang/StringBuilder;
    array-length v11, v2

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_2

    aget-byte v14, v2, v13

    .line 3615
    .local v14, "b":B
    const-string v15, "%02X"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v12, v16

    invoke-static {v15, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3614
    nop

    .end local v14    # "b":B
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3617
    :cond_2
    new-instance v11, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "nfc://secure:0/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3618
    .local v11, "url":Ljava/lang/String;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3619
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    array-length v13, v6

    if-ge v12, v13, :cond_4

    .line 3620
    aget-boolean v13, v6, v12

    if-eqz v13, :cond_3

    .line 3621
    iget-object v13, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v13, v13, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3622
    iget-object v13, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v13, v13, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3619
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v0    # "reader":Ljava/lang/String;
    .end local v4    # "installedPackages":[Ljava/lang/String;
    .end local v6    # "nfcAccess":[Z
    .end local v7    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "aidString":Ljava/lang/StringBuilder;
    .end local v11    # "url":Ljava/lang/String;
    .end local v12    # "i":I
    :cond_4
    goto :goto_4

    .line 3627
    :catch_0
    move-exception v0

    goto :goto_2

    .line 3625
    :catch_1
    move-exception v0

    goto :goto_3

    .line 3627
    :catch_2
    move-exception v0

    move-object/from16 v10, p2

    goto :goto_2

    .line 3625
    :catch_3
    move-exception v0

    move-object/from16 v10, p2

    goto :goto_3

    .line 3627
    :catch_4
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v5, p3

    .line 3628
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incorrect format for Secure Element name"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 3625
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v0

    move-object/from16 v10, p2

    move-object/from16 v5, p3

    .line 3626
    .local v0, "e":Landroid/os/RemoteException;
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in isNFCEventAllowed() "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_4
    nop

    .line 3630
    :goto_5
    return-void

    .line 3594
    :cond_5
    move-object/from16 v10, p2

    move-object/from16 v5, p3

    .line 3595
    :goto_6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 3141
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x32

    if-eq v0, v1, :cond_19

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_18

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_16

    const/16 v1, 0x8

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 3588
    const-string v0, "NfcService"

    const-string v1, "Unknown message received"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3501
    :pswitch_0
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_SCR_REMOVE_CARD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3504
    .local v0, "swpRemoveCardIntent":Landroid/content/Intent;
    nop

    .line 3505
    const-string v1, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_REMOVE_CARD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3507
    const-string v1, "NfcService"

    const-string v2, "SWP READER - REMOVE_CARD"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3509
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3510
    goto/16 :goto_7

    .line 3497
    .end local v0    # "swpRemoveCardIntent":Landroid/content/Intent;
    :pswitch_1
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_SCR_STOP_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3498
    goto/16 :goto_7

    .line 3485
    :pswitch_2
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_SCR_STOP_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3487
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3488
    .local v0, "swpStopSuccessIntent":Landroid/content/Intent;
    nop

    .line 3489
    const-string v1, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_STOP_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3491
    const-string v1, "NfcService"

    const-string v2, "SWP READER - STOP_SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3494
    goto/16 :goto_7

    .line 3473
    .end local v0    # "swpStopSuccessIntent":Landroid/content/Intent;
    :pswitch_3
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_SCR_START_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3475
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3476
    .local v0, "scrStartFailIntent":Landroid/content/Intent;
    nop

    .line 3477
    const-string v1, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_START_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3479
    const-string v1, "NfcService"

    const-string v2, "SWP READER - START_FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3482
    goto/16 :goto_7

    .line 3461
    .end local v0    # "scrStartFailIntent":Landroid/content/Intent;
    :pswitch_4
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_SCR_START_SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3464
    .local v0, "scrStartSuccessIntent":Landroid/content/Intent;
    nop

    .line 3465
    const-string v1, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_START_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3467
    const-string v1, "NfcService"

    const-string v2, "SWP READER - START SUCCESS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3470
    goto/16 :goto_7

    .line 3566
    .end local v0    # "scrStartSuccessIntent":Landroid/content/Intent;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3567
    .local v0, "writeBundle":Landroid/os/Bundle;
    const-string v1, "fileId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 3568
    .local v1, "fileId":[B
    const-string v2, "writeData"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 3569
    .local v2, "writeData":[B
    const-string v3, "length"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 3570
    .local v3, "length":I
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3}, Lcom/android/nfc/DeviceHost;->doWriteT4tData([B[BI)I

    move-result v4

    .line 3571
    .local v4, "status":I
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "writeStatus"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3572
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$2600(Lcom/android/nfc/NfcService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3573
    :try_start_0
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$2600(Lcom/android/nfc/NfcService;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 3574
    monitor-exit v5

    .line 3575
    goto/16 :goto_7

    .line 3574
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 3578
    .end local v0    # "writeBundle":Landroid/os/Bundle;
    .end local v1    # "fileId":[B
    .end local v2    # "writeData":[B
    .end local v3    # "length":I
    .end local v4    # "status":I
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3579
    .local v0, "readBundle":Landroid/os/Bundle;
    const-string v1, "fileId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 3580
    .restart local v1    # "fileId":[B
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/nfc/DeviceHost;->doReadT4tData([B)[B

    move-result-object v2

    .line 3581
    .local v2, "readData":[B
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "readData"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 3582
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$2600(Lcom/android/nfc/NfcService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 3583
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$2600(Lcom/android/nfc/NfcService;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 3584
    monitor-exit v3

    .line 3585
    goto/16 :goto_7

    .line 3584
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 3553
    .end local v0    # "readBundle":Landroid/os/Bundle;
    .end local v1    # "fileId":[B
    .end local v2    # "readData":[B
    :pswitch_7
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mWiredSeClass:Ljava/lang/Class;

    const-string v2, "wiredSeDeInitialize"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/android/nfc/NfcService;->mWiredSeInitMethod:Ljava/lang/reflect/Method;

    .line 3554
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mWiredSeInitMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mWiredSeObj:Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3559
    :catch_0
    move-exception v0

    .line 3560
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "caught Exception during wiredSeDeInitialize"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3563
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_7

    .line 3557
    :catch_1
    move-exception v0

    .line 3558
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "Error in invoking wiredSeDeInitialize invocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 3555
    :catch_2
    move-exception v0

    .line 3556
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "No such Method wiredSeDeInitialize"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3562
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto/16 :goto_7

    .line 3195
    :pswitch_8
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/nfc/DeviceHost;->clearRoutingEntry(I)Z

    .line 3196
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/nfc/DeviceHost;->clearRoutingEntry(I)Z

    .line 3200
    :pswitch_9
    const-string v0, "NfcService"

    const-string v1, "computeRoutingParameters >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 3202
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1900(Lcom/android/nfc/NfcService;)V

    .line 3203
    monitor-exit v0

    .line 3204
    goto/16 :goto_7

    .line 3203
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1

    .line 3539
    :pswitch_a
    :try_start_4
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mWiredSeClass:Ljava/lang/Class;

    const-string v2, "wiredSeInitialize"

    new-array v3, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, v0, Lcom/android/nfc/NfcService;->mWiredSeInitMethod:Ljava/lang/reflect/Method;

    .line 3540
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mWiredSeInitMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mWiredSeObj:Ljava/lang/Object;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 3545
    :catch_3
    move-exception v0

    .line 3546
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "caught Exception during wiredSeInitialize"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3549
    .end local v0    # "e":Ljava/lang/Exception;
    goto/16 :goto_7

    .line 3543
    :catch_4
    move-exception v0

    .line 3544
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "Error in invoking wiredSeInitialize invocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 3541
    :catch_5
    move-exception v0

    .line 3542
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "No such Method WiredSeInitialize"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3548
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    goto/16 :goto_7

    .line 3513
    :pswitch_b
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3514
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onOffHostAidSelected()V

    .line 3516
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [[B

    .line 3517
    .local v0, "data":[[B
    aget-object v1, v0, v6

    aget-object v2, v0, v5

    aget-object v3, v0, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendOffHostTransactionEvent([B[B[B)V

    .line 3518
    goto/16 :goto_7

    .line 3407
    .end local v0    # "data":[[B
    :pswitch_c
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 3408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_APPLY_SCREEN_STATE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NfcService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 3412
    :try_start_5
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 3413
    monitor-exit v0

    return-void

    .line 3414
    :cond_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 3416
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v0, v1, :cond_2

    .line 3417
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v6}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3419
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3420
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 3422
    .local v0, "screen_state_mask":I
    :goto_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3423
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v6}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3425
    :cond_4
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost;->doSetScreenState(I)V

    .line 3426
    goto/16 :goto_7

    .line 3414
    .end local v0    # "screen_state_mask":I
    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 3390
    :pswitch_d
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_5

    .line 3391
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "nfc_tag"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3392
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3394
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_6

    .line 3395
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "nfc_ce"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3396
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3398
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_7

    .line 3399
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const-string v2, "nfc_p2p"

    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3400
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3402
    :cond_7
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 3403
    const-wide/32 v1, 0xdbba00

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3404
    goto/16 :goto_7

    .line 3375
    :pswitch_e
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 3376
    :try_start_7
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v3, v1, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    .line 3377
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 3378
    .local v1, "tagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v3, v4, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 3379
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput v2, v3, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 3380
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 3381
    if-eqz v1, :cond_1b

    .line 3383
    :try_start_8
    invoke-interface {v1}, Landroid/nfc/ITagRemovedCallback;->onTagRemoved()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 3386
    :goto_3
    goto/16 :goto_7

    .line 3384
    :catch_6
    move-exception v0

    goto :goto_3

    .line 3380
    .end local v1    # "tagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    .line 3172
    :pswitch_f
    const-string v0, "NfcService"

    const-string v1, "message to deregister LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 3175
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 3176
    .local v0, "t3tIdentifier":[B
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost;->deregisterT3tIdentifier([B)V

    .line 3178
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$2800(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    .line 3179
    .local v1, "params":Lcom/android/nfc/NfcDiscoveryParameters;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v2}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    .line 3180
    .local v2, "shouldRestart":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 3181
    goto/16 :goto_7

    .line 3160
    .end local v0    # "t3tIdentifier":[B
    .end local v1    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    .end local v2    # "shouldRestart":Z
    :pswitch_10
    const-string v0, "NfcService"

    const-string v1, "message to register LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3161
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 3163
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 3164
    .restart local v0    # "t3tIdentifier":[B
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost;->registerT3tIdentifier([B)V

    .line 3166
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1, v2}, Lcom/android/nfc/NfcService;->access$2800(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    .line 3167
    .restart local v1    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v2}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v2

    .line 3168
    .restart local v2    # "shouldRestart":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 3169
    goto/16 :goto_7

    .line 3370
    .end local v0    # "t3tIdentifier":[B
    .end local v1    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    .end local v2    # "shouldRestart":Z
    :pswitch_11
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->resumePolling()V

    .line 3371
    goto/16 :goto_7

    .line 3366
    :pswitch_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3367
    .local v0, "fieldOffIntent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    .line 3368
    goto/16 :goto_7

    .line 3362
    .end local v0    # "fieldOffIntent":Landroid/content/Intent;
    :pswitch_13
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3363
    .local v0, "fieldOnIntent":Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcEeAccessProtectedBroadcast(Landroid/content/Intent;)V

    .line 3364
    goto/16 :goto_7

    .line 3184
    .end local v0    # "fieldOnIntent":Landroid/content/Intent;
    :pswitch_14
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/nfc/BeamShareData;

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    .line 3185
    goto/16 :goto_7

    .line 3188
    :pswitch_15
    const-string v0, "NfcService"

    const-string v1, "commitRouting >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v1

    const-string v2, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3190
    .local v0, "defaultRoute":I
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x8

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost;->setEmptyAidRoute(I)V

    .line 3191
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->commitRouting()Z

    .line 3192
    goto/16 :goto_7

    .line 3155
    .end local v0    # "defaultRoute":I
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3156
    .local v0, "aid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-static {v0}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost;->unrouteAid([B)Z

    .line 3157
    goto/16 :goto_7

    .line 3143
    .end local v0    # "aid":Ljava/lang/String;
    :pswitch_17
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3144
    .local v0, "route":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 3145
    .local v1, "aidInfo":I
    const/4 v2, 0x0

    .line 3146
    .local v2, "power":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 3147
    .local v3, "dataBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_8

    .line 3148
    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 3149
    :cond_8
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 3150
    .local v4, "aid":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-static {v4}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v5, v6, v0, v1, v2}, Lcom/android/nfc/DeviceHost;->routeAid([BIII)Z

    .line 3152
    goto/16 :goto_7

    .line 3359
    .end local v0    # "route":I
    .end local v1    # "aidInfo":I
    .end local v2    # "power":I
    .end local v3    # "dataBundle":Landroid/os/Bundle;
    .end local v4    # "aid":Ljava/lang/String;
    :pswitch_18
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    .line 3360
    goto/16 :goto_7

    .line 3207
    :pswitch_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 3208
    .local v0, "ndefMsg":Landroid/nfc/NdefMessage;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3209
    .local v1, "extras":Landroid/os/Bundle;
    const-string v3, "ndefmsg"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3210
    const-string v3, "ndefmaxlength"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3211
    const-string v3, "ndefcardstate"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3212
    const-string v3, "ndeftype"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3213
    new-array v2, v5, [B

    aput-byte v6, v2, v6

    new-array v3, v5, [I

    const/4 v7, 0x6

    aput v7, v3, v6

    new-array v7, v5, [Landroid/os/Bundle;

    aput-object v1, v7, v6

    invoke-static {v2, v3, v7}, Landroid/nfc/Tag;->createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;

    move-result-object v2

    .line 3216
    .local v2, "tag":Landroid/nfc/Tag;
    const-string v3, "NfcService"

    const-string v6, "mock NDEF tag, starting corresponding activity"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    invoke-virtual {v2}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "NfcService"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3218
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v3

    .line 3219
    .local v3, "dispatchStatus":I
    if-ne v3, v5, :cond_9

    .line 3220
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_7

    .line 3221
    :cond_9
    if-ne v3, v4, :cond_1b

    .line 3222
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5, v4}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_7

    .line 3332
    .end local v0    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "tag":Landroid/nfc/Tag;
    .end local v3    # "dispatchStatus":I
    :pswitch_1a
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    if-eqz v0, :cond_a

    .line 3333
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.action.LLCP_DOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3334
    .local v0, "deactIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3336
    .end local v0    # "deactIntent":Landroid/content/Intent;
    :cond_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 3337
    .local v0, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    const/4 v1, 0x0

    .line 3339
    .local v1, "needsDisconnect":Z
    const-string v2, "NfcService"

    const-string v3, "LLCP Link Deactivated message. Restart polling loop."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 3342
    :try_start_a
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 3344
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v3

    if-nez v3, :cond_b

    .line 3345
    const-string v3, "NfcService"

    const-string v4, "disconnecting from target"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    const/4 v1, 0x1

    goto :goto_4

    .line 3348
    :cond_b
    const-string v3, "NfcService"

    const-string v4, "not disconnecting from initiator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    :cond_c
    :goto_4
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 3352
    if-eqz v1, :cond_d

    .line 3353
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 3356
    :cond_d
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 3357
    goto/16 :goto_7

    .line 3351
    :catchall_5
    move-exception v3

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v3

    .line 3322
    .end local v0    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    .end local v1    # "needsDisconnect":Z
    :pswitch_1b
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v6, v6}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 3324
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    if-eqz v0, :cond_e

    .line 3325
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.nfc.action.LLCP_UP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3326
    .local v0, "actIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3328
    .end local v0    # "actIntent":Landroid/content/Intent;
    :cond_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z

    .line 3329
    goto/16 :goto_7

    .line 3228
    :pswitch_1c
    const-string v0, "NfcService"

    const-string v4, "Tag detected, notifying applications"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2900(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v6, v6}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 3231
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3232
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3236
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v4

    .line 3237
    :try_start_c
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    .line 3238
    .local v5, "debounceTagUid":[B
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v7, v7, Lcom/android/nfc/NfcService;->mDebounceTagDebounceMs:I

    .line 3239
    .local v7, "debounceTagMs":I
    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, v8, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 3240
    .local v8, "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    .line 3241
    const/4 v4, 0x0

    .line 3242
    .local v4, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    const/16 v9, 0x7d

    .line 3243
    .local v9, "presenceCheckDelay":I
    new-instance v10, Lcom/android/nfc/NfcService$NfcServiceHandler$1;

    invoke-direct {v10, p0}, Lcom/android/nfc/NfcService$NfcServiceHandler$1;-><init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V

    .line 3250
    .local v10, "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    iget-object v11, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v11

    .line 3251
    :try_start_d
    iget-object v12, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v12, v12, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    move-object v4, v12

    .line 3252
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 3253
    if-eqz v4, :cond_f

    .line 3254
    iget v9, v4, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    .line 3255
    iget v11, v4, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_f

    .line 3256
    const-string v1, "NfcService"

    const-string v2, "Skipping NDEF detection in reader mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    invoke-interface {v0, v9, v10}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 3258
    invoke-direct {p0, v0, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 3259
    goto/16 :goto_7

    .line 3263
    :cond_f
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_10

    .line 3268
    const-string v1, "NfcService"

    const-string v2, "Skipping NDEF detection for NFC Barcode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    invoke-interface {v0, v9, v10}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 3270
    invoke-direct {p0, v0, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 3271
    goto/16 :goto_7

    .line 3273
    :cond_10
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    move-result-object v11

    .line 3275
    .local v11, "ndefMsg":Landroid/nfc/NdefMessage;
    if-nez v11, :cond_12

    .line 3277
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v12

    if-nez v12, :cond_12

    .line 3278
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 3279
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v2, v1, :cond_1b

    .line 3280
    invoke-static {}, Lcom/android/nfc/NfcService;->access$3000()Landroid/widget/Toast;

    move-result-object v1

    const v2, 0x7f0b0029

    if-nez v1, :cond_11

    .line 3281
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 3284
    :cond_11
    invoke-static {}, Lcom/android/nfc/NfcService;->access$3000()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(I)V

    .line 3285
    invoke-static {}, Lcom/android/nfc/NfcService;->access$3000()Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 3291
    :cond_12
    if-eqz v5, :cond_15

    .line 3294
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-static {v5, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_14

    if-eqz v11, :cond_13

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mLastReadNdefMessage:Landroid/nfc/NdefMessage;

    .line 3295
    invoke-virtual {v11, v1}, Landroid/nfc/NdefMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_5

    .line 3301
    :cond_13
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3302
    :try_start_e
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v3, v6, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    .line 3303
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v3, v6, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 3304
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput v2, v3, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 3305
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 3306
    if-eqz v8, :cond_15

    .line 3308
    :try_start_f
    invoke-interface {v8}, Landroid/nfc/ITagRemovedCallback;->onTagRemoved()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7

    .line 3311
    goto :goto_6

    .line 3309
    :catch_7
    move-exception v1

    goto :goto_6

    .line 3305
    :catchall_6
    move-exception v2

    :try_start_10
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    throw v2

    .line 3296
    :cond_14
    :goto_5
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 3297
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    int-to-long v12, v7

    invoke-virtual {v1, v2, v12, v13}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3298
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 3299
    return-void

    .line 3316
    :cond_15
    :goto_6
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v11, v1, Lcom/android/nfc/NfcService;->mLastReadNdefMessage:Landroid/nfc/NdefMessage;

    .line 3318
    invoke-interface {v0, v9, v10}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 3319
    invoke-direct {p0, v0, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 3320
    goto :goto_7

    .line 3252
    .end local v11    # "ndefMsg":Landroid/nfc/NdefMessage;
    :catchall_7
    move-exception v1

    :try_start_11
    monitor-exit v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v1

    .line 3240
    .end local v4    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    .end local v5    # "debounceTagUid":[B
    .end local v7    # "debounceTagMs":I
    .end local v8    # "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    .end local v9    # "presenceCheckDelay":I
    .end local v10    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    :catchall_8
    move-exception v1

    :try_start_12
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    throw v1

    .line 3520
    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_16
    const-string v0, "NfcService"

    const-string v1, "msg se init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    :try_start_13
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_17

    .line 3525
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->computeRoutingParameters()V

    .line 3526
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->commitRouting()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    .line 3533
    :cond_17
    goto :goto_7

    .line 3531
    :catch_8
    move-exception v0

    .line 3532
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "mSecureElementclientCallback.onStateChange"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3535
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_7

    .line 3444
    :cond_18
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_SWP_READER_RESTART"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3448
    .local v0, "scrRestartIntent":Landroid/content/Intent;
    nop

    .line 3449
    const-string v1, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_RESTART"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3451
    const-string v1, "NfcService"

    const-string v2, "SWP READER - RESTART"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3454
    goto :goto_7

    .line 3430
    .end local v0    # "scrRestartIntent":Landroid/content/Intent;
    :cond_19
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_SCR_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3435
    .local v0, "swpReaderTimeoutIntent":Landroid/content/Intent;
    nop

    .line 3436
    const-string v1, "com.nxp.nfc_extras.action.NFC_MPOS_READER_MODE_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3438
    const-string v1, "NfcService"

    const-string v2, "SWP READER - Timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3441
    goto :goto_7

    .line 3457
    .end local v0    # "swpReaderTimeoutIntent":Landroid/content/Intent;
    :cond_1a
    const-string v0, "NfcService"

    const-string v1, "NfcServiceHandler - MSG_SCR_REQUESTED_FAIL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    nop

    .line 3591
    :cond_1b
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class final Lcom/android/nfc/NfcService$NfcAdapterExtrasService;
.super Landroid/nfc/INfcAdapterExtras$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAdapterExtrasService"
.end annotation


# instance fields
.field activityManager:Landroid/app/ActivityManager;

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 3499
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcAdapterExtras$Stub;-><init>()V

    .line 3500
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->activityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method private _open(Landroid/os/IBinder;)I
    .locals 8
    .param p1, "b"    # Landroid/os/IBinder;

    .line 3539
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 3540
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3541
    const/4 v1, -0x6

    monitor-exit v0

    return v1

    .line 3543
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v1, :cond_1

    .line 3545
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 3555
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3556
    const-string v1, "NfcService"

    const-string v2, "SE is Busy. returning.."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    const/4 v1, -0x2

    monitor-exit v0

    return v1

    .line 3559
    :cond_2
    const/4 v1, 0x0

    .line 3560
    .local v1, "restorePolling":Z
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 3564
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 3565
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v2, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 3566
    const/4 v1, 0x1

    .line 3569
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    const/16 v4, 0xf3

    invoke-virtual {v2, v4}, Lcom/android/nfc/NfcService;->doOpenSecureElementConnection(I)I

    move-result v2

    .line 3570
    .local v2, "handle":I
    if-gez v2, :cond_5

    .line 3572
    if-eqz v1, :cond_4

    .line 3573
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 3574
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v5, v3, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 3576
    :cond_4
    monitor-exit v0

    return v2

    .line 3578
    :cond_5
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v5, Lcom/android/nfc/NfcService$OpenSecureElement;

    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v7

    invoke-direct {v5, v6, v7, v2, p1}, Lcom/android/nfc/NfcService$OpenSecureElement;-><init>(Lcom/android/nfc/NfcService;IILandroid/os/IBinder;)V

    invoke-static {v4, v5}, Lcom/android/nfc/NfcService;->access$3002(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3580
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v4

    invoke-interface {p1, v4, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3583
    goto :goto_0

    .line 3581
    :catch_0
    move-exception v4

    .line 3582
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/NfcService$OpenSecureElement;->binderDied()V

    .line 3587
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_6

    aget-object v6, v4, v3

    .line 3588
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3587
    .end local v6    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3591
    :cond_6
    monitor-exit v0

    return v2

    .line 3592
    .end local v1    # "restorePolling":Z
    .end local v2    # "handle":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private _transceive([B)[B
    .locals 3
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3636
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 3637
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3640
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3643
    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v2

    iget v2, v2, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    if-ne v1, v2, :cond_0

    .line 3646
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3648
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$3000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v1

    iget v1, v1, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfcService;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0

    .line 3644
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Wrong PID"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3641
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "NFC EE is not open"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3638
    :cond_2
    new-instance v1, Ljava/io/IOException;

    const-string v2, "NFC is not enabled"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3646
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeEeException(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 3508
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3509
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3510
    const-string v1, "m"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3511
    return-object v0
.end method

.method private writeNoException()Landroid/os/Bundle;
    .locals 3

    .line 3502
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3503
    .local v0, "p":Landroid/os/Bundle;
    const-string v1, "e"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3504
    return-object v0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3675
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3676
    return-void
.end method

.method public close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3597
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3601
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3602
    const/4 v0, -0x2

    const-string v1, "SE close access denied."

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "result":Landroid/os/Bundle;
    goto :goto_0

    .line 3605
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/nfc/NfcService;->_nfcEeClose(ILandroid/os/IBinder;)V

    .line 3606
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3609
    .restart local v0    # "result":Landroid/os/Bundle;
    goto :goto_0

    .line 3607
    .end local v0    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 3608
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3611
    .local v0, "result":Landroid/os/Bundle;
    :goto_0
    return-object v0
.end method

.method public getCardEmulationRoute(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3653
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3654
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$4200(Lcom/android/nfc/NfcService;)I

    move-result v0

    return v0
.end method

.method public getDriverName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3680
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3681
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3516
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3519
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3520
    const/4 v0, -0x2

    const-string v1, "SE open access denied."

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "result":Landroid/os/Bundle;
    goto :goto_0

    .line 3522
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->_open(Landroid/os/IBinder;)I

    move-result v0

    .line 3523
    .local v0, "handle":I
    if-gez v0, :cond_1

    .line 3524
    const-string v1, "NFCEE open exception."

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3526
    .local v1, "result":Landroid/os/Bundle;
    move-object v0, v1

    goto :goto_0

    .end local v1    # "result":Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v0

    .line 3529
    .local v0, "result":Landroid/os/Bundle;
    :goto_0
    return-object v0
.end method

.method public setCardEmulationRoute(Ljava/lang/String;I)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3659
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3660
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0, p2}, Lcom/android/nfc/NfcService;->access$4202(Lcom/android/nfc/NfcService;I)I

    .line 3661
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 3662
    .local v0, "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3665
    :try_start_0
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3670
    :goto_0
    goto :goto_1

    .line 3668
    :catch_0
    move-exception v1

    .line 3669
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "NfcService"

    const-string v3, "failed to set card emulation mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 3666
    :catch_1
    move-exception v1

    .line 3667
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "NfcService"

    const-string v3, "failed to set card emulation mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_0

    .line 3671
    :goto_1
    return-void
.end method

.method public transceive(Ljava/lang/String;[B)Landroid/os/Bundle;
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3616
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3620
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->activityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3621
    const/4 v0, -0x2

    const-string v1, "SE transceive access denied."

    invoke-direct {p0, v0, v1}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "result":Landroid/os/Bundle;
    goto :goto_0

    .line 3625
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_0
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->_transceive([B)[B

    move-result-object v0

    .line 3626
    .local v0, "out":[B
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v1

    .line 3627
    .local v1, "result":Landroid/os/Bundle;
    const-string v2, "out"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3630
    nop

    .line 3629
    move-object v0, v1

    goto :goto_0

    .line 3628
    .end local v0    # "out":[B
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 3629
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3632
    .local v0, "result":Landroid/os/Bundle;
    :goto_0
    return-object v0
.end method

.class Lcom/android/nfc/NfcService$7;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 5479
    iput-object p1, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5482
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5483
    .local v0, "action":Ljava/lang/String;
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "screen state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5484
    const-string v1, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5487
    new-instance v1, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v3, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v3}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_5

    .line 5488
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 5489
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 5490
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v5, 0x3

    if-ne v1, v5, :cond_a

    .line 5493
    iget-object v1, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v1

    .line 5494
    .local v1, "screenState":I
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5495
    iget-object v2, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    if-eq v2, v4, :cond_7

    .line 5497
    const-string v2, "NfcService"

    const-string v5, "screen state OFF required"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5498
    iget-object v2, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$5400(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5499
    nop

    .line 5500
    move v3, v4

    nop

    :cond_2
    move v1, v3

    goto :goto_0

    .line 5502
    :cond_3
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_5

    .line 5503
    iget-object v2, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$5400(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5504
    const/4 v3, 0x4

    nop

    :cond_4
    move v1, v3

    .line 5505
    const-string v2, "NfcService"

    const-string v3, "screen state on"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5511
    :cond_5
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 5512
    iget-object v2, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    if-eq v2, v3, :cond_6

    .line 5513
    const-string v2, "NfcService"

    const-string v3, "screen state user present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5514
    const/16 v1, 0x8

    goto :goto_0

    .line 5516
    :cond_6
    return-void

    .line 5525
    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getEtsiReaederState()I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    .line 5526
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getEtsiReaederState()I

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    .line 5529
    :cond_8
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPOS in progress holding screen state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5530
    iget-object v2, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iput v1, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    goto :goto_2

    .line 5527
    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    const/16 v3, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 5532
    :goto_2
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5533
    const-string v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "screen state mScreenState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5534
    .end local v1    # "screenState":I
    goto/16 :goto_5

    :cond_a
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 5535
    iget-object v1, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v1

    .line 5536
    .restart local v1    # "screenState":I
    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 5537
    .local v5, "userId":I
    move v6, v2

    .line 5539
    .local v6, "beamSetting":I
    :try_start_0
    const-string v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 5540
    .local v7, "mIpm":Landroid/content/pm/IPackageManager;
    new-instance v8, Landroid/content/ComponentName;

    const-class v9, Lcom/android/nfc/BeamShareActivity;

    .line 5541
    invoke-virtual {v9}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/android/nfc/BeamShareActivity;

    .line 5542
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5540
    invoke-interface {v7, v8, v5}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v8

    .line 5546
    .end local v7    # "mIpm":Landroid/content/pm/IPackageManager;
    goto :goto_3

    .line 5544
    :catch_0
    move-exception v7

    .line 5545
    .local v7, "e":Landroid/os/RemoteException;
    const-string v8, "NfcService"

    const-string v9, "Error int getComponentEnabledSetting for BeamShareActivity"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5547
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_3
    monitor-enter p0

    .line 5548
    :try_start_1
    iget-object v7, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7, v5}, Lcom/android/nfc/NfcService;->access$3202(Lcom/android/nfc/NfcService;I)I

    .line 5549
    if-ne v6, v4, :cond_b

    .line 5550
    iget-object v4, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v2, v4, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    goto :goto_4

    .line 5552
    :cond_b
    iget-object v4, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v4, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 5555
    :goto_4
    invoke-static {}, Lcom/android/nfc/NfcService;->isControlledByMdM()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/nfc/NfcService;->isSecSys()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5556
    iget-object v4, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v2, v4, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 5558
    :cond_c
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5559
    iget-object v4, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v7}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/nfc/P2pLinkManager;->onUserSwitched(I)V

    .line 5560
    iget-object v4, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v4, :cond_d

    .line 5561
    iget-object v4, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$2500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v4

    iget-object v7, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v7}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onUserSwitched(I)V

    .line 5563
    :cond_d
    iget-object v4, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$2700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v1

    .line 5564
    new-instance v4, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v7, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v7}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-virtual {v4, v3}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .end local v1    # "screenState":I
    .end local v5    # "userId":I
    .end local v6    # "beamSetting":I
    goto :goto_5

    .line 5558
    .restart local v1    # "screenState":I
    .restart local v5    # "userId":I
    .restart local v6    # "beamSetting":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5566
    .end local v1    # "screenState":I
    .end local v5    # "userId":I
    .end local v6    # "beamSetting":I
    :cond_e
    :goto_5
    return-void
.end method

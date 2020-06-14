.class Lcom/android/nfc/NfcService$EnableDisableTask;
.super Landroid/os/AsyncTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableDisableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 921
    iput-object p1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method disableInternal()Z
    .locals 6

    .line 1051
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1052
    return v1

    .line 1054
    :cond_0
    const-string v0, "NfcService"

    const-string v2, "Disabling NFC"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    const/16 v0, 0x87

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 1056
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1057
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->deInitWiredSe()V

    .line 1062
    new-instance v0, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/16 v3, 0x2710

    const-string v4, "disableInternal"

    invoke-direct {v0, v2, v4, v3}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 1063
    .local v0, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New Watchdog: WatchDog Thread ID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 1066
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_1

    .line 1067
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcDisabled()V

    .line 1070
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1071
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v2, v3, v3}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1078
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->maybeDisconnectTarget()V

    .line 1080
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v4}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 1083
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->deinitialize()Z

    move-result v2

    .line 1084
    .local v2, "result":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDeviceHost.deinitialize() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NfcService"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v4, Lcom/android/nfc/NfcService;->isWiredOpen:Z

    .line 1086
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1088
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 1089
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v5

    iput-object v5, v4, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 1090
    invoke-virtual {p0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1091
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)I

    move-result v4

    iput v4, v1, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    .line 1092
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->releaseSoundPool()V

    .line 1094
    return v2

    .line 1092
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 921
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .line 925
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "NfcService"

    if-eq v0, v2, :cond_6

    const/4 v5, 0x4

    if-eq v0, v5, :cond_6

    .line 940
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 942
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "first_boot"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    const-string v0, "First Boot"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 954
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 955
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->factoryReset()V

    .line 957
    :cond_1
    const-string v0, "checking on firmware download"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-boolean v2, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    const-string v3, "nfc_on"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 959
    const-string v0, "NFC is on. Doing normal stuff"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    move-result v0

    .local v0, "initialized":Z
    goto :goto_0

    .line 962
    .end local v0    # "initialized":Z
    :cond_2
    const-string v0, "NFC is off.  Checking firmware version"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->checkFirmware()Z

    move-result v0

    .line 965
    .restart local v0    # "initialized":Z
    :goto_0
    if-eqz v0, :cond_5

    .line 966
    const-string v2, "nfc.initialized"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 947
    .end local v0    # "initialized":Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    .line 948
    goto :goto_1

    .line 944
    :cond_4
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    .line 945
    nop

    .line 972
    :cond_5
    :goto_1
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 973
    return-object v1

    .line 928
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing EnableDisable task "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from bad state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return-object v1
.end method

.method enableInternal()Z
    .locals 8

    .line 981
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 982
    return v2

    .line 984
    :cond_0
    const-string v0, "NfcService"

    const-string v3, "Enabling NFC"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/16 v0, 0x87

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/StatsLog;->write(II)I

    .line 986
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 988
    new-instance v0, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const v4, 0x15f90

    const-string v5, "enableInternal"

    invoke-direct {v0, v3, v5, v4}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 989
    .local v0, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 991
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 993
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->initialize()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 994
    const-string v1, "NfcService"

    const-string v3, "Error enabling NFC"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 996
    nop

    .line 999
    :try_start_2
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1002
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 996
    return v4

    .line 999
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1000
    nop

    .line 1002
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1003
    nop

    .line 1004
    const/4 v3, 0x0

    .line 1005
    .local v3, "uiccSlot":I
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$000(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)I

    move-result v6

    const-string v7, "current_selected_uicc_id"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1006
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/android/nfc/DeviceHost;->setPreferredSimSlot(I)I

    .line 1007
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->getNciVersion()I

    move-result v5

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$502(I)I

    .line 1008
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NCI_Version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/nfc/NfcService;->access$500()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NfcService"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1010
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v5, :cond_2

    .line 1012
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcEnabled()V

    .line 1013
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->computeRoutingParameters()V

    .line 1016
    :cond_2
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v5

    .line 1017
    :try_start_4
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1018
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v6, v6, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-eqz v6, :cond_3

    .line 1019
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v7, v7, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v6, v7, v2}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1021
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1022
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1024
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->initSoundPool()V

    .line 1026
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v5

    iput v5, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 1027
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1028
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    or-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 1030
    .local v1, "screen_state_mask":I
    :goto_0
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1031
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5, v4}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1033
    :cond_5
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/nfc/DeviceHost;->doSetScreenState(I)V

    .line 1036
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1037
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 1039
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->initWiredSe()V

    .line 1040
    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v4

    .line 1041
    :try_start_5
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)I

    move-result v6

    iput v6, v5, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    .line 1042
    monitor-exit v4

    .line 1043
    return v2

    .line 1042
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 1022
    .end local v1    # "screen_state_mask":I
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 999
    .end local v3    # "uiccSlot":I
    :catchall_2
    move-exception v1

    :try_start_7
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$300(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .end local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    .end local p0    # "this":Lcom/android/nfc/NfcService$EnableDisableTask;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1002
    .restart local v0    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    .restart local p0    # "this":Lcom/android/nfc/NfcService$EnableDisableTask;
    :catchall_3
    move-exception v1

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw v1
.end method

.method updateState(I)V
    .locals 4
    .param p1, "newState"    # I

    .line 1098
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1099
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    if-ne p1, v1, :cond_0

    .line 1100
    monitor-exit v0

    return-void

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput p1, v1, Lcom/android/nfc/NfcService;->mState:I

    .line 1103
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1105
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v3, v3, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1106
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1107
    .end local v1    # "intent":Landroid/content/Intent;
    monitor-exit v0

    .line 1108
    return-void

    .line 1107
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

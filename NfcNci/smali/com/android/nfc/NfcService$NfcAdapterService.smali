.class final Lcom/android/nfc/NfcService$NfcAdapterService;
.super Landroid/nfc/INfcAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 1173
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcAdapter$Stub;-><init>()V

    return-void
.end method

.method private computeLockscreenPollMask([I)I
    .locals 4
    .param p1, "techList"    # [I

    .line 1638
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1640
    .local v0, "techCodeToMask":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    const/4 v1, 0x0

    .line 1648
    .local v1, "mask":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1649
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1650
    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v1, v3

    .line 1648
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1654
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method private getCurrentProcessName(I)Ljava/lang/String;
    .locals 4
    .param p1, "Pid"    # I

    .line 1348
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1349
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1350
    .local v2, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_0

    .line 1351
    iget-object v1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    return-object v1

    .line 1353
    .end local v2    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_0
    goto :goto_0

    .line 1354
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V
    .locals 3
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "techList"    # [I

    .line 1606
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1608
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterService;->computeLockscreenPollMask([I)I

    move-result v0

    .line 1609
    .local v0, "lockscreenPollMask":I
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1610
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/nfc/NfcUnlockManager;->addUnlockHandler(Landroid/nfc/INfcUnlockHandler;I)I

    .line 1611
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1614
    return-void

    .line 1611
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public deviceSupportsNfcSecure()Z
    .locals 3

    .line 1627
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f010000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1629
    .local v0, "skuList":[Ljava/lang/String;
    const-string v1, "ro.boot.hardware.sku"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1630
    .local v1, "sku":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1633
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1631
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return v2
.end method

.method public disable(Z)Z
    .locals 5
    .param p1, "saveState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1204
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1205
    const-string v1, "NfcService"

    const-string v2, "mNxpNfcStateis not equal to NXP_NFC_STATE_ON. Disable NFC Rejected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    monitor-exit v0

    return v3

    .line 1209
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1400(Lcom/android/nfc/NfcService;)I

    move-result v2

    iput v2, v1, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    .line 1210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1213
    if-eqz p1, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 1217
    :cond_1
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1219
    return v1

    .line 1210
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public disableNdefPush()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1324
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1325
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 1328
    :cond_0
    const-string v1, "NfcService"

    const-string v3, "disabling NDEF Push"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "ndef_push_on"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1330
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1331
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v4, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 1333
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1334
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    .line 1335
    .local v3, "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    .line 1336
    .local v6, "uh":Landroid/os/UserHandle;
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, v8, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v6}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 1337
    .end local v6    # "uh":Landroid/os/UserHandle;
    goto :goto_0

    .line 1338
    :cond_1
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v8}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 1339
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1340
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v5, v4, v2}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1342
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;)Landroid/app/backup/BackupManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1343
    .end local v1    # "um":Landroid/os/UserManager;
    .end local v3    # "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    monitor-exit v0

    .line 1344
    return v2

    .line 1326
    :cond_3
    :goto_1
    monitor-exit v0

    return v2

    .line 1343
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1538
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1539
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    .line 1540
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1533
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1534
    return-void
.end method

.method public enable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1177
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1200(Lcom/android/nfc/NfcService;)I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1178
    const-string v1, "NfcService"

    const-string v2, "mNxpNfcStateis not equal to NXP_NFC_STATE_OFF. Enable NFC Rejected."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    monitor-exit v0

    return v3

    .line 1182
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1300(Lcom/android/nfc/NfcService;)I

    move-result v2

    iput v2, v1, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    .line 1183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1186
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 1188
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v2, v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1190
    return v1

    .line 1183
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public enableNdefPush()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1263
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1264
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1265
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 1268
    :cond_0
    const-string v1, "NfcService"

    const-string v3, "enabling NDEF Push"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "ndef_push_on"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1270
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1271
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 1273
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 1274
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    .line 1275
    .local v3, "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 1276
    .local v5, "uh":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7, v5}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 1277
    .end local v5    # "uh":Landroid/os/UserHandle;
    goto :goto_0

    .line 1278
    :cond_1
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->access$1600(Lcom/android/nfc/NfcService;)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 1279
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1280
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v4, v2, v2}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1282
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;)Landroid/app/backup/BackupManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1283
    .end local v1    # "um":Landroid/os/UserManager;
    .end local v3    # "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    monitor-exit v0

    .line 1284
    return v2

    .line 1266
    :cond_3
    :goto_1
    monitor-exit v0

    return v2

    .line 1283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1592
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcExtraObj:Ljava/lang/Object;

    check-cast v0, Landroid/nfc/INfcAdapterExtras;

    return-object v0
.end method

.method public getNfcAdapterVendorInterface(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "vendor"    # Ljava/lang/String;

    .line 1661
    const-string v0, "nxp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNxpNfcAdapter:Lcom/android/nfc/NfcService$NxpNfcAdapterService;

    return-object v0

    .line 1664
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v0

    return-object v0

    .line 1511
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1597
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1598
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcDtaService:Lcom/android/nfc/NfcService$NfcDtaService;

    if-nez v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v1, Lcom/android/nfc/NfcService$NfcDtaService;

    invoke-direct {v1, v0}, Lcom/android/nfc/NfcService$NfcDtaService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, v0, Lcom/android/nfc/NfcService;->mNfcDtaService:Lcom/android/nfc/NfcService$NfcDtaService;

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcDtaService:Lcom/android/nfc/NfcService$NfcDtaService;

    return-object v0
.end method

.method public getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;
    .locals 1

    .line 1517
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceFCapable:Z

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v0

    return-object v0

    .line 1520
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNfcTagInterface()Landroid/nfc/INfcTag;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1503
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    return-object v0
.end method

.method public getState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1526
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1527
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    monitor-exit v0

    return v1

    .line 1528
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ignore(IILandroid/nfc/ITagRemovedCallback;)Z
    .locals 8
    .param p1, "nativeHandle"    # I
    .param p2, "debounceMs"    # I
    .param p3, "callback"    # Landroid/nfc/ITagRemovedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1422
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1424
    const/4 v0, 0x1

    const/16 v1, 0xe

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    if-ne p1, v2, :cond_0

    .line 1427
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 1428
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 1429
    return v0

    .line 1432
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findAndRemoveObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1433
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1435
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v4

    array-length v4, v4

    .line 1436
    .local v4, "uidLength":I
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v5

    .line 1437
    :try_start_0
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput p2, v6, Lcom/android/nfc/NfcService;->mDebounceTagDebounceMs:I

    .line 1438
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput p1, v6, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 1439
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-array v7, v4, [B

    iput-object v7, v6, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    .line 1440
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-object p3, v6, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 1441
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    invoke-static {v6, v3, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1442
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1447
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 1448
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v3

    int-to-long v5, p2

    invoke-virtual {v3, v1, v5, v6}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1449
    return v0

    .line 1442
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1451
    .end local v4    # "uidLength":I
    :cond_1
    return v3
.end method

.method public invokeBeam()V
    .locals 2

    .line 1462
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-nez v0, :cond_0

    .line 1463
    return-void

    .line 1465
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1467
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1468
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    goto :goto_0

    .line 1470
    :cond_1
    const-string v0, "NfcService"

    const-string v1, "Calling activity not in foreground."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :goto_0
    return-void
.end method

.method public invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    .locals 4
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .line 1476
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1477
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1478
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1479
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1498
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1499
    return-void
.end method

.method public isNdefPushEnabled()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1256
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1257
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1258
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNfcSecureEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1289
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1290
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    monitor-exit v0

    return v1

    .line 1291
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pausePolling(I)V
    .locals 5
    .param p1, "timeoutInMs"    # I

    .line 1224
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1226
    if-lez p1, :cond_1

    int-to-long v0, p1

    const-wide/32 v2, 0x9c40

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1232
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    .line 1233
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 1234
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    .line 1235
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, p1

    .line 1234
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1236
    monitor-exit v0

    .line 1237
    return-void

    .line 1236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1227
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Refusing to pause polling for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return-void
.end method

.method public removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V
    .locals 3
    .param p1, "token"    # Landroid/nfc/INfcUnlockHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1618
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1619
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcUnlockManager;->removeUnlockHandler(Landroid/os/IBinder;)I

    .line 1620
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1622
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1623
    return-void

    .line 1620
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resonantFrequency(I)V
    .locals 2
    .param p1, "isResonantFreq"    # I

    .line 1195
    const-string v0, "NfcService"

    const-string v1, "resonantFrequency"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    if-eqz p1, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->doResonantFrequency(Z)V

    goto :goto_0

    .line 1199
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->doResonantFrequency(Z)V

    .line 1200
    :goto_0
    return-void
.end method

.method public resumePolling()V
    .locals 4

    .line 1241
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1243
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1244
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    if-nez v1, :cond_0

    .line 1245
    monitor-exit v0

    return-void

    .line 1248
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1500(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 1249
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    .line 1250
    new-instance v1, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v1, v3}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1251
    monitor-exit v0

    .line 1252
    return-void

    .line 1251
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppCallback(Landroid/nfc/IAppCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/nfc/IAppCallback;

    .line 1406
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1409
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2100(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1410
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2100(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;

    move-result-object v1

    .line 1411
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 1410
    const-string v3, "no_outgoing_beam"

    invoke-virtual {v1, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsBeamCapable:Z

    if-eqz v1, :cond_0

    .line 1413
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/nfc/P2pLinkManager;->setNdefCallback(Landroid/nfc/IAppCallback;I)V

    goto :goto_0

    .line 1415
    :cond_0
    const-string v1, "NfcService"

    const-string v2, "Disabling default Beam behavior"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    :goto_0
    return-void
.end method

.method public setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techListsParcel"    # Landroid/nfc/TechListParcel;

    .line 1360
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1361
    invoke-static {}, Lcom/android/nfc/NfcService;->isControlledByPV()Z

    move-result v0

    const-string v1, "NfcService"

    if-eqz v0, :cond_0

    .line 1362
    const-string v0, ""

    .line 1363
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/nfc/NfcService$NfcAdapterService;->getCurrentProcessName(I)Ljava/lang/String;

    move-result-object v0

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ProcessName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1364
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1367
    const-string v2, "com.zte.zftdoctor"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1368
    const-string v2, "setPvForegroundDispatch: Caller not in foreground."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    return-void

    .line 1371
    .end local v0    # "processName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1372
    const-string v0, "setForegroundDispatch: Caller not in foreground."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return-void

    .line 1371
    :cond_1
    nop

    .line 1376
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 1377
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 1378
    return-void

    .line 1382
    :cond_2
    if-eqz p2, :cond_5

    .line 1383
    array-length v0, p2

    if-nez v0, :cond_3

    .line 1384
    const/4 p2, 0x0

    goto :goto_1

    .line 1386
    :cond_3
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    aget-object v2, p2, v1

    .line 1387
    .local v2, "filter":Landroid/content/IntentFilter;
    if-eqz v2, :cond_4

    .line 1386
    .end local v2    # "filter":Landroid/content/IntentFilter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1388
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null IntentFilter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1395
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 1396
    .local v0, "techLists":[[Ljava/lang/String;
    if-eqz p3, :cond_6

    .line 1397
    invoke-virtual {p3}, Landroid/nfc/TechListParcel;->getTechLists()[[Ljava/lang/String;

    move-result-object v0

    .line 1400
    :cond_6
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 1401
    return-void
.end method

.method public setNfcSecure(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .line 1296
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1297
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1800(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 1298
    const-string v0, "NfcService"

    const-string v1, "KeyGuard need to be unlocked before setting Secure NFC OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const/4 v0, 0x0

    return v0

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1303
    :try_start_0
    const-string v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting Secure NFC "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "secure_nfc_on"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1305
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1306
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean p1, v1, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    .line 1307
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1700(Lcom/android/nfc/NfcService;)Landroid/app/backup/BackupManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1308
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost;->setNfcSecure(Z)Z

    .line 1309
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1900(Lcom/android/nfc/NfcService;)V

    .line 1310
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 1312
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onSecureNfcToggled()V

    .line 1314
    :cond_1
    const/16 v0, 0x87

    if-eqz p1, :cond_2

    .line 1315
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    goto :goto_0

    .line 1317
    :cond_2
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 1318
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1310
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setP2pModes(II)V
    .locals 2
    .param p1, "initiatorModes"    # I
    .param p2, "targetModes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1544
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1545
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->setP2pInitiatorModes(I)V

    .line 1546
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost;->setP2pTargetModes(I)V

    .line 1547
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1548
    return-void
.end method

.method public setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/nfc/IAppCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1554
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$2000(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1555
    const-string v1, "NfcService"

    const-string v2, "setReaderMode: Caller is not in foreground and is not system process."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    return-void

    .line 1558
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1559
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1560
    const-string v2, "NfcService"

    const-string v3, "setReaderMode() called while NFC is not enabled."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1563
    :cond_1
    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 1565
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v4, Lcom/android/nfc/NfcService$ReaderModeParams;

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v4, v5}, Lcom/android/nfc/NfcService$ReaderModeParams;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v4, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 1566
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iput-object p2, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    .line 1567
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iput p3, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    .line 1568
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    const/16 v4, 0x7d

    if-eqz p4, :cond_2

    .line 1569
    const-string v5, "presence"

    invoke-virtual {p4, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_0

    .line 1571
    :cond_2
    nop

    :goto_0
    iput v4, v3, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    .line 1572
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1576
    goto :goto_1

    .line 1573
    :catch_0
    move-exception v2

    .line 1574
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "NfcService"

    const-string v4, "Remote binder has already died."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 1579
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 1580
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$2300(Lcom/android/nfc/NfcService;)V

    .line 1581
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->access$2200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1584
    goto :goto_1

    .line 1582
    :catch_1
    move-exception v3

    .line 1583
    .local v3, "e":Ljava/util/NoSuchElementException;
    :try_start_4
    const-string v4, "NfcService"

    const-string v5, "Reader mode Binder was never registered."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :goto_1
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1587
    monitor-exit v1

    .line 1588
    return-void

    .line 1587
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public verifyNfcPermission()V
    .locals 1

    .line 1457
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1458
    return-void
.end method

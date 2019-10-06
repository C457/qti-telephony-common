.class Lcom/android/nfc/NfcService$3;
.super Landroid/os/IContainerSwitchListener$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService;-><init>(Landroid/app/Application;)V
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

    .line 1260
    iput-object p1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/IContainerSwitchListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterSwitch(Z)V
    .locals 8
    .param p1, "isActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1305
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAfterSwitch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nfcIsOpen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->nfcIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerService.getContainerName() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->containerService:Landroid/os/IContainerService;

    invoke-interface {v2}, Landroid/os/IContainerService;->getContainerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerService.isActive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->containerService:Landroid/os/IContainerService;

    invoke-interface {v2}, Landroid/os/IContainerService;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->containerService:Landroid/os/IContainerService;

    invoke-interface {v0}, Landroid/os/IContainerService;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1310
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PREF_NFC_ON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "nfc_on"

    sget-boolean v4, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "nfc_on"

    sget-boolean v3, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/android/nfc/NfcService;->nfcIsOpen:Z

    .line 1313
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->nfcIsOpen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    iget-object v1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$900(Lcom/android/nfc/NfcService;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    iget-object v1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$1000(Lcom/android/nfc/NfcService;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1315
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mAutoEnable:Z

    .line 1316
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v0, Lcom/android/nfc/NfcService;->mAutoDisable:Z

    .line 1317
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/android/nfc/NfcService;->autoSwitchTimer:Ljava/util/Timer;

    .line 1318
    new-instance v3, Lcom/android/nfc/NfcService$3$1;

    invoke-direct {v3, p0}, Lcom/android/nfc/NfcService$3$1;-><init>(Lcom/android/nfc/NfcService$3;)V

    .line 1331
    .local v3, "autoSwitchTimertask":Ljava/util/TimerTask;
    const-string v0, "NfcService"

    const-string v1, "start autoSwitchTimertask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v0, Lcom/android/nfc/NfcService;->autoSwitchTimer:Ljava/util/Timer;

    const-wide/16 v4, 0x1388

    const-wide/16 v6, 0x1388

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1333
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->enable()Z

    .line 1334
    invoke-static {}, Lcom/android/nfc/NfcService;->access$800()[B

    move-result-object v0

    monitor-enter v0

    .line 1336
    :try_start_0
    const-string v1, "NfcService"

    const-string v2, "enable wait before"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-static {}, Lcom/android/nfc/NfcService;->access$800()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1338
    const-string v1, "NfcService"

    const-string v2, "enable wait after"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    goto :goto_2

    .line 1342
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1339
    :catch_0
    move-exception v1

    .line 1340
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1342
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_2
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1345
    .end local v3    # "autoSwitchTimertask":Ljava/util/TimerTask;
    :cond_3
    :goto_4
    return-void
.end method

.method public onBeforeSwitch()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1264
    const-string v0, "NfcService"

    const-string v1, "onBeforeSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerService.getContainerName() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->containerService:Landroid/os/IContainerService;

    invoke-interface {v2}, Landroid/os/IContainerService;->getContainerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->containerService:Landroid/os/IContainerService;

    invoke-interface {v0}, Landroid/os/IContainerService;->isActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1267
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PREF_NFC_ON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "nfc_on"

    sget-boolean v4, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$400(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "nfc_on"

    sget-boolean v3, Lcom/android/nfc/NfcService;->mNfcDefaultValueBoolean:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    iget-object v1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/android/nfc/NfcService;->nfcIsOpen:Z

    .line 1270
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->nfcIsOpen:Z

    iput-boolean v1, v0, Lcom/android/nfc/NfcService;->nfcNeedOpen:Z

    .line 1272
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mState: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->nfcNeedOpen:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    iget-object v1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$500(Lcom/android/nfc/NfcService;)I

    move-result v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mNxpNfcState:I

    iget-object v1, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->access$600(Lcom/android/nfc/NfcService;)I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1276
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mAutoDisable:Z

    .line 1277
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v0, Lcom/android/nfc/NfcService;->mAutoEnable:Z

    .line 1278
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->autoSwitchTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 1279
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->autoSwitchTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1280
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/nfc/NfcService;->autoSwitchTimer:Ljava/util/Timer;

    .line 1283
    :cond_3
    invoke-static {}, Lcom/android/nfc/NfcService;->isControlledByMdM()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1284
    invoke-static {v2}, Lcom/android/nfc/NfcService;->access$702(Z)Z

    .line 1287
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService$NfcAdapterService;->disable(Z)Z

    .line 1288
    invoke-static {}, Lcom/android/nfc/NfcService;->access$800()[B

    move-result-object v0

    monitor-enter v0

    .line 1290
    :try_start_0
    const-string v1, "NfcService"

    const-string v2, "disable wait before"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-static {}, Lcom/android/nfc/NfcService;->access$800()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 1292
    const-string v1, "NfcService"

    const-string v2, "disable wait after"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    goto :goto_2

    .line 1296
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1293
    :catch_0
    move-exception v1

    .line 1294
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1296
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_2
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1299
    :cond_5
    :goto_4
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nfcIsOpen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->nfcIsOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const-string v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containerService.isActive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/NfcService$3;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->containerService:Landroid/os/IContainerService;

    invoke-interface {v2}, Landroid/os/IContainerService;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    return-void
.end method

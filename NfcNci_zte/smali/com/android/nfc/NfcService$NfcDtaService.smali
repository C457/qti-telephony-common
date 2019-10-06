.class final Lcom/android/nfc/NfcService$NfcDtaService;
.super Landroid/nfc/INfcDta$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcDtaService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 3354
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcDta$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableClient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3407
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3408
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->disableDtaSnepClient()V

    .line 3409
    return-void
.end method

.method public disableDta()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3365
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3366
    sget-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v0, :cond_0

    .line 3367
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDtaMode()V

    .line 3368
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    .line 3370
    :cond_0
    return-void
.end method

.method public disableServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3384
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3385
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->disableExtDtaSnepServer()V

    .line 3386
    return-void
.end method

.method public enableClient(Ljava/lang/String;III)Z
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I
    .param p4, "testCaseId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3390
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3392
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 3393
    return v0

    .line 3395
    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0x14

    if-le p4, v2, :cond_1

    .line 3396
    sput-boolean v1, Lcom/android/nfc/NfcService;->sIsShortRecordLayout:Z

    .line 3397
    add-int/lit8 p4, p4, -0x14

    goto :goto_0

    .line 3399
    :cond_1
    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsShortRecordLayout:Z

    .line 3401
    :goto_0
    const-string v0, "testCaseId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/nfc/P2pLinkManager;->enableDtaSnepClient(Ljava/lang/String;III)V

    .line 3403
    return v1
.end method

.method public enableDta()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3356
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3357
    sget-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-nez v0, :cond_0

    .line 3358
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->enableDtaMode()V

    .line 3359
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    .line 3360
    const-string v0, "NfcService"

    const-string v1, "DTA Mode is Enabled "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :cond_0
    return-void
.end method

.method public enableServer(Ljava/lang/String;IIII)Z
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "miu"    # I
    .param p4, "rwSize"    # I
    .param p5, "testCaseId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3374
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3376
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3377
    const/4 v0, 0x0

    return v0

    .line 3379
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/nfc/P2pLinkManager;->enableExtDtaSnepServer(Ljava/lang/String;IIII)V

    .line 3380
    const/4 v0, 0x1

    return v0
.end method

.method public registerMessageService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "msgServiceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3413
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 3414
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3415
    const/4 v0, 0x0

    return v0

    .line 3417
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/DtaServiceConnector;->setMessageService(Ljava/lang/String;)V

    .line 3418
    const/4 v0, 0x1

    return v0
.end method

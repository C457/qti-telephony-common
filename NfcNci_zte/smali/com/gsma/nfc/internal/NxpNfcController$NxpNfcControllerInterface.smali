.class final Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;
.super Lcom/nxp/nfc/gsma/internal/INxpNfcController$Stub;
.source "NxpNfcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/nfc/internal/NxpNfcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NxpNfcControllerInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/nfc/internal/NxpNfcController;


# direct methods
.method constructor <init>(Lcom/gsma/nfc/internal/NxpNfcController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/gsma/nfc/internal/NxpNfcController;

    .line 290
    iput-object p1, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    invoke-direct {p0}, Lcom/nxp/nfc/gsma/internal/INxpNfcController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public commitOffHostService(ILjava/lang/String;Ljava/lang/String;Landroid/nfc/cardemulation/NxpApduServiceInfo;)Z
    .locals 17
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "service"    # Landroid/nfc/cardemulation/NxpApduServiceInfo;

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "aidLength":I
    const/4 v2, 0x1

    .line 339
    .local v2, "is_table_size_required":Z
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 340
    .local v3, "newAidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v4, "oldAidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    move v9, v1

    move v1, v8

    .local v1, "i":I
    .local v9, "aidLength":I
    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 343
    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/gsma/nfc/internal/NxpNfcController;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v9, v5

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v1    # "i":I
    :cond_0
    const-string v1, "NxpNfcController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total commiting aids Length:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v1, v0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v1, v1, Lcom/gsma/nfc/internal/NxpNfcController;->mServiceCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual {v1, v10, v5, v11}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->getApduServices(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 348
    .local v12, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    move v1, v8

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 349
    const-string v5, "NxpNfcController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "All Service Names["

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "] "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v13}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v4

    .line 352
    invoke-virtual/range {p4 .. p4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v3

    .line 353
    const-string v5, "NxpNfcController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Commiting Existing Service:  "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    goto :goto_2

    .line 348
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 359
    .end local v1    # "i":I
    .end local v3    # "newAidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "oldAidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "newAidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "oldAidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    move-object v13, v3

    move-object v14, v4

    move v1, v8

    .local v1, "newAidListSize":I
    :goto_3
    move v15, v1

    .end local v1    # "newAidListSize":I
    .local v15, "newAidListSize":I
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_4

    .line 360
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 361
    const/4 v2, 0x1

    .line 362
    const-string v1, "NxpNfcController"

    const-string v3, "New Aids Added  "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    goto :goto_4

    .line 359
    :cond_3
    add-int/lit8 v1, v15, 0x1

    .end local v15    # "newAidListSize":I
    .restart local v1    # "newAidListSize":I
    goto :goto_3

    .line 367
    .end local v1    # "newAidListSize":I
    .restart local v15    # "newAidListSize":I
    :cond_4
    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-ne v15, v1, :cond_5

    .line 368
    const/4 v2, 0x0

    .line 371
    .end local v2    # "is_table_size_required":Z
    .local v6, "is_table_size_required":Z
    :cond_5
    move v6, v2

    const-string v1, "NxpNfcController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is routing Table size calcution required :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v1, "NxpNfcController"

    const-string v2, "Commiting :  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, v0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/gsma/nfc/internal/NxpNfcController;->access$102(Lcom/gsma/nfc/internal/NxpNfcController;Z)Z

    .line 380
    iget-object v1, v0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v1, v1, Lcom/gsma/nfc/internal/NxpNfcController;->mServiceCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move v2, v10

    move-object v4, v11

    move-object v5, v7

    move/from16 v16, v6

    move-object/from16 v6, p4

    .end local v6    # "is_table_size_required":Z
    .local v16, "is_table_size_required":Z
    invoke-virtual/range {v1 .. v6}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->registerApduService(IILjava/lang/String;Ljava/lang/String;Landroid/nfc/cardemulation/NxpApduServiceInfo;)Z

    .line 383
    iget-object v1, v0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    invoke-static {v1, v8}, Lcom/gsma/nfc/internal/NxpNfcController;->access$102(Lcom/gsma/nfc/internal/NxpNfcController;Z)Z

    .line 384
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getLastCommitRoutingStatus()Z

    move-result v1

    .line 385
    .local v1, "isCommitSuccess":Z
    const-string v2, "NxpNfcController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CommitStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return v1
.end method

.method public deleteOffHostService(ILjava/lang/String;Landroid/nfc/cardemulation/NxpApduServiceInfo;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 294
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v0, v0, Lcom/gsma/nfc/internal/NxpNfcController;->mServiceCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->deleteApduService(IILjava/lang/String;Landroid/nfc/cardemulation/NxpApduServiceInfo;)Z

    move-result v0

    return v0
.end method

.method public enableMultiEvt_NxptransactionReception(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "result":Z
    iget-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-boolean v1, v1, Lcom/gsma/nfc/internal/NxpNfcController;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NxpNfcController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableMultiEvt_NxptransactionReception() come in! packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " seName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    invoke-static {v1}, Lcom/gsma/nfc/internal/NxpNfcController;->access$200(Lcom/gsma/nfc/internal/NxpNfcController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 395
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-boolean v2, v2, Lcom/gsma/nfc/internal/NxpNfcController;->DBG:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const-string v2, "NxpNfcController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableMultiEvt_NxptransactionReception() (pm.checkPermission(NxpConstants.PERMISSIONS_TRANSACTION_EVENT , packageName) == PackageManager.PERMISSION_GRANTED):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "com.gsma.services.nfc.permission.TRANSACTION_EVENT"

    invoke-virtual {v1, v6, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-boolean v2, v2, Lcom/gsma/nfc/internal/NxpNfcController;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "NxpNfcController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableMultiEvt_NxptransactionReception() (pm.checkPermission(NxpConstants.PERMISSIONS_NFC , packageName) == PackageManager.PERMISSION_GRANTED):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android.permission.NFC"

    invoke-virtual {v1, v6, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    move v3, v4

    nop

    :cond_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_4
    iget-object v2, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-boolean v2, v2, Lcom/gsma/nfc/internal/NxpNfcController;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "NxpNfcController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableMultiEvt_NxptransactionReception() checkCertificatesFromUICC(packageName, seName):"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    invoke-static {v5, p1, p2}, Lcom/gsma/nfc/internal/NxpNfcController;->access$300(Lcom/gsma/nfc/internal/NxpNfcController;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_5
    const-string v2, "com.gsma.services.nfc.permission.TRANSACTION_EVENT"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "android.permission.NFC"

    .line 400
    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    .line 401
    invoke-static {v2, p1, p2}, Lcom/gsma/nfc/internal/NxpNfcController;->access$300(Lcom/gsma/nfc/internal/NxpNfcController;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_9

    .line 402
    iget-object v2, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v2, v2, Lcom/gsma/nfc/internal/NxpNfcController;->mEnabledMultiEvts:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    const-string v2, "NxpNfcController"

    const-string v3, " try to add other app with same cert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 409
    .local v2, "intentToResolve":Landroid/content/Intent;
    const-string v3, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    new-instance v3, Ljava/lang/String;

    const-string v5, "nfc://secure:0/SIM1/*"

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 411
    .local v3, "urlToResolve":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 413
    const/16 v5, 0x60

    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 416
    .local v5, "intentReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v6, "NxpNfcController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " receiver got: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Resolver"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 418
    .local v7, "resInfo":Landroid/content/pm/ResolveInfo;
    const-string v8, "NxpNfcController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " dump resInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_7

    .line 420
    const-string v8, "NxpNfcController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " receiver: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v8, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v8, v8, Lcom/gsma/nfc/internal/NxpNfcController;->mEnabledMultiEvts:Ljava/util/ArrayList;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 422
    goto :goto_1

    .line 423
    :cond_6
    iget-object v8, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9, p2}, Lcom/gsma/nfc/internal/NxpNfcController;->access$300(Lcom/gsma/nfc/internal/NxpNfcController;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v4, :cond_7

    .line 424
    const-string v8, "NxpNfcController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding to mEnabledMultiEvts:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v8, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v8, v8, Lcom/gsma/nfc/internal/NxpNfcController;->mEnabledMultiEvts:Ljava/util/ArrayList;

    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    .end local v7    # "resInfo":Landroid/content/pm/ResolveInfo;
    :cond_7
    goto/16 :goto_1

    .line 430
    :cond_8
    const/4 v0, 0x1

    .line 431
    .end local v2    # "intentToResolve":Landroid/content/Intent;
    .end local v3    # "urlToResolve":Ljava/lang/String;
    .end local v5    # "intentReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_2

    .line 432
    :cond_9
    const/4 v0, 0x0

    .line 435
    :goto_2
    return v0
.end method

.method public enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-boolean v0, v0, Lcom/gsma/nfc/internal/NxpNfcController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NxpNfcController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableMultiReception() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    const-string v0, "SIM"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    invoke-static {v0, p1, p2}, Lcom/gsma/nfc/internal/NxpNfcController;->access$400(Lcom/gsma/nfc/internal/NxpNfcController;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 444
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cerficates from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v0, v0, Lcom/gsma/nfc/internal/NxpNfcController;->mMultiReceptionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v0, v0, Lcom/gsma/nfc/internal/NxpNfcController;->mMultiReceptionMap:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    return-void
.end method

.method public getDefaultOffHostService(ILjava/lang/String;)Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v0, v0, Lcom/gsma/nfc/internal/NxpNfcController;->mServiceCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-virtual {v0}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->getApduservicesMaps()Ljava/util/HashMap;

    move-result-object v0

    .line 305
    .local v0, "mapServices":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    iget-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    invoke-static {v1}, Lcom/gsma/nfc/internal/NxpNfcController;->access$000(Lcom/gsma/nfc/internal/NxpNfcController;)Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getPreferredPaymentService()Landroid/content/ComponentName;

    move-result-object v1

    .line 306
    .local v1, "preferredPaymentService":Landroid/content/ComponentName;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 307
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 308
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 309
    const-string v3, "NxpNfcController"

    const-string v4, "getDefaultOffHostService unregistered package Name"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-object v2

    .line 312
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "defaultservice":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 317
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 318
    const-string v2, "NxpNfcController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultOffHostService: Dynamic: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    return-object v2

    .line 321
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    :cond_1
    goto :goto_0

    .line 324
    :cond_2
    iget-object v4, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v4, v4, Lcom/gsma/nfc/internal/NxpNfcController;->mServiceCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-virtual {v4}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->getInstalledStaticServices()Ljava/util/HashMap;

    move-result-object v4

    .line 325
    .local v4, "staticServices":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 326
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 327
    const-string v2, "NxpNfcController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getDefaultOffHostService: Static: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v7}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    return-object v2

    .line 330
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    :cond_3
    goto :goto_1

    .line 332
    .end local v3    # "defaultservice":Ljava/lang/String;
    .end local v4    # "staticServices":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    :cond_4
    return-object v2
.end method

.method public getOffHostServices(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->this$0:Lcom/gsma/nfc/internal/NxpNfcController;

    iget-object v0, v0, Lcom/gsma/nfc/internal/NxpNfcController;->mServiceCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;->getApduServices(IILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOffHostServices(ILjava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;->getOffHostServices(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.class final Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;
.super Landroid/nfc/INfcCardEmulation$Stub;
.source "CardEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/CardEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CardEmulationInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 402
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-direct {p0}, Landroid/nfc/INfcCardEmulation$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 464
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 465
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 466
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const/4 v0, 0x0

    return-object v0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/NxpAidGroup;

    move-result-object v0

    return-object v0
.end method

.method public getServices(ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 489
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 490
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 492
    .local v0, "nxpApduServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v1, "apduServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 494
    .local v3, "nxpApdu":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->createApduServiceInfo()Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v4

    .line 495
    .local v4, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v3    # "nxpApdu":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v4    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    goto :goto_0

    .line 497
    :cond_0
    const-string v2, "CardEmulationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServices() size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-object v1
.end method

.method public isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 420
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 421
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    return v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .line 406
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 407
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 408
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 409
    return v1

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 412
    const/4 v2, 0x1

    invoke-virtual {v0, p1, p3, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 413
    .local v0, "defaultService":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 453
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 454
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x0

    return v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Landroid/nfc/cardemulation/NxpAidGroup;

    invoke-direct {v2, p3}, Landroid/nfc/cardemulation/NxpAidGroup;-><init>(Landroid/nfc/cardemulation/AidGroup;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->registerAidGroupForService(IILandroid/content/ComponentName;Landroid/nfc/cardemulation/NxpAidGroup;)Z

    move-result v0

    return v0
.end method

.method public removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 477
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 478
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    const/4 v0, 0x0

    return v0

    .line 481
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->removeAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 442
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 443
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    const/4 v0, 0x0

    return v0

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/PreferredServices;->setDefaultForNextTap(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 431
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 432
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const/4 v0, 0x0

    return v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPreferredService(Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 505
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    const-string v0, "CardEmulationManager"

    const-string v1, "setPreferredService: unknown component."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v0, 0x0

    return v0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 510
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 509
    invoke-virtual {v0, p1, v1}, Lcom/android/nfc/cardemulation/PreferredServices;->registerPreferredForegroundService(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v0

    return v0
.end method

.method public unsetPreferredService()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 516
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 517
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 516
    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/PreferredServices;->unregisteredPreferredForegroundService(I)Z

    move-result v0

    return v0
.end method

.class public Lcom/android/nfc/cardemulation/CardEmulationManager;
.super Ljava/lang/Object;
.source "CardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
.implements Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;
.implements Lcom/android/nfc/cardemulation/PreferredServices$Callback;
.implements Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;,
        Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final NFC_HCE_APDU:I = 0x1

.field static final NFC_HCE_NFCF:I = 0x4

.field static final TAG:Ljava/lang/String; = "CardEmulationManager"


# instance fields
.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field final mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

.field final mContext:Landroid/content/Context;

.field final mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

.field final mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

.field final mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

.field final mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

.field final mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

.field final mPowerManager:Landroid/os/PowerManager;

.field final mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

.field final mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

.field final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidRoutingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 110
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 111
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    .line 112
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 113
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 114
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 115
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 116
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 117
    new-instance v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    .line 118
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 119
    new-instance v0, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, v1}, Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    .line 120
    new-instance v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    .line 123
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->initialize(Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;)V

    .line 124
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->initialize()V

    .line 125
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    .line 126
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/PreferredServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public getAllServices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;"
        }
    .end annotation

    .line 687
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 688
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "validateInstalled"    # Z

    .line 287
    const-string v0, "payment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 288
    const-string v0, "CardEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowing defaults for category "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return-object v1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 293
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "nfc_payment_default_component"

    .line 292
    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 296
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 297
    .local v2, "service":Landroid/content/ComponentName;
    if-eqz p3, :cond_3

    if-nez v2, :cond_1

    goto :goto_0

    .line 300
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    nop

    :cond_2
    return-object v1

    .line 298
    :cond_3
    :goto_0
    return-object v2

    .line 303
    .end local v2    # "service":Landroid/content/ComponentName;
    :cond_4
    return-object v1
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    return-object v0
.end method

.method public getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    return-object v0
.end method

.method public getRegisteredAidCache()Lcom/android/nfc/cardemulation/RegisteredAidCache;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    return-object v0
.end method

.method public getRegisteredNxpServicesCache()Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mRegisteredNxpServicesCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    return-object v0
.end method

.method public getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 699
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NxpApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getServicesAidCacheSize(ILjava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 341
    const-string v0, "payment"

    if-ne p2, v0, :cond_0

    .line 342
    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v0, "nonPaymentServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v1, "nonPaymentServiceAidCacheSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 347
    .local v3, "serviceAidCacheSize":Ljava/lang/Integer;
    const/4 v4, 0x0

    .line 348
    .local v4, "serviceComponent":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 349
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 350
    iget-object v5, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    const-string v6, "other"

    invoke-virtual {v5, p1, v6}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 352
    .local v6, "serviceinfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 353
    const/4 v4, 0x0

    .line 354
    if-eqz v6, :cond_3

    .line 355
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 356
    .local v8, "aid":Ljava/lang/String;
    const-string v9, "*"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 357
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    .line 359
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 361
    .end local v8    # "aid":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 362
    :cond_2
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .end local v6    # "serviceinfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_3
    goto :goto_0

    .line 367
    :cond_4
    return-object v1
.end method

.method public getServicesAidInfo(ILjava/lang/String;)Ljava/util/List;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/nxp/nfc/NxpAidServiceInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 653
    const-string v1, "payment"

    move-object/from16 v2, p2

    if-ne v2, v1, :cond_0

    .line 654
    const/4 v1, 0x0

    return-object v1

    .line 656
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v1, "nonPaymentServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v3, "nxpAidServiceInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/nxp/nfc/NxpAidServiceInfo;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 659
    .local v5, "serviceAidCacheSize":Ljava/lang/Integer;
    const/4 v6, 0x0

    .line 660
    .local v6, "serviceComponent":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 661
    iget-object v7, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 662
    iget-object v7, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    const-string v8, "other"

    move/from16 v9, p1

    invoke-virtual {v7, v9, v8}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 663
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 664
    .local v8, "serviceinfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 665
    const/4 v6, 0x0

    .line 666
    if-eqz v8, :cond_3

    .line 667
    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 668
    .local v11, "aid":Ljava/lang/String;
    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 669
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x4

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    .line 671
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x4

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 673
    .end local v11    # "aid":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 674
    :cond_2
    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 675
    new-instance v10, Lcom/nxp/nfc/NxpAidServiceInfo;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const-string v11, "other"

    .line 676
    invoke-virtual {v8, v11}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->isServiceEnabled(Ljava/lang/String;)Z

    move-result v14

    .line 677
    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getOtherAidGroupDescription()Ljava/lang/String;

    move-result-object v16

    move-object v11, v10

    move-object v12, v6

    invoke-direct/range {v11 .. v16}, Lcom/nxp/nfc/NxpAidServiceInfo;-><init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V

    .line 678
    .local v10, "aidServiceInfo":Lcom/nxp/nfc/NxpAidServiceInfo;
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    .end local v8    # "serviceinfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v10    # "aidServiceInfo":Lcom/nxp/nfc/NxpAidServiceInfo;
    :cond_3
    goto :goto_0

    .line 683
    :cond_4
    return-object v3
.end method

.method isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 308
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 309
    .local v0, "serviceFound":Z
    if-nez v0, :cond_0

    .line 315
    const-string v1, "CardEmulationManager"

    const-string v2, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 318
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method isServiceRegistered(ILandroid/content/ComponentName;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .line 372
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 373
    .local v0, "serviceFound":Z
    if-nez v0, :cond_0

    .line 379
    const-string v1, "CardEmulationManager"

    const-string v2, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 640
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V

    .line 641
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V

    .line 642
    return-void
.end method

.method public onHostCardEmulationActivated(I)V
    .locals 5
    .param p1, "technology"    # I

    .line 146
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 149
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationActivated()V

    .line 151
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationActivated()V

    goto :goto_0

    .line 152
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationActivated()V

    .line 154
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onHostEmulationActivated()V

    .line 155
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onHostEmulationActivated()V

    .line 157
    :cond_2
    :goto_0
    return-void
.end method

.method public onHostCardEmulationData(I[B)V
    .locals 5
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .line 160
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 163
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationData([B)V

    goto :goto_0

    .line 165
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationData([B)V

    .line 168
    :cond_2
    :goto_0
    return-void
.end method

.method public onHostCardEmulationDeactivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 171
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationDeactivated()V

    .line 173
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationDeactivated()V

    goto :goto_0

    .line 174
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationDeactivated()V

    .line 176
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onHostEmulationDeactivated()V

    .line 177
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onHostEmulationDeactivated()V

    .line 179
    :cond_1
    :goto_0
    return-void
.end method

.method public onNfcDisabled()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcDisabled()V

    .line 220
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onNfcDisabled()V

    .line 221
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onNfcDisabled()V

    .line 222
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onNfcDisabled()V

    .line 223
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onNfcDisabled()V

    .line 224
    return-void
.end method

.method public onNfcEnabled()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcEnabled()V

    .line 214
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onNfcEnabled()V

    .line 215
    return-void
.end method

.method public onNfcFServicesUpdated(ILjava/util/List;)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 250
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onServicesUpdated(ILjava/util/List;)V

    .line 252
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onServicesUpdated()V

    .line 253
    return-void
.end method

.method public onOffHostAidSelected()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onOffHostAidSelected()V

    .line 183
    return-void
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 634
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 635
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 636
    return-void
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 628
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 629
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 630
    return-void
.end method

.method public onReRoutingEntry()V
    .locals 2

    .line 206
    const-string v0, "CardEmulationManager"

    const-string v1, "onReRoutingEntry: notify service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->clearRoutingTable()V

    .line 208
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 209
    return-void
.end method

.method public onRoutingTableChanged()V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onRoutingTableChanged()V

    .line 650
    return-void
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 240
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->verifyDefaults(ILjava/util/List;)V

    .line 242
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onServicesUpdated(ILjava/util/List;)V

    .line 244
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onServicesUpdated()V

    .line 245
    return-void
.end method

.method public onT3tConfigure()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->clearT3tidentifiercache()V

    .line 201
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->generateForegroundT3tIdentifiersCacheLocked()V

    .line 202
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 187
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 188
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->onUserSwitched(I)V

    .line 190
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onUserSwitched()V

    .line 191
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onUserSwitched()V

    .line 192
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onUserSwitched(I)V

    .line 193
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onUserSwitched()V

    .line 194
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 196
    return-void
.end method

.method public packageHasPreferredService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->packageHasPreferredService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .line 323
    const-string v0, "payment"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    const-string v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not allowing defaults for category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    return v0

    .line 330
    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 335
    :cond_1
    const-string v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find default service to make default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 331
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_payment_default_component"

    .line 333
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 331
    :goto_1
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 337
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method public setScreenState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 645
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->setScreenState(I)V

    .line 646
    return-void
.end method

.method public updateServiceState(ILjava/util/Map;)I
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 693
    .local p2, "serviceState":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 694
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 695
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->updateServiceState(IILjava/util/Map;)I

    move-result v0

    return v0
.end method

.method public updateStatusOfServices(Z)V
    .locals 1
    .param p1, "commitStatus"    # Z

    .line 705
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->updateStatusOfServices(Z)V

    .line 706
    return-void
.end method

.method verifyDefaults(ILjava/util/List;)V
    .locals 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 256
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    const-string v0, "payment"

    .line 257
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 258
    .local v0, "defaultPaymentService":Landroid/content/ComponentName;
    const-string v1, "CardEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    if-nez v0, :cond_4

    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "numPaymentServices":I
    const/4 v2, 0x0

    .line 264
    .local v2, "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 265
    .local v4, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const-string v5, "payment"

    invoke-virtual {v4, v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 266
    add-int/lit8 v1, v1, 0x1

    .line 267
    invoke-virtual {v4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 269
    .end local v4    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_0
    goto :goto_0

    .line 270
    :cond_1
    const/4 v3, 0x1

    if-le v1, v3, :cond_2

    .line 272
    const-string v3, "CardEmulationManager"

    const-string v4, "No default set, more than one service left."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 273
    :cond_2
    if-ne v1, v3, :cond_3

    .line 275
    const-string v3, "CardEmulationManager"

    const-string v4, "No default set, making single service default."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const-string v3, "payment"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto :goto_1

    .line 280
    :cond_3
    const-string v3, "CardEmulationManager"

    const-string v4, "No default set, last payment service removed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v1    # "numPaymentServices":I
    .end local v2    # "lastFoundPaymentService":Landroid/content/ComponentName;
    :cond_4
    :goto_1
    return-void
.end method

.class public Lcom/gsma/nfc/internal/NxpNfcController;
.super Ljava/lang/Object;
.source "NxpNfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;
    }
.end annotation


# static fields
.field public static final PN65T_ID:I = 0x2

.field public static final PN66T_ID:I = 0x4

.field private static ROUTING_TABLE_EE_MAX_AID_CFG_LEN:I = 0x0

.field static final TAG:Ljava/lang/String; = "NxpNfcController"


# instance fields
.field DBG:Z

.field private mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field private mContext:Landroid/content/Context;

.field public mEnabledMultiEvts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGsmaCommitOffhostService:Z

.field private mHasCert:Z

.field private mHasOMACert:Z

.field public final mMultiReceptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mNxpNfcControllerInterface:Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;

.field private mRegisteredAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field final mServiceCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

.field private mWaitCheckCert:Ljava/lang/Object;

.field private mWaitOMACheckCert:Ljava/lang/Object;

.field private unicastPkg:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const/16 v0, 0x244

    sput v0, Lcom/gsma/nfc/internal/NxpNfcController;->ROUTING_TABLE_EE_MAX_AID_CFG_LEN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/CardEmulationManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cardEmulationManager"    # Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mGsmaCommitOffhostService:Z

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->DBG:Z

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mEnabledMultiEvts:Ljava/util/ArrayList;

    .line 61
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mMultiReceptionMap:Ljava/util/HashMap;

    .line 63
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitCheckCert:Ljava/lang/Object;

    .line 64
    iput-boolean v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mHasCert:Z

    .line 65
    iput-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 66
    iput-boolean v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mHasOMACert:Z

    .line 67
    iput-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->unicastPkg:Landroid/content/ComponentName;

    .line 70
    iput-object p1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 72
    invoke-virtual {p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getRegisteredNxpServicesCache()Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mServiceCache:Lcom/gsma/nfc/internal/RegisteredNxpServicesCache;

    .line 73
    invoke-virtual {p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getRegisteredAidCache()Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mRegisteredAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 74
    new-instance v0, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;

    invoke-direct {v0, p0}, Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;-><init>(Lcom/gsma/nfc/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mNxpNfcControllerInterface:Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/nfc/internal/NxpNfcController;)Lcom/android/nfc/cardemulation/RegisteredAidCache;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/nfc/internal/NxpNfcController;

    .line 44
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mRegisteredAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    return-object v0
.end method

.method static synthetic access$102(Lcom/gsma/nfc/internal/NxpNfcController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/gsma/nfc/internal/NxpNfcController;
    .param p1, "x1"    # Z

    .line 44
    iput-boolean p1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mGsmaCommitOffhostService:Z

    return p1
.end method

.method static synthetic access$200(Lcom/gsma/nfc/internal/NxpNfcController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/gsma/nfc/internal/NxpNfcController;

    .line 44
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/nfc/internal/NxpNfcController;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gsma/nfc/internal/NxpNfcController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/gsma/nfc/internal/NxpNfcController;->checkCertificatesFromUICC(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/gsma/nfc/internal/NxpNfcController;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/gsma/nfc/internal/NxpNfcController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/gsma/nfc/internal/NxpNfcController;->checkX509CertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkCertificatesFromUICC(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .line 111
    const-string v0, "NxpNfcController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCertificatesFromUICC() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "CertificateIntent":Landroid/content/Intent;
    const-string v1, "org.simalliance.openmobileapi.service.ACTION_CHECK_X509"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v1, "org.simalliance.openmobileapi.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "org.simalliance.openmobileapi.service.EXTRA_SE_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v1, "org.simalliance.openmobileapi.service.extra.EXTRA_PKG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitCheckCert:Ljava/lang/Object;

    .line 120
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mHasCert:Z

    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitCheckCert:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :try_start_1
    iget-object v3, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitCheckCert:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 124
    monitor-exit v2

    .line 127
    goto :goto_0

    .line 124
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "NxpNfcController"

    const-string v4, "interruped exception ."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitCheckCert:Ljava/lang/Object;

    .line 130
    iget-boolean v2, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mHasCert:Z

    if-eqz v2, :cond_0

    .line 131
    const/4 v1, 0x1

    return v1

    .line 133
    :cond_0
    return v1
.end method

.method private checkX509CertificatesFromSim(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .line 138
    iget-boolean v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NxpNfcController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkX509CertificatesFromSim() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "checkCertificateIntent":Landroid/content/Intent;
    const-string v1, "org.simalliance.openmobileapi.service.ACTION_CHECK_X509"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "org.simalliance.openmobileapi.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "org.simalliance.openmobileapi.service.EXTRA_SE_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v1, "org.simalliance.openmobileapi.service.EXTRA_PKG"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 147
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mHasOMACert:Z

    .line 150
    :try_start_0
    iget-object v2, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitOMACheckCert:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :try_start_1
    iget-object v3, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitOMACheckCert:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 152
    monitor-exit v2

    .line 156
    goto :goto_0

    .line 152
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    :catch_0
    move-exception v2

    .line 155
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "NxpNfcController"

    const-string v4, "interruped."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitOMACheckCert:Ljava/lang/Object;

    .line 159
    iget-boolean v2, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mHasOMACert:Z

    if-eqz v2, :cond_1

    .line 160
    const/4 v1, 0x1

    return v1

    .line 162
    :cond_1
    return v1
.end method

.method private getApplicationInstallTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 203
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 204
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    .line 205
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "exception":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "NxpNfcController"

    const-string v3, "Application install time not retrieved"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private getPackageListUnicastMode()V
    .locals 17

    .line 212
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gsma/nfc/internal/NxpNfcController;->unicastPkg:Landroid/content/ComponentName;

    .line 213
    iget-object v1, v0, Lcom/gsma/nfc/internal/NxpNfcController;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getAllServices()Ljava/util/List;

    move-result-object v1

    .line 214
    .local v1, "regServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    iget-object v2, v0, Lcom/gsma/nfc/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 215
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x60

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 218
    .local v3, "intentServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 219
    .local v4, "apduResolvedServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 220
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 221
    .local v6, "resolvedApduService":Ljava/lang/String;
    const/16 v7, -0x3e8

    .line 223
    .local v7, "highestPriority":I
    const/4 v8, 0x0

    .line 225
    .local v8, "resolveInfoService":Landroid/content/pm/ResolveInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 226
    .local v10, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-virtual {v10}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 227
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 228
    .local v13, "resInfo":Landroid/content/pm/ResolveInfo;
    const/4 v8, 0x0

    .line 229
    const-string v14, "NxpNfcController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Registered Service in resolved cache"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v11, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 231
    move-object v8, v13

    .line 232
    goto :goto_2

    .line 234
    .end local v13    # "resInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_1

    .line 235
    :cond_1
    :goto_2
    if-nez v8, :cond_2

    .line 236
    const-string v11, "NxpNfcController"

    const-string v12, " Registered Service is not found in cache"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    goto :goto_0

    .line 239
    :cond_2
    iget v11, v8, Landroid/content/pm/ResolveInfo;->priority:I

    .line 240
    .local v11, "priority":I
    const-string v12, "com.gsma.services.nfc.permission.TRANSACTION_EVENT"

    invoke-virtual {v2, v12, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_5

    const-string v12, "android.permission.NFC"

    .line 241
    invoke-virtual {v2, v12, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_5

    .line 243
    const-string v12, "SIM"

    invoke-direct {v0, v5, v12}, Lcom/gsma/nfc/internal/NxpNfcController;->checkCertificatesFromUICC(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_3

    const-string v12, "SIM1"

    .line 244
    invoke-direct {v0, v5, v12}, Lcom/gsma/nfc/internal/NxpNfcController;->checkCertificatesFromUICC(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-ne v12, v13, :cond_5

    .line 246
    :cond_3
    if-ne v11, v7, :cond_4

    .line 247
    const-string v12, "NxpNfcController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  highestPriority add :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 249
    :cond_4
    if-ge v7, v11, :cond_5

    .line 250
    move v7, v11

    .line 251
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 252
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    const-string v12, "NxpNfcController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  highestPriority clear & add :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v10    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v11    # "priority":I
    :cond_5
    :goto_3
    goto/16 :goto_0

    .line 258
    :cond_6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_7

    .line 259
    const-string v9, "NxpNfcController"

    const-string v10, "No services to resolve, not starting the activity"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 261
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-le v9, v11, :cond_9

    .line 262
    const-string v9, "NxpNfcController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " resolved"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/gsma/nfc/internal/NxpNfcController;->getApplicationInstallTime(Ljava/lang/String;)J

    move-result-wide v9

    .line 264
    .local v9, "minInstallTime":J
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 265
    .local v12, "resolvedService":Ljava/lang/String;
    invoke-direct {v0, v12}, Lcom/gsma/nfc/internal/NxpNfcController;->getApplicationInstallTime(Ljava/lang/String;)J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-gtz v13, :cond_8

    .line 266
    invoke-direct {v0, v12}, Lcom/gsma/nfc/internal/NxpNfcController;->getApplicationInstallTime(Ljava/lang/String;)J

    move-result-wide v9

    .line 267
    move-object v6, v12

    .line 269
    :cond_8
    const-string v13, "NxpNfcController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Install time  of application"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v12    # "resolvedService":Ljava/lang/String;
    goto :goto_4

    .line 272
    .end local v9    # "minInstallTime":J
    :cond_9
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v6, v9

    check-cast v6, Ljava/lang/String;

    .line 274
    :cond_a
    const-string v9, "NxpNfcController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Final Resolved Service"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v6, :cond_c

    .line 276
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 277
    .local v10, "resolve":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 278
    new-instance v9, Landroid/content/ComponentName;

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v6, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v0, Lcom/gsma/nfc/internal/NxpNfcController;->unicastPkg:Landroid/content/ComponentName;

    .line 279
    const-string v9, "NxpNfcController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPackageListUnicastMode unicastPkg"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v0, Lcom/gsma/nfc/internal/NxpNfcController;->unicastPkg:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    goto :goto_6

    .line 282
    .end local v10    # "resolve":Landroid/content/pm/ResolveInfo;
    :cond_b
    goto :goto_5

    .line 284
    :cond_c
    :goto_6
    return-void
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .line 186
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 188
    .local v0, "len":I
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 190
    add-int/lit8 v0, v0, 0x1

    .line 192
    :cond_1
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 193
    .local v1, "data":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 194
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 195
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 193
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 197
    .end local v2    # "i":I
    :cond_2
    return-object v1

    .line 186
    .end local v0    # "len":I
    .end local v1    # "data":[B
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getEnabledMultiEvtsPackageList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mEnabledMultiEvts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const-string v0, "NxpNfcController"

    const-string v1, " check for unicast mode service resolution"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/gsma/nfc/internal/NxpNfcController;->getPackageListUnicastMode()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mEnabledMultiEvts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNxpNfcControllerInterface()Lcom/nxp/nfc/gsma/internal/INxpNfcController;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mNxpNfcControllerInterface:Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "NxpNfcController"

    const-string v1, "GSMA: mNxpNfcControllerInterface is not Null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mNxpNfcControllerInterface:Lcom/gsma/nfc/internal/NxpNfcController$NxpNfcControllerInterface;

    return-object v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUnicastPackage()Landroid/content/ComponentName;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->unicastPkg:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isGsmaCommitOffhostService()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mGsmaCommitOffhostService:Z

    return v0
.end method

.method public setResultForCertificates(Z)V
    .locals 3
    .param p1, "result"    # Z

    .line 94
    const-string v0, "NxpNfcController"

    const-string v1, "setResultForCertificates() Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitCheckCert:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitCheckCert:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 97
    if-eqz p1, :cond_0

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mHasCert:Z

    .line 99
    const-string v1, "NxpNfcController"

    const-string v2, " setResultForCertificates mHasCert = true;"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mHasCert:Z

    .line 102
    const-string v1, "NxpNfcController"

    const-string v2, " setResultForCertificates mHasCert = false;"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_0
    iget-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitCheckCert:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 106
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    const-string v0, "NxpNfcController"

    const-string v1, "setResultForCertificates() End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 106
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setResultForX509Certificates(Z)V
    .locals 2
    .param p1, "result"    # Z

    .line 167
    const-string v0, "NxpNfcController"

    const-string v1, "setResultForX509Certificates() Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitOMACheckCert:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitOMACheckCert:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 170
    if-eqz p1, :cond_0

    .line 171
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mHasOMACert:Z

    goto :goto_0

    .line 173
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mHasOMACert:Z

    .line 175
    :goto_0
    iget-object v1, p0, Lcom/gsma/nfc/internal/NxpNfcController;->mWaitOMACheckCert:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 177
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    const-string v0, "NxpNfcController"

    const-string v1, "setResultForX509Certificates() End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

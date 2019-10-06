.class public Lcom/android/nfc/WiredSeService;
.super Ljava/lang/Object;
.source "WiredSeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/WiredSeService$WiredSeDeathRecipient;
    }
.end annotation


# static fields
.field private static final EVENT_GET_HAL:I = 0x1

.field private static final GET_SERVICE_DELAY_MILLIS:I = 0xc8

.field private static final MAX_GET_HAL_RETRY:I = 0x5

.field static final TAG:Ljava/lang/String; = "WiredSeService"

.field private static sNfcWiredSeHandle:I

.field private static sService:Lcom/android/nfc/WiredSeService;

.field private static sWiredSeGetHalRetry:I


# instance fields
.field mWiredSEHal:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;

.field private mWiredSeCallback:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSeHalCallback$Stub;

.field private mWiredSeDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private mWiredSeHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/android/nfc/WiredSeService;->sNfcWiredSeHandle:I

    .line 44
    sput v0, Lcom/android/nfc/WiredSeService;->sWiredSeGetHalRetry:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSEHal:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;

    .line 55
    new-instance v0, Lcom/android/nfc/WiredSeService$WiredSeDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/nfc/WiredSeService$WiredSeDeathRecipient;-><init>(Lcom/android/nfc/WiredSeService;)V

    iput-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSeDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 57
    new-instance v0, Lcom/android/nfc/WiredSeService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/WiredSeService$1;-><init>(Lcom/android/nfc/WiredSeService;)V

    iput-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSeCallback:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSeHalCallback$Stub;

    .line 157
    new-instance v0, Lcom/android/nfc/WiredSeService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/WiredSeService$2;-><init>(Lcom/android/nfc/WiredSeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSeHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 34
    sget v0, Lcom/android/nfc/WiredSeService;->sNfcWiredSeHandle:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 34
    sput p0, Lcom/android/nfc/WiredSeService;->sNfcWiredSeHandle:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/nfc/WiredSeService;)Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSeHalCallback$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/WiredSeService;

    .line 34
    iget-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSeCallback:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSeHalCallback$Stub;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/nfc/WiredSeService;)Landroid/os/IHwBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/WiredSeService;

    .line 34
    iget-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSeDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/nfc/WiredSeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/WiredSeService;

    .line 34
    iget-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 34
    sget v0, Lcom/android/nfc/WiredSeService;->sWiredSeGetHalRetry:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 34
    sput p0, Lcom/android/nfc/WiredSeService;->sWiredSeGetHalRetry:I

    return p0
.end method

.method static synthetic access$408()I
    .locals 2

    .line 34
    sget v0, Lcom/android/nfc/WiredSeService;->sWiredSeGetHalRetry:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/nfc/WiredSeService;->sWiredSeGetHalRetry:I

    return v0
.end method

.method public static getInstance()Lcom/android/nfc/WiredSeService;
    .locals 1

    .line 49
    sget-object v0, Lcom/android/nfc/WiredSeService;->sService:Lcom/android/nfc/WiredSeService;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/android/nfc/WiredSeService;

    invoke-direct {v0}, Lcom/android/nfc/WiredSeService;-><init>()V

    sput-object v0, Lcom/android/nfc/WiredSeService;->sService:Lcom/android/nfc/WiredSeService;

    .line 52
    :cond_0
    sget-object v0, Lcom/android/nfc/WiredSeService;->sService:Lcom/android/nfc/WiredSeService;

    return-object v0
.end method


# virtual methods
.method public wiredSeDeInitialize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    const-string v0, "WiredSeService"

    const-string v1, "wiredSeDeInitialize Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSEHal:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;->setWiredSeCallback(Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSeHalCallback;)V

    .line 136
    return-void
.end method

.method public wiredSeInitialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    const-string v0, "WiredSeService"

    const-string v1, "wiredSeInitialize Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSEHal:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;

    if-nez v0, :cond_0

    .line 124
    invoke-static {}, Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;->getService()Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSEHal:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSEHal:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSEHal:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;

    iget-object v1, p0, Lcom/android/nfc/WiredSeService;->mWiredSeCallback:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSeHalCallback$Stub;

    invoke-interface {v0, v1}, Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;->setWiredSeCallback(Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSeHalCallback;)V

    .line 130
    iget-object v0, p0, Lcom/android/nfc/WiredSeService;->mWiredSEHal:Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;

    iget-object v1, p0, Lcom/android/nfc/WiredSeService;->mWiredSeDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lvendor/nxp/nxpwiredse/V1_0/INxpWiredSe;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 131
    return-void

    .line 127
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No HAL is provided for WiredSe"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

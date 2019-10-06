.class Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;
.super Ljava/lang/Object;
.source "IzatProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/izatprovider/IzatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IzatProviderContext"
.end annotation


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private mFusedProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;

.field private final mLooper:Landroid/os/Looper;

.field private mNetwkProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;

.field private mNpProxy:Lcom/qualcomm/location/izatprovider/NpProxy;

.field private mOsAgent:Lcom/qualcomm/location/osagent/OsAgent;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "app"    # Landroid/content/Context;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 426
    iput-object p1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->mAppContext:Landroid/content/Context;

    .line 427
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lcom/qualcomm/location/izatprovider/IzatProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, "t":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 429
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->mLooper:Landroid/os/Looper;

    .line 430
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/qualcomm/location/izatprovider/IzatProvider$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/qualcomm/location/izatprovider/IzatProvider$1;

    .line 417
    invoke-direct {p0, p1}, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/NpProxy;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    .line 417
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->mNpProxy:Lcom/qualcomm/location/izatprovider/NpProxy;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;Lcom/qualcomm/location/izatprovider/NpProxy;)Lcom/qualcomm/location/izatprovider/NpProxy;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;
    .param p1, "x1"    # Lcom/qualcomm/location/izatprovider/NpProxy;

    .line 417
    iput-object p1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->mNpProxy:Lcom/qualcomm/location/izatprovider/NpProxy;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/IzatProvider;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    .line 417
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->mNetwkProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;Lcom/qualcomm/location/izatprovider/IzatProvider;)Lcom/qualcomm/location/izatprovider/IzatProvider;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;
    .param p1, "x1"    # Lcom/qualcomm/location/izatprovider/IzatProvider;

    .line 417
    iput-object p1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->mNetwkProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Lcom/qualcomm/location/izatprovider/IzatProvider;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    .line 417
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->mFusedProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;

    return-object v0
.end method

.method static synthetic access$202(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;Lcom/qualcomm/location/izatprovider/IzatProvider;)Lcom/qualcomm/location/izatprovider/IzatProvider;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;
    .param p1, "x1"    # Lcom/qualcomm/location/izatprovider/IzatProvider;

    .line 417
    iput-object p1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->mFusedProvider:Lcom/qualcomm/location/izatprovider/IzatProvider;

    return-object p1
.end method

.method static synthetic access$400(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    .line 417
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;

    .line 417
    iget-object v0, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;Lcom/qualcomm/location/osagent/OsAgent;)Lcom/qualcomm/location/osagent/OsAgent;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;
    .param p1, "x1"    # Lcom/qualcomm/location/osagent/OsAgent;

    .line 417
    iput-object p1, p0, Lcom/qualcomm/location/izatprovider/IzatProvider$IzatProviderContext;->mOsAgent:Lcom/qualcomm/location/osagent/OsAgent;

    return-object p1
.end method


# virtual methods
.method public getFusedProviderInner(Landroid/content/Context;)Lcom/qualcomm/location/izatprovider/IzatProvider;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 437
    invoke-static {p1}, Lcom/qualcomm/location/izatprovider/IzatProvider;->getFusedProvider(Landroid/content/Context;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkProviderInner(Landroid/content/Context;)Lcom/qualcomm/location/izatprovider/IzatProvider;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 433
    invoke-static {p1}, Lcom/qualcomm/location/izatprovider/IzatProvider;->getNetworkProvider(Landroid/content/Context;)Lcom/qualcomm/location/izatprovider/IzatProvider;

    move-result-object v0

    return-object v0
.end method

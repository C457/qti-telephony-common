.class public Lcom/android/nfc/cardemulation/AidRoutingManager;
.super Ljava/lang/Object;
.source "AidRoutingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;,
        Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;
    }
.end annotation


# static fields
.field static final AID_MATCHING_EXACT_ONLY:I = 0x0

.field static final AID_MATCHING_EXACT_OR_PREFIX:I = 0x1

.field static final AID_MATCHING_EXACT_OR_SUBSET_OR_PREFIX:I = 0x3

.field static final AID_MATCHING_K:I = 0x2

.field static final AID_MATCHING_L:I = 0x1

.field static final AID_MATCHING_PREFIX_ONLY:I = 0x2

.field static final DBG:Z

.field static final ROUTE_HOST:I = 0x0

.field static final TAG:Ljava/lang/String; = "AidRoutingManager"


# instance fields
.field final mActivityManager:Landroid/app/ActivityManager;

.field final mAidMatchingPlatform:I

.field final mAidMatchingSupport:I

.field mAidRoutingTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAidRoutingTableSize:I

.field final mDefaultOffHostRoute:I

.field mDefaultRoute:I

.field mLastCommitStatus:Z

.field final mLock:Ljava/lang/Object;

.field mPowerForAid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRouteCacheSize:I

.field mRouteForAid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRoutingTableChanged:Z

.field final mVzwRoutingCache:Lcom/android/nfc/cardemulation/VzwRoutingCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    .line 130
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetDefaultRouteDestination()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRoutingTableChanged:Z

    .line 132
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultRoute=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetDefaultOffHostRouteDestination()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    .line 134
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultOffHostRoute=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetAidMatchingMode()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    .line 136
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAidMatchingSupport=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_2
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetAidMatchingPlatform()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    .line 138
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "AidRoutingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAidTableSize=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTableSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_3
    new-instance v0, Lcom/android/nfc/cardemulation/VzwRoutingCache;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/VzwRoutingCache;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mVzwRoutingCache:Lcom/android/nfc/cardemulation/VzwRoutingCache;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLastCommitStatus:Z

    .line 142
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 143
    .local v0, "context":Landroid/content/Context;
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/cardemulation/AidRoutingManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 58
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTableSize:I

    return v0
.end method

.method private commit(Ljava/util/Hashtable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;)V"
        }
    .end annotation

    .line 442
    .local p1, "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    if-eqz p1, :cond_1

    .line 443
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 444
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 445
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 446
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->clearRouting()V

    .line 447
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 448
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/AidElement;

    .line 449
    .local v2, "element":Lcom/android/nfc/cardemulation/AidElement;
    sget-boolean v3, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "AidRoutingManager"

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/AidElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    .line 451
    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/AidElement;->getAid()Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/AidElement;->getRouteLocation()I

    move-result v5

    .line 453
    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/AidElement;->getPowerState()I

    move-result v6

    .line 454
    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/AidElement;->getAidInfo()I

    move-result v7

    .line 450
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;III)V

    .line 455
    .end local v2    # "element":Lcom/android/nfc/cardemulation/AidElement;
    goto :goto_0

    .line 458
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/AidElement;>;"
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/nfc/cardemulation/AidElement;>;"
    :cond_1
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 459
    return-void
.end method

.method private native doGetAidMatchingMode()I
.end method

.method private native doGetAidMatchingPlatform()I
.end method

.method private native doGetDefaultOffHostRouteDestination()I
.end method

.method private native doGetDefaultRouteDestination()I
.end method

.method private getTopClass()Ljava/lang/String;
    .locals 3

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "topClass":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 648
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 649
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 651
    :cond_0
    return-object v0
.end method

.method private isProcessingTapAgain()Z
    .locals 2

    .line 641
    const-class v0, Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "appChooserActivityClassName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getTopClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public ClearVzwCache()V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mVzwRoutingCache:Lcom/android/nfc/cardemulation/VzwRoutingCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->clear()V

    .line 485
    return-void
.end method

.method public GetVzwCache()Lcom/android/nfc/cardemulation/VzwRoutingCache;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mVzwRoutingCache:Lcom/android/nfc/cardemulation/VzwRoutingCache;

    return-object v0
.end method

.method public UpdateVzwCache([BIIZ)Z
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "route"    # I
    .param p3, "power"    # I
    .param p4, "isAllowed"    # Z

    .line 475
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mVzwRoutingCache:Lcom/android/nfc/cardemulation/VzwRoutingCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->addAid([BIIZ)Z

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method clearNfcRoutingTableLocked()V
    .locals 1

    .line 194
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->clearRouting()V

    .line 195
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 196
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 197
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 198
    return-void
.end method

.method public configureApduPatternRouting(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 201
    .local p1, "apduPatternList":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const-string v1, "FFFFFFFFFFFFFFEF"

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->unrouteApduPattern(Ljava/lang/String;)V

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;

    .line 205
    .local v1, "apduPatternInfo":Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    iget-object v3, v1, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;->referenceData:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;->mask:Ljava/lang/String;

    iget v5, v1, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;->route:I

    iget v6, v1, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;->powerState:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/nfc/NfcService;->routeApduPattern(Ljava/lang/String;Ljava/lang/String;II)V

    .line 207
    .end local v1    # "apduPatternInfo":Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;
    goto :goto_0

    .line 208
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 202
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public configureRouting(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;)Z"
        }
    .end annotation

    .line 216
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->configureRouting(Ljava/util/HashMap;I)Z

    move-result v0

    return v0
.end method

.method public configureRouting(Ljava/util/HashMap;I)Z
    .locals 31
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;I)Z"
        }
    .end annotation

    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 222
    move/from16 v3, p2

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRoutingTableChanged:Z

    .line 223
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v4

    iput v4, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 224
    const/4 v4, 0x0

    .line 225
    .local v4, "aidRouteResolved":Z
    sget-boolean v5, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "AidRoutingManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAidMatchingPlatform=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->getAidRoutingTableSize()I

    move-result v5

    iput v5, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTableSize:I

    .line 228
    iget v5, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteCacheSize:I

    .line 230
    .local v5, "lastRouteCacheSize":I
    sget-boolean v6, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "AidRoutingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDefaultRoute=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    new-instance v6, Ljava/util/Hashtable;

    const/16 v7, 0x32

    invoke-direct {v6, v7}, Ljava/util/Hashtable;-><init>(I)V

    .line 232
    .local v6, "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    new-instance v7, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-direct {v7, v8}, Landroid/util/SparseArray;-><init>(I)V

    .line 233
    .local v7, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 234
    .local v8, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 235
    .local v9, "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    .line 237
    .local v10, "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v11, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;

    invoke-direct {v11, v1}, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;-><init>(Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    .line 239
    .local v11, "defaultRouteCache":Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 240
    .local v13, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/nfc/cardemulation/AidElement;

    .line 241
    .local v14, "elem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v14}, Lcom/android/nfc/cardemulation/AidElement;->getRouteLocation()I

    move-result v15

    .line 242
    .local v15, "route":I
    invoke-virtual {v14}, Lcom/android/nfc/cardemulation/AidElement;->getPowerState()I

    move-result v0

    .line 243
    .local v0, "power":I
    move/from16 v16, v4

    invoke-virtual {v14}, Lcom/android/nfc/cardemulation/AidElement;->getAidInfo()I

    move-result v4

    .line 244
    .local v4, "aidType":I
    .local v16, "aidRouteResolved":Z
    move-object/from16 v17, v12

    const/4 v12, -0x1

    if-ne v15, v12, :cond_2

    .line 245
    iget v15, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    .line 246
    invoke-virtual {v14, v15}, Lcom/android/nfc/cardemulation/AidElement;->setRouteLocation(I)V

    .line 248
    :cond_2
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 249
    .local v12, "aid":Ljava/lang/String;
    move-object/from16 v18, v13

    new-instance v13, Ljava/util/HashSet;

    .end local v13    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .local v18, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v15, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Set;

    .line 250
    .local v13, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v13, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    invoke-virtual {v7, v15, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    move-object/from16 v19, v13

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .end local v13    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v19, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v13, :cond_3

    const-string v13, "AidRoutingManager"

    move/from16 v20, v4

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "aidType":I
    .local v20, "aidType":I
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v10

    const-string v10, "#######Routing AID "

    .end local v10    # "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v21, "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " to route "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " with power "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 255
    invoke-static {v13, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "power":I
    .end local v12    # "aid":Ljava/lang/String;
    .end local v14    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v15    # "route":I
    .end local v18    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .end local v19    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "aidType":I
    goto :goto_1

    .line 257
    .end local v21    # "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v21, v10

    .line 239
    .end local v10    # "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v21    # "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    move/from16 v4, v16

    move-object/from16 v12, v17

    move-object/from16 v10, v21

    const/4 v0, 0x0

    goto/16 :goto_0

    .line 259
    .end local v16    # "aidRouteResolved":Z
    .end local v21    # "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v4, "aidRouteResolved":Z
    .restart local v10    # "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    move/from16 v16, v4

    move-object/from16 v21, v10

    .end local v4    # "aidRouteResolved":Z
    .end local v10    # "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "aidRouteResolved":Z
    .restart local v21    # "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 260
    :try_start_0
    iget-object v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v10, 0x5

    const/4 v12, 0x1

    if-eqz v0, :cond_c

    .line 261
    :try_start_1
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "AidRoutingManager"

    const-string v13, "Routing table unchanged"

    invoke-static {v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_5
    iget-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLastCommitStatus:Z

    if-nez v0, :cond_7

    .line 264
    if-ne v10, v3, :cond_6

    .line 265
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/nfc/NfcService;->setChangedFlag(Z)V

    .line 267
    :cond_6
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/nfc/NfcService;->updateStatusOfServices(Z)V

    .line 268
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->notifyRoutingTableFull()V

    goto :goto_2

    .line 273
    :cond_7
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/nfc/NfcService;->updateStatusOfServices(Z)V

    .line 275
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->isProcessingTapAgain()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    if-eqz v0, :cond_8

    goto :goto_3

    .line 279
    :cond_8
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "AidRoutingManager"

    const-string v10, "Routing table unchanged, not updating"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 276
    :cond_9
    :goto_3
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "AidRoutingManager"

    const-string v10, "Routing table unchanged, but commit the routing"

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_a
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 281
    :cond_b
    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    return v0

    .line 399
    :catchall_0
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    goto/16 :goto_16

    .line 285
    :cond_c
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 286
    iput-object v8, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 287
    iput-object v9, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mPowerForAid:Ljava/util/HashMap;

    .line 288
    iput-object v7, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 289
    const/4 v0, 0x0

    .local v0, "routeIndex":I
    :goto_5
    const/4 v13, 0x3

    if-ge v0, v13, :cond_24

    .line 290
    invoke-virtual {v6}, Ljava/util/Hashtable;->clear()V

    .line 291
    iget v14, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v15, 0x2

    if-eq v14, v15, :cond_e

    :try_start_3
    iget v14, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v14, v15, :cond_d

    goto :goto_6

    .line 330
    :cond_d
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    goto/16 :goto_b

    .line 307
    :cond_e
    :goto_6
    :try_start_4
    iget-object v14, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    iget v10, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-virtual {v14, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Set;

    .line 308
    .local v10, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v10, :cond_12

    .line 309
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v22, v17

    .line 312
    .local v22, "defaultRouteAid":Ljava/lang/String;
    iget-object v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_8
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    move-object/from16 v23, v17

    .line 313
    .local v23, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v12, v23

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    .end local v23    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v12, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    check-cast v17, Ljava/lang/String;

    move-object/from16 v24, v17

    .line 314
    .local v24, "aid":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 315
    .restart local v15    # "route":I
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v7, v22

    move-object/from16 v8, v24

    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    .end local v22    # "defaultRouteAid":Ljava/lang/String;
    .end local v24    # "aid":Ljava/lang/String;
    .local v7, "defaultRouteAid":Ljava/lang/String;
    .local v8, "aid":Ljava/lang/String;
    .local v25, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v26, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v17, :cond_10

    move-object/from16 v27, v8

    iget v8, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .end local v8    # "aid":Ljava/lang/String;
    .local v27, "aid":Ljava/lang/String;
    if-eq v15, v8, :cond_10

    .line 316
    sget-boolean v8, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v8, :cond_f

    const-string v8, "AidRoutingManager"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v28, v9

    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    .end local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v28, "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v29, v10

    const-string v10, "Adding AID "

    .end local v10    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v29, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " for default route, because a conflicting shorter AID will be addedto the routing table"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 319
    .end local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v29    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f
    move-object/from16 v28, v9

    move-object/from16 v29, v10

    .end local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v29    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_9
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/AidElement;

    .line 320
    .local v8, "elem":Lcom/android/nfc/cardemulation/AidElement;
    iget v9, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-virtual {v8, v9}, Lcom/android/nfc/cardemulation/AidElement;->setRouteLocation(I)V

    .line 321
    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v8    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v12    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "route":I
    .end local v27    # "aid":Ljava/lang/String;
    goto :goto_a

    .line 324
    .end local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v29    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    move-object/from16 v28, v9

    move-object/from16 v29, v10

    .line 312
    .end local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v29    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_a
    move-object/from16 v22, v7

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v28

    move-object/from16 v10, v29

    const/4 v12, 0x1

    const/4 v15, 0x2

    goto :goto_8

    .line 399
    .end local v0    # "routeIndex":I
    .end local v7    # "defaultRouteAid":Ljava/lang/String;
    .end local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v29    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v28, v9

    .end local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_16

    .line 325
    .end local v25    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v26    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v0    # "routeIndex":I
    .local v7, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v8, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v10    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    .line 309
    .end local v7    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v10    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v25    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v26    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v29    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v12, 0x1

    const/4 v13, 0x3

    const/4 v15, 0x2

    goto/16 :goto_7

    .line 330
    .end local v25    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v26    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v29    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v7    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v8    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_12
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    .end local v7    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v25    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v26    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_b
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_c
    iget-object v8, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_21

    .line 331
    iget-object v8, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 332
    .local v8, "route":I
    iget v9, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    if-eq v8, v9, :cond_20

    .line 333
    iget-object v9, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 334
    .local v9, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 335
    .local v12, "aid":Ljava/lang/String;
    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 336
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    if-nez v13, :cond_13

    .line 337
    const-string v13, "AidRoutingManager"

    const-string v14, "This device does not support prefix AIDs."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 338
    :cond_13
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_15

    .line 339
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v13, :cond_14

    const-string v13, "AidRoutingManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Routing prefix AID "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to route "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 339
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_14
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/AidElement;

    .line 343
    .local v13, "elem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/nfc/cardemulation/AidElement;->setAid(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v6, v12, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    goto/16 :goto_f

    :cond_15
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_16

    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1f

    .line 349
    :cond_16
    const-string v13, "AidRoutingManager"

    const-string v14, "Routing AID in AID_MATCHING_EXACT_OR_PREFIX"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v13, :cond_17

    const-string v13, "AidRoutingManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Routing prefix AID "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to route "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 350
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_17
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/AidElement;

    .line 353
    .restart local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v6, v12, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .end local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    goto/16 :goto_f

    .line 356
    :cond_18
    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 357
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    if-nez v13, :cond_19

    .line 358
    const-string v13, "AidRoutingManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Device does not support subset AIDs but AID ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] is registered"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 360
    :cond_19
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1c

    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_1a

    goto :goto_e

    .line 364
    :cond_1a
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v15, 0x3

    if-ne v13, v15, :cond_1f

    .line 365
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v13, :cond_1b

    const-string v13, "AidRoutingManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Routing subset AID "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to route "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 365
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_1b
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/AidElement;

    .line 368
    .restart local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v6, v12, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    .end local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    goto :goto_f

    .line 362
    :cond_1c
    :goto_e
    const-string v13, "AidRoutingManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Device does not support subset AIDs but AID ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "] is registered"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 372
    :cond_1d
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v13, :cond_1e

    const-string v13, "AidRoutingManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Routing exact AID "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to route "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 372
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_1e
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/AidElement;

    .line 375
    .restart local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v6, v12, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    .end local v12    # "aid":Ljava/lang/String;
    .end local v13    # "elem":Lcom/android/nfc/cardemulation/AidElement;
    :cond_1f
    :goto_f
    goto/16 :goto_d

    .line 330
    .end local v8    # "route":I
    .end local v9    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_20
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_c

    .line 383
    .end local v7    # "i":I
    :cond_21
    invoke-virtual {v11, v6}, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->calculateAidRouteSize(Ljava/util/Hashtable;)I

    move-result v7

    iput v7, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteCacheSize:I

    .line 385
    if-nez v0, :cond_22

    iget v7, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteCacheSize:I

    iget v8, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTableSize:I

    if-gt v7, v8, :cond_22

    .line 387
    const/4 v7, 0x1

    .line 388
    .end local v16    # "aidRouteResolved":Z
    .local v7, "aidRouteResolved":Z
    nop

    .line 399
    move/from16 v16, v7

    goto :goto_10

    .line 390
    .end local v7    # "aidRouteResolved":Z
    .restart local v16    # "aidRouteResolved":Z
    :cond_22
    iget v7, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-virtual {v11, v6, v7}, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->updateDefaultAidRouteCache(Ljava/util/Hashtable;I)I

    .line 391
    invoke-virtual {v11}, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->getNextRouteLoc()I

    move-result v7

    iput v7, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 392
    iget v7, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    const/16 v8, 0xff

    if-ne v7, v8, :cond_23

    .line 394
    goto :goto_10

    .line 289
    :cond_23
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v25

    move-object/from16 v8, v26

    move-object/from16 v9, v28

    const/4 v10, 0x5

    const/4 v12, 0x1

    goto/16 :goto_5

    .line 399
    .end local v0    # "routeIndex":I
    .end local v25    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v26    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v7, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v8, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v9, "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_24
    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    .end local v7    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v25    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v26    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_10
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 400
    if-nez v16, :cond_28

    .line 401
    iget-object v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_25

    .line 402
    const/16 v16, 0x1

    .line 404
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteCacheSize:I

    .line 425
    .end local v16    # "aidRouteResolved":Z
    .local v0, "aidRouteResolved":Z
    :goto_11
    move/from16 v0, v16

    const/4 v4, 0x1

    goto :goto_14

    .line 407
    .end local v0    # "aidRouteResolved":Z
    .restart local v16    # "aidRouteResolved":Z
    :cond_25
    invoke-virtual {v11}, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->resolveDefaultAidRoute()Z

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_26

    .line 408
    const/16 v16, 0x1

    .line 409
    invoke-virtual {v11}, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->getResolvedAidRouteCache()Ljava/util/Hashtable;

    move-result-object v6

    .line 411
    invoke-virtual {v11, v6}, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->calculateAidRouteSize(Ljava/util/Hashtable;)I

    move-result v0

    iput v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteCacheSize:I

    .line 413
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->getResolvedAidRoute()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcService;->setDefaultAidRouteLoc(I)V

    goto :goto_11

    .line 416
    :cond_26
    iput v5, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteCacheSize:I

    .line 417
    const/4 v0, 0x5

    if-ne v0, v3, :cond_27

    .line 418
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcService;->setChangedFlag(Z)V

    goto :goto_12

    .line 421
    :cond_27
    const/4 v4, 0x1

    :goto_12
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->notifyRoutingTableFull()V

    goto :goto_13

    .line 425
    :cond_28
    const/4 v4, 0x1

    :goto_13
    move/from16 v0, v16

    .end local v16    # "aidRouteResolved":Z
    .restart local v0    # "aidRouteResolved":Z
    :goto_14
    if-ne v0, v4, :cond_29

    .line 426
    iput-boolean v4, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRoutingTableChanged:Z

    .line 427
    invoke-direct {v1, v6}, Lcom/android/nfc/cardemulation/AidRoutingManager;->commit(Ljava/util/Hashtable;)V

    .line 428
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/nfc/NfcService;->updateStatusOfServices(Z)V

    .line 429
    iput-boolean v4, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLastCommitStatus:Z

    goto :goto_15

    .line 432
    :cond_29
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/nfc/NfcService;->updateStatusOfServices(Z)V

    .line 433
    iput-boolean v8, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLastCommitStatus:Z

    .line 437
    :goto_15
    return v4

    .line 399
    .end local v0    # "aidRouteResolved":Z
    .end local v25    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v26    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v8    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "aidRouteResolved":Z
    :catchall_2
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v26, v8

    move-object/from16 v28, v9

    .end local v7    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v8    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v9    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v25    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v26    # "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v28    # "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_16
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_16
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 500
    const-string v0, "Routing table:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Default route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "host"

    goto :goto_0

    :cond_0
    const-string v1, "secure element"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 505
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 506
    .local v2, "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    Routed to 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 508
    .local v4, "aid":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "        \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 509
    .end local v4    # "aid":Ljava/lang/String;
    goto :goto_2

    .line 504
    .end local v2    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 511
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAidMatchMode()I
    .locals 1

    .line 488
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    return v0
.end method

.method public getAidMatchingPlatform()I
    .locals 1

    .line 496
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingPlatform:I

    return v0
.end method

.method public getLastCommitRoutingStatus()Z
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLastCommitStatus:Z

    return v0
.end method

.method public getRouteCacheSize()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteCacheSize:I

    return v0
.end method

.method public isRoutingTableUpdated()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRoutingTableChanged:Z

    return v0
.end method

.method public onNfccRoutingTableCleared()V
    .locals 2

    .line 468
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 470
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 471
    monitor-exit v0

    .line 472
    return-void

    .line 471
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supportsAidPrefixRouting()Z
    .locals 3

    .line 147
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public supportsAidSubsetRouting()Z
    .locals 2

    .line 153
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

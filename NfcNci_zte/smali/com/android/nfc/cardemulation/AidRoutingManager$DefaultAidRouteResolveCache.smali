.class final Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;
.super Ljava/lang/Object;
.source "AidRoutingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/AidRoutingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DefaultAidRouteResolveCache"
.end annotation


# static fields
.field static final AID_HDR_LENGTH:I = 0x4

.field static final MAX_AID_ENTRIES:I = 0x32


# instance fields
.field private aidCacheSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aidCacheTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;>;"
        }
    .end annotation
.end field

.field private aidRoutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAidRouteResolvedStatus:Z

.field private mCurrDefaultAidRoute:I

.field private mResolvedAidRoute:I

.field private resolvedAidCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/nfc/cardemulation/AidRoutingManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 536
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->this$0:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 537
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidCacheTable:Landroid/util/SparseArray;

    .line 538
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->resolvedAidCache:Ljava/util/Hashtable;

    .line 539
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidCacheSize:Ljava/util/HashMap;

    .line 540
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidRoutes:Ljava/util/ArrayList;

    .line 541
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->mCurrDefaultAidRoute:I

    .line 542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->mAidRouteResolvedStatus:Z

    .line 543
    return-void
.end method

.method private extractResolvedCache()Ljava/util/Hashtable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;"
        }
    .end annotation

    .line 547
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->mAidRouteResolvedStatus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 548
    return-object v1

    .line 550
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidCacheTable:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 551
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidCacheTable:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 552
    .local v2, "route":I
    iget v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->mResolvedAidRoute:I

    if-ne v2, v3, :cond_1

    .line 553
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidCacheTable:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    return-object v1

    .line 550
    .end local v2    # "route":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public calculateAidRouteSize(Ljava/util/Hashtable;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;)I"
        }
    .end annotation

    .line 561
    .local p1, "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    const/4 v0, 0x0

    .line 562
    .local v0, "routeTableSize":I
    const/4 v1, 0x0

    .line 563
    .local v1, "routeAidCount":I
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 564
    .local v3, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 565
    .local v4, "aid":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 566
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v0, v5

    goto :goto_1

    .line 568
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v0, v5

    .line 570
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 571
    .end local v3    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    .end local v4    # "aid":Ljava/lang/String;
    goto :goto_0

    .line 572
    :cond_1
    const-string v2, "AidRoutingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateAidRouteSize final Routing table size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->this$0:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-static {v2}, Lcom/android/nfc/cardemulation/AidRoutingManager;->access$000(Lcom/android/nfc/cardemulation/AidRoutingManager;)I

    move-result v2

    if-gt v0, v2, :cond_2

    const/16 v2, 0x32

    if-le v1, v2, :cond_2

    .line 574
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->this$0:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-static {v2}, Lcom/android/nfc/cardemulation/AidRoutingManager;->access$000(Lcom/android/nfc/cardemulation/AidRoutingManager;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 576
    :cond_2
    return v0
.end method

.method public getNextRouteLoc()I
    .locals 3

    .line 626
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 627
    iget v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->mCurrDefaultAidRoute:I

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidRoutes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidRoutes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    return v0

    .line 626
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 633
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0xff

    return v0
.end method

.method public getResolvedAidRoute()I
    .locals 1

    .line 616
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->mResolvedAidRoute:I

    return v0
.end method

.method public getResolvedAidRouteCache()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;"
        }
    .end annotation

    .line 621
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->extractResolvedCache()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public resolveDefaultAidRoute()Z
    .locals 9

    .line 592
    const/16 v0, 0xff

    .line 593
    .local v0, "minRoute":I
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->this$0:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-static {v1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->access$000(Lcom/android/nfc/cardemulation/AidRoutingManager;)I

    move-result v1

    .line 594
    .local v1, "minAidRouteSize":I
    const/4 v2, 0x0

    .line 595
    .local v2, "tempRoute":I
    const/4 v3, 0x0

    .line 596
    .local v3, "tempCacheSize":I
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 597
    .local v4, "aidRouteCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    iget-object v5, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidCacheSize:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 598
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 599
    .local v7, "key":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 600
    iget-object v8, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidCacheSize:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 601
    if-gt v3, v1, :cond_0

    .line 602
    move v1, v3

    .line 603
    move v0, v2

    .line 605
    .end local v7    # "key":Ljava/lang/Integer;
    :cond_0
    goto :goto_0

    .line 606
    :cond_1
    const/16 v6, 0xff

    if-eq v0, v6, :cond_2

    .line 607
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->mAidRouteResolvedStatus:Z

    .line 608
    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->mResolvedAidRoute:I

    .line 609
    const-string v6, "AidRoutingManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "min route found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->mResolvedAidRoute:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_2
    iget-boolean v6, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->mAidRouteResolvedStatus:Z

    return v6
.end method

.method public updateDefaultAidRouteCache(Ljava/util/Hashtable;I)I
    .locals 5
    .param p2, "route"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidElement;",
            ">;I)I"
        }
    .end annotation

    .line 580
    .local p1, "routeCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    const/4 v0, 0x0

    .line 581
    .local v0, "routesize":I
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 582
    .local v1, "tempRouteCache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 583
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->calculateAidRouteSize(Ljava/util/Hashtable;)I

    move-result v0

    .line 584
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidCacheTable:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 585
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$DefaultAidRouteResolveCache;->aidCacheSize:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    const-string v2, "AidRoutingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDefaultAidRouteCache Routing table size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return v0
.end method

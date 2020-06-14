.class public Lcom/android/nfc/cardemulation/RegisteredAidCache;
.super Ljava/lang/Object;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    }
.end annotation


# static fields
.field static final AID_ROUTE_QUAL_PREFIX:I = 0x10

.field static final AID_ROUTE_QUAL_SUBSET:I = 0x20

.field static final DBG:Z

.field static final POWER_STATE_ALL:I = 0x7

.field static final POWER_STATE_BATTERY_OFF:I = 0x4

.field static final POWER_STATE_SWITCH_OFF:I = 0x2

.field static final POWER_STATE_SWITCH_ON:I = 0x1

.field static final SCREEN_STATE_OFF_LOCKED:I = 0x20

.field static final SCREEN_STATE_OFF_UNLOCKED:I = 0x8

.field static final SCREEN_STATE_ON_LOCKED:I = 0x10

.field static final TAG:Ljava/lang/String; = "RegisteredAidCache"


# instance fields
.field final EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

.field final mAidCache:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mAidServices:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mLock:Ljava/lang/Object;

.field mNfcEnabled:Z

.field mPreferredForegroundService:Landroid/content/ComponentName;

.field mPreferredPaymentService:Landroid/content/ComponentName;

.field final mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field mSupportsPrefixes:Z

.field mSupportsSubset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const-string v0, "persist.nfc.ce_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    .line 145
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 150
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsSubset:Z

    .line 159
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    .line 160
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getAidRoutingCache()Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 162
    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 163
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->supportsAidPrefixRouting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    .line 164
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->supportsAidSubsetRouting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsSubset:Z

    .line 165
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    const-string v1, "RegisteredAidCache"

    if-eqz v0, :cond_0

    .line 166
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Controller supports AID prefix routing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsSubset:Z

    if-eqz v0, :cond_1

    .line 169
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "Controller supports AID subset routing"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    return-void
.end method

.method static isExact(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aid"    # Ljava/lang/String;

    .line 504
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isPrefix(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aid"    # Ljava/lang/String;

    .line 508
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isSubset(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aid"    # Ljava/lang/String;

    .line 512
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1013
    const-string v0, "    AID cache entries: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1015
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    goto :goto_0

    .line 1017
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Service preferred by foreground app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Preferred payment service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/nfc/cardemulation/AidRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 994
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 995
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 996
    .local v1, "category":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 997
    .local v2, "defaultServiceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" (category: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    if-eqz v2, :cond_0

    .line 999
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1001
    .local v3, "defaultComponent":Landroid/content/ComponentName;
    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 1002
    .local v6, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    const-string v7, "        "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1004
    const-string v7, "*DEFAULT* "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " (Description: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1006
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    goto :goto_1

    .line 1009
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .locals 8
    .param p1, "prefixAid"    # Ljava/lang/String;

    .line 563
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 564
    .local v0, "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, "plainAid":Ljava/lang/String;
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v3, "%-32s"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x46

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 566
    .local v3, "lastAidWithPrefix":Ljava/lang/String;
    sget-boolean v4, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    const-string v5, "RegisteredAidCache"

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finding AIDs in range ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 569
    invoke-virtual {v4, v1, v2, v3, v2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    .line 571
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 572
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 573
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v6, :cond_1

    .line 574
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " conflicts with prefix;  adding handling services for conflict resolution."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_1
    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->services:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 577
    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->aids:Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 579
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    :cond_2
    goto :goto_0

    .line 580
    :cond_3
    return-object v0
.end method

.method findConflictsForSubsetAidLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .locals 13
    .param p1, "subsetAid"    # Ljava/lang/String;

    .line 584
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 586
    .local v0, "subsetConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, "lastPlainAid":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 589
    .local v3, "plainSubsetAid":Ljava/lang/String;
    const/16 v4, 0xa

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 590
    .local v4, "firstAid":Ljava/lang/String;
    sget-boolean v5, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    const-string v6, "RegisteredAidCache"

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finding AIDs in range ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    iput-object v5, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    .line 594
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 595
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 596
    .local v8, "aid":Ljava/lang/String;
    move-object v9, v8

    .line 597
    .local v9, "plainAid":Ljava/lang/String;
    invoke-static {v8}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v8}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 598
    :cond_1
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v2, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 599
    :cond_2
    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 600
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    invoke-interface {v10, v11, v12}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    .end local v8    # "aid":Ljava/lang/String;
    .end local v9    # "plainAid":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 603
    :cond_4
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 604
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 605
    sget-boolean v7, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v7, :cond_5

    .line 606
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " conflicts with subset AID;  adding handling services for conflict resolution."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_5
    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->services:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 609
    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->aids:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 611
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    :cond_6
    goto :goto_1

    .line 612
    :cond_7
    return-object v0
.end method

.method findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;"
        }
    .end annotation

    .line 338
    .local p1, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 340
    .local v0, "defaultServiceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 341
    .local v2, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    iget-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    .line 342
    const-string v4, "payment"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 343
    .local v3, "serviceClaimsPaymentAid":Z
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 344
    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    goto :goto_1

    .line 345
    :cond_0
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 347
    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 349
    .end local v2    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v3    # "serviceClaimsPaymentAid":Z
    :cond_1
    :goto_1
    goto :goto_0

    .line 350
    :cond_2
    return-object v0
.end method

.method findPrefixConflictForSubsetAid(Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;
    .locals 12
    .param p1, "subsetAid"    # Ljava/lang/String;
    .param p3, "priorityRootAid"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;Z)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;"
        }
    .end annotation

    .line 528
    .local p2, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v0, "prefixAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 536
    .local v1, "minPrefix":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 537
    .local v2, "plainSubsetAid":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 538
    .local v6, "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getPrefixAids()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 540
    .local v8, "prefixAid":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 541
    .local v9, "plainPrefix":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 542
    if-eqz p3, :cond_1

    .line 543
    invoke-virtual {v6, v8}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "payment"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 544
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 545
    :cond_0
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 547
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 550
    .end local v8    # "prefixAid":Ljava/lang/String;
    .end local v9    # "plainPrefix":Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_1

    .line 551
    .end local v6    # "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_3
    goto :goto_0

    .line 552
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 553
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    .line 554
    :cond_5
    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    invoke-direct {v5, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 555
    .local v5, "resolvedPrefix":Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;
    iput-object v1, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    .line 556
    if-eqz v1, :cond_6

    .line 557
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 558
    iput-boolean v3, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->matchingSubset:Z

    .line 559
    :cond_6
    return-object v5
.end method

.method generateAidCacheLocked()V
    .locals 20

    .line 616
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 618
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 621
    .local v1, "aidCache":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    new-instance v2, Ljava/util/PriorityQueue;

    iget-object v3, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 622
    .local v2, "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 623
    :goto_0
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    const-string v4, " were resolved."

    const-string v5, "AIDs: "

    const-string v6, "AID "

    const-string v8, "RegisteredAidCache"

    if-nez v3, :cond_10

    .line 624
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v3, "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 633
    .local v10, "aidToResolve":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 634
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 636
    :cond_0
    sget-boolean v11, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "generateAidCacheLocked: starting with aid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_1
    invoke-static {v10}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 643
    new-instance v11, Ljava/util/ArrayList;

    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 644
    invoke-virtual {v12, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Collection;

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 647
    .local v11, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v0, v10}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;

    move-result-object v12

    .line 650
    .local v12, "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    iget-object v13, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->services:Ljava/util/ArrayList;

    invoke-virtual {v0, v11, v13}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v13

    .line 652
    .local v13, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    invoke-virtual {v1, v10, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    iget-object v14, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    if-eqz v14, :cond_7

    .line 657
    iget-object v7, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 658
    iget-object v7, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v7}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getSubsetAids()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 659
    .local v14, "aid":Ljava/lang/String;
    iget-object v15, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v15, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 660
    iget-object v15, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v15, v14}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v9, "payment"

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 661
    invoke-virtual {v9}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget-object v15, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v9, v15}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v16, v7

    goto :goto_3

    .line 662
    :cond_3
    :goto_2
    iget-object v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v9, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    const/4 v15, 0x0

    invoke-virtual {v0, v9, v15}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v9

    .line 663
    .local v9, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    invoke-virtual {v1, v14, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-boolean v15, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v15, :cond_4

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v7

    const-string v7, " shared with prefix; adding subset ."

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object/from16 v16, v7

    goto :goto_3

    .line 659
    .end local v9    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_5
    move-object/from16 v16, v7

    .line 668
    .end local v14    # "aid":Ljava/lang/String;
    :goto_3
    move-object/from16 v7, v16

    goto :goto_1

    :cond_6
    goto/16 :goto_7

    .line 669
    :cond_7
    iget-object v9, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_b

    .line 673
    const/4 v9, 0x0

    .line 675
    .local v9, "foundChildService":Z
    iget-object v14, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v14}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 676
    .local v15, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 677
    sget-boolean v7, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v7, :cond_8

    .line 678
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v11

    .end local v11    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .local v17, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " shared with prefix;  adding all handling services."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 677
    .end local v17    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v11    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :cond_8
    move-object/from16 v17, v11

    .line 680
    .end local v11    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v17    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :goto_5
    nop

    .line 681
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    .line 680
    const/4 v11, 0x0

    invoke-virtual {v0, v7, v11}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v7

    .line 686
    .local v7, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iput-boolean v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    .line 687
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    iget-object v11, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    const/16 v16, 0x1

    xor-int/lit8 v11, v11, 0x1

    or-int/2addr v9, v11

    goto :goto_6

    .line 676
    .end local v7    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v17    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v11    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :cond_9
    move-object/from16 v17, v11

    .line 691
    .end local v11    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    .restart local v17    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :goto_6
    move-object/from16 v11, v17

    goto :goto_4

    .line 694
    .end local v17    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v11    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :cond_a
    move-object/from16 v17, v11

    .end local v11    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v17    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    if-nez v9, :cond_c

    iget-object v6, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_c

    .line 695
    iget-object v6, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    iput-object v6, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    goto :goto_7

    .line 669
    .end local v9    # "foundChildService":Z
    .end local v17    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v11    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :cond_b
    move-object/from16 v17, v11

    .line 701
    .end local v11    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v12    # "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .end local v13    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_c
    :goto_7
    goto :goto_8

    .line 705
    :cond_d
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v6, :cond_e

    const-string v6, "Exact AID, resolving."

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_e
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 707
    invoke-virtual {v7, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 708
    .local v6, "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v7

    invoke-virtual {v1, v10, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    .end local v6    # "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :goto_8
    sget-boolean v6, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_f
    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->removeAll(Ljava/util/Collection;)Z

    .line 715
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 716
    .end local v3    # "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "aidToResolve":Ljava/lang/String;
    goto/16 :goto_0

    .line 717
    :cond_10
    new-instance v3, Ljava/util/PriorityQueue;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v7

    const/4 v9, 0x1

    invoke-direct {v3, v9, v7}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 718
    .local v3, "reversedQueue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 719
    :goto_9
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_21

    .line 720
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 722
    .local v7, "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 723
    .local v9, "aidToResolve":Ljava/lang/String;
    invoke-static {v9}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 724
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "#"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 725
    .local v10, "matchingSubset":Ljava/lang/String;
    sget-boolean v12, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v12, :cond_11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "matching subset"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_11
    invoke-virtual {v3, v10}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 727
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v9, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 729
    .end local v10    # "matchingSubset":Ljava/lang/String;
    :cond_12
    invoke-static {v9}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 730
    sget-boolean v10, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v10, :cond_13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "subset resolving aidToResolve  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_13
    new-instance v10, Ljava/util/ArrayList;

    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 732
    invoke-virtual {v11, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 735
    .local v10, "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v0, v9}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findConflictsForSubsetAidLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;

    move-result-object v11

    .line 738
    .local v11, "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    iget-object v12, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->services:Ljava/util/ArrayList;

    invoke-virtual {v0, v10, v12}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v12

    .line 740
    .local v12, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v13, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v13, v9, v12}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    iget-object v13, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    if-eqz v13, :cond_16

    .line 745
    iget-object v13, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    if-eqz v13, :cond_15

    iget-object v13, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v13, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    if-eqz v13, :cond_15

    iget-object v13, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-boolean v13, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->matchingSubset:Z

    if-nez v13, :cond_15

    .line 747
    sget-boolean v13, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v13, :cond_14

    .line 748
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AID default "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v14, v14, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " prefix AID shared with dsubset root;  adding prefix aid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_14
    iget-object v13, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v14, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v14, v14, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    .line 752
    invoke-virtual {v13, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    .line 751
    const/4 v14, 0x0

    invoke-virtual {v0, v13, v14}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v13

    .line 753
    .local v13, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    iget-object v15, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v15, v15, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    invoke-virtual {v14, v15, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .end local v13    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_15
    iget-object v13, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v17, v2

    const/4 v10, 0x1

    goto/16 :goto_d

    .line 756
    :cond_16
    iget-object v13, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1c

    .line 760
    const/4 v13, 0x0

    .line 762
    .local v13, "foundChildService":Z
    iget-object v14, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v14}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 764
    .restart local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v2

    .end local v2    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .local v17, "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    move-object/from16 v2, v16

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 765
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_17

    .line 766
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v18, v10

    .end local v10    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .local v18, "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " shared with subset root;  adding all handling services."

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 765
    .end local v18    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v10    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :cond_17
    move-object/from16 v18, v10

    .line 768
    .end local v10    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v18    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :goto_b
    nop

    .line 769
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 768
    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 774
    .local v2, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iput-boolean v10, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    .line 775
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v11

    .end local v11    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .local v19, "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    iget-object v10, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    const/4 v11, 0x1

    xor-int/2addr v10, v11

    or-int/2addr v10, v13

    move v13, v10

    .end local v13    # "foundChildService":Z
    .local v10, "foundChildService":Z
    goto :goto_c

    .line 764
    .end local v2    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v18    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v19    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .local v10, "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v11    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .restart local v13    # "foundChildService":Z
    :cond_18
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 779
    .end local v10    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v11    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .end local v15    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    .restart local v18    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v19    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    :goto_c
    move-object/from16 v2, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    goto :goto_a

    .line 780
    .end local v17    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .end local v18    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v19    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .local v2, "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .restart local v10    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v11    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    :cond_19
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .end local v2    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .end local v10    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v11    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .restart local v17    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .restart local v18    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v19    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    iget-object v2, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    if-eqz v2, :cond_1a

    iget-object v2, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-boolean v2, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->matchingSubset:Z

    if-nez v2, :cond_1a

    .line 783
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v10, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v10, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    .line 784
    invoke-virtual {v2, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 783
    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 785
    .local v2, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    iget-object v11, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v11, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    invoke-virtual {v10, v11, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    sget-boolean v10, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v10, :cond_1a

    .line 787
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v11, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " prefix AID shared with subset root;  adding prefix aid"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    .end local v2    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_1a
    if-nez v13, :cond_1b

    iget-object v2, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_1d

    .line 794
    iget-object v2, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    iput-object v2, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    goto :goto_d

    .line 793
    :cond_1b
    const/4 v10, 0x1

    goto :goto_d

    .line 756
    .end local v13    # "foundChildService":Z
    .end local v17    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .end local v18    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v19    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .local v2, "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .restart local v10    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .restart local v11    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    :cond_1c
    move-object/from16 v17, v2

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    const/4 v10, 0x1

    .line 800
    .end local v2    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .end local v10    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v11    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .end local v12    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .restart local v17    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    :cond_1d
    :goto_d
    goto :goto_e

    .line 804
    .end local v17    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .restart local v2    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    :cond_1e
    move-object/from16 v17, v2

    const/4 v10, 0x1

    .end local v2    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .restart local v17    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exact or Prefix AID."

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_1f
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v1, v9}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-virtual {v2, v9, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    :goto_e
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_20
    invoke-virtual {v3, v7}, Ljava/util/PriorityQueue;->removeAll(Ljava/util/Collection;)Z

    .line 812
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 813
    .end local v7    # "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "aidToResolve":Ljava/lang/String;
    move-object/from16 v2, v17

    goto/16 :goto_9

    .line 815
    .end local v17    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .restart local v2    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    :cond_21
    move-object/from16 v17, v2

    .end local v2    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    .restart local v17    # "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked(Z)V

    .line 816
    return-void
.end method

.method generateServiceMapLocked(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 428
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 429
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 430
    .local v2, "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    sget-boolean v3, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    const-string v4, "RegisteredAidCache"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateServiceMap component: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getPrefixAids()Ljava/util/List;

    move-result-object v3

    .line 432
    .local v3, "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getSubsetAids()Ljava/util/List;

    move-result-object v5

    .line 434
    .local v5, "subSetAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 435
    .local v7, "aid":Ljava/lang/String;
    invoke-static {v7}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 436
    sget-boolean v8, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is not valid."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 439
    :cond_2
    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, " ignored on device that doesn\'t support it."

    if-eqz v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v8

    if-nez v8, :cond_3

    .line 440
    sget-boolean v8, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Prefix AID "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 442
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v8

    const-string v10, " is already registered"

    const-string v11, "Ignoring exact AID "

    const/4 v12, 0x0

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8

    invoke-static {v7}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isExact(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 444
    const/4 v8, 0x0

    .line 445
    .local v8, "foundPrefix":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 446
    .local v13, "prefixAid":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 447
    .local v14, "prefix":Ljava/lang/String;
    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 448
    sget-boolean v9, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " because prefix AID "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_4
    const/4 v8, 0x1

    .line 451
    goto :goto_3

    .line 453
    .end local v13    # "prefixAid":Ljava/lang/String;
    .end local v14    # "prefix":Ljava/lang/String;
    :cond_5
    goto :goto_2

    .line 454
    :cond_6
    :goto_3
    if-eqz v8, :cond_7

    .line 455
    goto/16 :goto_1

    .line 457
    .end local v8    # "foundPrefix":Z
    :cond_7
    goto/16 :goto_6

    :cond_8
    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidSubsetRegistration()Z

    move-result v8

    if-nez v8, :cond_9

    .line 458
    sget-boolean v8, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Subset AID "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 460
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidSubsetRegistration()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_d

    invoke-static {v7}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isExact(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 462
    const/4 v8, 0x0

    .line 463
    .local v8, "foundSubset":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 464
    .local v13, "subsetAid":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 465
    .local v14, "plainSubset":Ljava/lang/String;
    invoke-virtual {v14, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 466
    sget-boolean v9, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " because subset AID "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_a
    const/4 v8, 0x1

    .line 469
    goto :goto_5

    .line 471
    .end local v13    # "subsetAid":Ljava/lang/String;
    .end local v14    # "plainSubset":Ljava/lang/String;
    :cond_b
    goto :goto_4

    .line 472
    :cond_c
    :goto_5
    if-eqz v8, :cond_d

    .line 473
    goto/16 :goto_1

    .line 477
    .end local v8    # "foundSubset":Z
    :cond_d
    :goto_6
    new-instance v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    invoke-direct {v8, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 478
    .local v8, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 479
    iput-object v2, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 480
    invoke-virtual {v2, v7}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    .line 481
    iget-object v9, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    const-string v10, "other"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 482
    invoke-virtual {v2, v10}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getServiceState(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_e

    .line 483
    invoke-virtual {v2, v10}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getServiceState(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_f

    .line 486
    :cond_e
    sget-boolean v9, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "ignoring other category aid because service category is disabled"

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 489
    :cond_f
    iget-object v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 490
    iget-object v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v10, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 491
    invoke-virtual {v9, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 492
    .local v9, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    .end local v9    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    goto :goto_7

    .line 494
    :cond_10
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .restart local v9    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v11, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .end local v7    # "aid":Ljava/lang/String;
    .end local v8    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v9    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :goto_7
    goto/16 :goto_1

    .line 500
    .end local v2    # "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    .end local v3    # "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "subSetAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_11
    goto/16 :goto_0

    .line 501
    :cond_12
    return-void
.end method

.method public getPreferredPaymentService()Landroid/content/ComponentName;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;

    .line 241
    invoke-virtual {p0, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v0

    .line 242
    .local v0, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    .line 243
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 247
    :cond_0
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    if-eqz v2, :cond_1

    .line 248
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 249
    :cond_1
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 250
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 253
    :cond_2
    return v1

    .line 244
    :cond_3
    :goto_0
    return v1
.end method

.method public onNfcDisabled()V
    .locals 2

    .line 974
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 976
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 977
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 978
    return-void

    .line 976
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onNfcEnabled()V
    .locals 2

    .line 981
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 982
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 983
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked(Z)V

    .line 984
    monitor-exit v0

    .line 985
    return-void

    .line 984
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 958
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredAidCache"

    const-string v1, "Preferred foreground service changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 960
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 961
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 962
    monitor-exit v0

    .line 963
    return-void

    .line 962
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "service"    # Landroid/content/ComponentName;

    .line 950
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredAidCache"

    const-string v1, "Preferred payment service changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 952
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 953
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 954
    monitor-exit v0

    .line 955
    return-void

    .line 954
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRoutingTableChanged()V
    .locals 2

    .line 966
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_0

    .line 967
    const-string v0, "RegisteredAidCache"

    const-string v1, "onRoutingTableChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 969
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 970
    monitor-exit v0

    .line 971
    return-void

    .line 970
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSecureNfcToggled()V
    .locals 2

    .line 988
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 989
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked(Z)V

    .line 990
    monitor-exit v0

    .line 991
    return-void

    .line 990
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 937
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredAidCache"

    const-string v1, "onServicesUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 939
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 941
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateServiceMapLocked(Ljava/util/List;)V

    .line 942
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    goto :goto_0

    .line 944
    :cond_1
    sget-boolean v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "RegisteredAidCache"

    const-string v2, "Ignoring update because it\'s not for the current user."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_2
    :goto_0
    monitor-exit v0

    .line 947
    return-void

    .line 946
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .locals 16
    .param p1, "aid"    # Ljava/lang/String;

    .line 174
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "RegisteredAidCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAid: resolving AID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 177
    const-string v0, "RegisteredAidCache"

    const-string v4, "AID selected with fewer than 5 bytes."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    monitor-exit v3

    return-object v0

    .line 180
    :cond_1
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 181
    .local v0, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-boolean v5, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    if-nez v5, :cond_3

    iget-boolean v5, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsSubset:Z

    if-eqz v5, :cond_2

    goto :goto_0

    .line 221
    :cond_2
    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v4, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-object v0, v4

    goto/16 :goto_5

    .line 185
    :cond_3
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, "shortestAidMatch":Ljava/lang/String;
    const-string v6, "%-32s"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x20

    const/16 v9, 0x46

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "longestAidMatch":Ljava/lang/String;
    sget-boolean v8, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v8, :cond_4

    const-string v8, "RegisteredAidCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Finding AID registrations in range ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_4
    iget-object v8, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    .line 192
    invoke-virtual {v8, v4, v7, v6, v7}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v8

    .line 194
    .local v8, "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    const-string v9, "other"

    iput-object v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 195
    invoke-interface {v8}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 196
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v11

    .line 197
    .local v11, "isPrefix":Z
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v12

    .line 198
    .local v12, "isSubset":Z
    if-nez v11, :cond_6

    if-eqz v12, :cond_5

    goto :goto_2

    .line 199
    :cond_5
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_3

    .line 198
    :cond_6
    :goto_2
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 199
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v7

    .line 198
    invoke-virtual {v13, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 199
    :goto_3
    nop

    .line 200
    .local v13, "entryAid":Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    if-eqz v11, :cond_7

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    if-eqz v12, :cond_d

    .line 201
    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 202
    :cond_8
    sget-boolean v14, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v14, :cond_9

    const-string v14, "RegisteredAidCache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAid: AID "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " matches."

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_9
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 204
    .local v5, "entryResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v14, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    if-eqz v14, :cond_b

    .line 205
    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    if-eqz v14, :cond_a

    .line 208
    const-string v14, "RegisteredAidCache"

    const-string v15, "Different defaults for conflicting AIDs!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_a
    iget-object v14, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    iput-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 211
    iget-object v14, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    iput-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 213
    :cond_b
    iget-object v14, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 214
    .local v15, "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 215
    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v15    # "serviceInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_c
    const/4 v7, 0x1

    goto :goto_4

    .line 219
    .end local v5    # "entryResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v11    # "isPrefix":Z
    .end local v12    # "isSubset":Z
    .end local v13    # "entryAid":Ljava/lang/String;
    :cond_d
    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 220
    .end local v4    # "shortestAidMatch":Ljava/lang/String;
    .end local v6    # "longestAidMatch":Ljava/lang/String;
    .end local v8    # "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    :cond_e
    nop

    .line 223
    :goto_5
    sget-boolean v4, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v4, :cond_f

    const-string v4, "RegisteredAidCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolved to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_f
    monitor-exit v3

    return-object v0

    .line 225
    .end local v0    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method resolveAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;"
        }
    .end annotation

    .line 356
    .local p1, "aidServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .local p2, "conflictingServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    move-result-object v0

    .line 359
    .local v0, "aidDefaultInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    move-result-object v1

    .line 366
    .local v1, "conflictingDefaultInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    const-string v3, "Prefix AID service "

    const/4 v4, 0x1

    const-string v5, "RegisteredAidCache"

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    .line 367
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 368
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has foreground preference, ignoring conflicting AIDs."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 367
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    invoke-virtual {p0, p1, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 374
    .local v2, "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$1;

    invoke-direct {v5, p0, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache$1;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;)V

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findPrefixConflictForSubsetAid(Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    move-result-object v3

    iput-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    .line 378
    :cond_1
    return-object v2

    .line 379
    .end local v2    # "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_2
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_7

    .line 381
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_4

    .line 383
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "One of the conflicting AID registrations is foreground preferred, ignoring prefix."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_3
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    return-object v2

    .line 388
    :cond_4
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 389
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is payment default, ignoring conflicting AIDs."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_5
    invoke-virtual {p0, p1, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 393
    .restart local v2    # "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 394
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$2;

    invoke-direct {v5, p0, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache$2;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;)V

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findPrefixConflictForSubsetAid(Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    move-result-object v3

    iput-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    .line 397
    :cond_6
    return-object v2

    .line 400
    .end local v2    # "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_7
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-nez v2, :cond_d

    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_8

    goto :goto_2

    .line 408
    :cond_8
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "No service has preference, adding all."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_9
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 412
    .restart local v2    # "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 413
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .local v3, "apduServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 415
    .local v5, "serviceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    iget-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    .end local v5    # "serviceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 417
    .restart local v5    # "serviceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    iget-object v7, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 418
    .end local v5    # "serviceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    :cond_b
    nop

    .line 419
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v6}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findPrefixConflictForSubsetAid(Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    move-result-object v4

    iput-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    .line 421
    .end local v3    # "apduServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NfcApduServiceInfo;>;"
    :cond_c
    return-object v2

    .line 402
    .end local v2    # "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_d
    :goto_2
    sget-boolean v2, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v2, :cond_e

    const-string v2, "One of the conflicting AID registrations is either payment default or foreground preferred, ignoring prefix."

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_e
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    return-object v2
.end method

.method resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .locals 10
    .param p2, "makeSingleServiceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;",
            ">;Z)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;"
        }
    .end annotation

    .line 271
    .local p1, "conflictingServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    const-string v0, "RegisteredAidCache"

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 275
    :cond_0
    new-instance v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 276
    .local v1, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const-string v2, "other"

    iput-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, "matchedForeground":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    const/4 v3, 0x0

    .line 280
    .local v3, "matchedPayment":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 281
    .local v5, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    iget-object v6, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    .line 282
    const-string v7, "payment"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 283
    .local v6, "serviceClaimsPaymentAid":Z
    iget-object v8, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 284
    iget-object v8, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v9, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    if-eqz v6, :cond_1

    .line 286
    iput-object v7, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 288
    :cond_1
    iget-object v2, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    goto :goto_1

    .line 289
    :cond_2
    iget-object v8, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iget-object v9, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v6, :cond_3

    .line 291
    iget-object v8, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v9, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    iput-object v7, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 293
    iget-object v3, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    goto :goto_1

    .line 295
    :cond_3
    if-eqz v6, :cond_4

    .line 299
    sget-boolean v7, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: (Ignoring handling service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 300
    invoke-virtual {v8}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because it\'s not the payment default.)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 299
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 303
    :cond_4
    iget-object v7, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v8, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v5    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v6    # "serviceClaimsPaymentAid":Z
    :cond_5
    :goto_1
    goto :goto_0

    .line 307
    :cond_6
    if-eqz v2, :cond_8

    .line 310
    sget-boolean v4, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAidLocked: DECISION: routing to foreground preferred "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_7
    iput-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    goto :goto_2

    .line 313
    :cond_8
    if-eqz v3, :cond_a

    .line 316
    sget-boolean v4, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAidLocked: DECISION: routing to payment default default "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_9
    iput-object v3, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    goto :goto_2

    .line 320
    :cond_a
    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    if-eqz p2, :cond_c

    .line 321
    sget-boolean v4, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resolveAidLocked: DECISION: making single handling service "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    .line 322
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " default."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 321
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_b
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    iput-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    goto :goto_2

    .line 326
    :cond_c
    sget-boolean v4, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v4, :cond_d

    const-string v4, "resolveAidLocked: DECISION: routing to all matching services"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_d
    :goto_2
    return-object v1

    .line 272
    .end local v1    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v2    # "matchedForeground":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    .end local v3    # "matchedPayment":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_e
    :goto_3
    const-string v1, "resolveAidConflict: No services passed in."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x0

    return-object v0
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    return v0
.end method

.method public supportsAidSubsetRegistration()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsSubset:Z

    return v0
.end method

.method updateRoutingLocked(Z)V
    .locals 17
    .param p1, "force"    # Z

    .line 819
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    const-string v2, "RegisteredAidCache"

    if-nez v1, :cond_1

    .line 820
    sget-boolean v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Not updating routing table because NFC is off."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_0
    return-void

    .line 823
    :cond_1
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 824
    .local v1, "routingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;>;"
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->getGsmaPwrState()I

    move-result v3

    .line 827
    .local v3, "mGsmaPwrState":I
    iget-object v4, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 828
    .local v5, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 829
    .local v6, "aid":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 830
    .local v7, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-boolean v8, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    if-nez v8, :cond_3

    .line 831
    sget-boolean v8, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not routing AID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " on request."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 834
    :cond_3
    new-instance v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    iget-object v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v8, v9}, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;-><init>(Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    .line 835
    .local v8, "aidType":Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;
    const-string v9, "#"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 836
    iget v9, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->aidInfo:I

    or-int/lit8 v9, v9, 0x20

    iput v9, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->aidInfo:I

    .line 838
    :cond_4
    const-string v9, "*"

    invoke-virtual {v6, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    if-eqz v9, :cond_6

    iget-object v9, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-boolean v9, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->matchingSubset:Z

    if-eqz v9, :cond_6

    .line 840
    :cond_5
    iget v9, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->aidInfo:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->aidInfo:I

    .line 842
    :cond_6
    iget-object v9, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_7

    goto/16 :goto_8

    .line 844
    :cond_7
    iget-object v9, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    const-string v10, " Setting GSMA power state"

    const/4 v11, 0x1

    if-eqz v9, :cond_10

    .line 847
    iget-object v9, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v9}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/NfcApduServiceInfo$ESeInfo;

    move-result-object v9

    .line 848
    .local v9, "seInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo$ESeInfo;
    iget-object v12, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v12}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->isOnHost()Z

    move-result v12

    iput-boolean v12, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->isOnHost:Z

    .line 849
    iget-boolean v12, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->isOnHost:Z

    if-nez v12, :cond_8

    .line 850
    iget-object v12, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 851
    invoke-virtual {v12}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->offHostSE:Ljava/lang/String;

    .line 853
    :cond_8
    invoke-virtual {v9}, Landroid/nfc/cardemulation/NfcApduServiceInfo$ESeInfo;->getPowerState()I

    move-result v12

    and-int/lit8 v12, v12, 0x7

    .line 854
    .local v12, "powerstate":I
    const/4 v13, 0x0

    .line 855
    .local v13, "screenstate":I
    if-nez v12, :cond_a

    .line 856
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/nfc/NfcService;->GetDefaultMifateCLTRouteEntry()I

    move-result v14

    and-int/lit8 v12, v14, 0x3f

    .line 857
    if-lez v3, :cond_a

    .line 859
    iget-boolean v14, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->isOnHost:Z

    if-eqz v14, :cond_9

    .line 861
    and-int/lit8 v12, v3, 0x39

    goto :goto_1

    .line 864
    :cond_9
    move v12, v3

    .line 866
    :goto_1
    sget-boolean v14, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v14, :cond_a

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_a
    iget-object v10, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NfcApduServiceInfo;

    invoke-virtual {v10}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->isOnHost()Z

    move-result v10

    .line 871
    .local v10, "isOnHost":Z
    and-int/lit8 v14, v12, 0x1

    if-ne v14, v11, :cond_d

    .line 873
    or-int/lit8 v11, v13, 0x10

    .line 874
    .end local v13    # "screenstate":I
    .local v11, "screenstate":I
    if-nez v10, :cond_c

    .line 875
    sget-boolean v13, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v13, :cond_b

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " set screen off enable for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    :cond_b
    or-int/lit8 v11, v11, 0x28

    move v13, v11

    goto :goto_2

    .line 874
    :cond_c
    move v13, v11

    .line 878
    .end local v11    # "screenstate":I
    .restart local v13    # "screenstate":I
    :goto_2
    if-nez v3, :cond_d

    .line 879
    or-int/2addr v12, v13

    .line 882
    :cond_d
    if-eqz v10, :cond_e

    const/4 v11, 0x0

    goto :goto_3

    :cond_e
    invoke-virtual {v9}, Landroid/nfc/cardemulation/NfcApduServiceInfo$ESeInfo;->getSeId()I

    move-result v11

    .line 883
    .local v11, "route":I
    :goto_3
    sget-boolean v14, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v14, :cond_f

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " AID power state"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "route"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_f
    iput v11, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->route:I

    .line 885
    iput v12, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    .line 886
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 887
    .end local v9    # "seInfo":Landroid/nfc/cardemulation/NfcApduServiceInfo$ESeInfo;
    .end local v10    # "isOnHost":Z
    .end local v11    # "route":I
    .end local v12    # "powerstate":I
    .end local v13    # "screenstate":I
    goto/16 :goto_8

    :cond_10
    iget-object v9, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/16 v12, 0x11

    const-string v13, " "

    if-ne v9, v11, :cond_13

    .line 890
    iput-boolean v11, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->isOnHost:Z

    .line 891
    iput v12, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    .line 892
    sget-boolean v9, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v9, :cond_11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " AID power state 2"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_11
    if-lez v3, :cond_12

    .line 895
    and-int/lit8 v9, v3, 0x39

    iput v9, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    .line 896
    sget-boolean v9, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v9, :cond_12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_12
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 899
    :cond_13
    iget-object v9, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v11, :cond_1a

    .line 902
    const/4 v9, 0x0

    .line 903
    .local v9, "onHost":Z
    const/4 v11, 0x0

    .line 904
    .local v11, "offHostSE":Ljava/lang/String;
    iget-object v14, v7, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/nfc/cardemulation/NfcApduServiceInfo;

    .line 907
    .local v15, "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->isOnHost()Z

    move-result v16

    or-int v9, v9, v16

    .line 908
    if-nez v9, :cond_15

    .line 909
    if-nez v11, :cond_14

    .line 910
    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    .line 911
    :cond_14
    nop

    .line 912
    invoke-virtual {v15}, Landroid/nfc/cardemulation/NfcApduServiceInfo;->getOffHostSecureElement()Ljava/lang/String;

    move-result-object v12

    .line 911
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_15

    .line 915
    const/4 v11, 0x0

    .line 916
    const/4 v9, 0x1

    .line 917
    goto :goto_6

    .line 920
    .end local v15    # "service":Landroid/nfc/cardemulation/NfcApduServiceInfo;
    :cond_15
    :goto_5
    const/16 v12, 0x11

    goto :goto_4

    .line 921
    :cond_16
    :goto_6
    iput-boolean v9, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->isOnHost:Z

    .line 922
    if-eqz v9, :cond_17

    const/4 v12, 0x0

    goto :goto_7

    :cond_17
    move-object v12, v11

    :goto_7
    iput-object v12, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->offHostSE:Ljava/lang/String;

    .line 923
    const/16 v12, 0x11

    iput v12, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    .line 924
    if-lez v3, :cond_18

    .line 926
    and-int/lit8 v12, v3, 0x39

    iput v12, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    .line 927
    sget-boolean v12, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v12, :cond_18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_18
    sget-boolean v10, Lcom/android/nfc/cardemulation/RegisteredAidCache;->DBG:Z

    if-eqz v10, :cond_19

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " AID power state 3"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_19
    invoke-virtual {v1, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    .end local v5    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v6    # "aid":Ljava/lang/String;
    .end local v7    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v8    # "aidType":Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;
    .end local v9    # "onHost":Z
    .end local v11    # "offHostSE":Ljava/lang/String;
    :cond_1a
    :goto_8
    goto/16 :goto_0

    .line 933
    :cond_1b
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    move/from16 v4, p1

    invoke-virtual {v2, v1, v4}, Lcom/android/nfc/cardemulation/AidRoutingManager;->configureRouting(Ljava/util/HashMap;Z)Z

    .line 934
    return-void
.end method

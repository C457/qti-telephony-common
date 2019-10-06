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
        Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;,
        Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    }
.end annotation


# static fields
.field static final AID_ROUTE_QUAL_PREFIX:I = 0x10

.field static final AID_ROUTE_QUAL_SUBSET:I = 0x20

.field static final DBG:Z = true

.field static final NON_PAYMENT_CHANGED:I = 0x6

.field static final PAYMENT_CHANGED:I = 0x5

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

.field mHostAIDPowerState:I

.field final mLock:Ljava/lang/Object;

.field mNfcEnabled:Z

.field mPreferredForegroundService:Landroid/content/ComponentName;

.field mPreferredPaymentService:Landroid/content/ComponentName;

.field mPreviousPreferredPaymentService:Landroid/content/ComponentName;

.field final mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field mSupportsPrefixes:Z

.field mSupportsSubset:Z

.field final mapduPatternList:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidRoutingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 80
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    .line 81
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mapduPatternList:Ljava/util/TreeMap;

    .line 159
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 164
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 171
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    .line 172
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsSubset:Z

    .line 175
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 178
    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 179
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->supportsAidPrefixRouting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    .line 180
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->supportsAidSubsetRouting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsSubset:Z

    .line 181
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "RegisteredAidCache"

    const-string v1, "Controller supports AID prefix routing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsSubset:Z

    if-eqz v0, :cond_1

    .line 185
    const-string v0, "RegisteredAidCache"

    const-string v1, "Controller supports AID subset routing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mHostAIDPowerState:I

    .line 188
    return-void
.end method

.method static isExact(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aid"    # Ljava/lang/String;

    .line 541
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

    .line 545
    const-string v0, "*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isSubset(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aid"    # Ljava/lang/String;

    .line 549
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addApduPatternEntries()V
    .locals 7

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 969
    .local v0, "apduPatternRouting":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mapduPatternList:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 970
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;>;"
    new-instance v3, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v3, v4}, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;-><init>(Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    .line 971
    .local v3, "apduEntry":Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 972
    .local v4, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-virtual {v4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;

    move-result-object v5

    .line 974
    .local v5, "seInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;->apdu:Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;->getreferenceData()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;->referenceData:Ljava/lang/String;

    .line 975
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;->apdu:Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;->getMask()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;->mask:Ljava/lang/String;

    .line 976
    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;->getSeId()I

    move-result v6

    iput v6, v3, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;->route:I

    .line 977
    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;->getPowerState()I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    iput v6, v3, Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;->powerState:I

    .line 978
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;>;"
    .end local v3    # "apduEntry":Lcom/android/nfc/cardemulation/AidRoutingManager$ApduPatternResolveInfo;
    .end local v4    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v5    # "seInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;
    goto :goto_0

    .line 980
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v1, v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->configureApduPatternRouting(Ljava/util/List;)Z

    .line 981
    return-void
.end method

.method public clearRoutingTable()V
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 1048
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1070
    const-string v0, "    AID cache entries: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
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

    .line 1072
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    goto :goto_0

    .line 1074
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

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Preferred payment service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/AidRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1078
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    return-void
.end method

.method dumpEntry(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 8
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

    .line 1051
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1052
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 1053
    .local v1, "category":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 1054
    .local v2, "defaultServiceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
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

    .line 1055
    if-eqz v2, :cond_0

    .line 1056
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1058
    .local v3, "defaultComponent":Landroid/content/ComponentName;
    :goto_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 1059
    .local v5, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const-string v6, "        "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1061
    const-string v6, "*DEFAULT* "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " (Description: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1063
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1065
    .end local v5    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    goto :goto_1

    .line 1066
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .locals 8
    .param p1, "prefixAid"    # Ljava/lang/String;

    .line 598
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 599
    .local v0, "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 600
    .local v1, "plainAid":Ljava/lang/String;
    const-string v4, "%-32s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x46

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 601
    .local v3, "lastAidWithPrefix":Ljava/lang/String;
    const-string v4, "RegisteredAidCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finding AIDs in range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 604
    invoke-virtual {v4, v1, v2, v3, v2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    .line 606
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 607
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 609
    const-string v5, "RegisteredAidCache"

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

    .line 611
    iget-object v5, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->services:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 612
    iget-object v5, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->aids:Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 614
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    :cond_0
    goto :goto_0

    .line 615
    :cond_1
    return-object v0
.end method

.method findConflictsForSubsetAidLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .locals 12
    .param p1, "subsetAid"    # Ljava/lang/String;

    .line 619
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 620
    .local v0, "subsetConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, "lastPlainAid":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 622
    .local v3, "plainSubsetAid":Ljava/lang/String;
    const/16 v4, 0xa

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, "firstAid":Ljava/lang/String;
    const-string v5, "RegisteredAidCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finding AIDs in range ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    iput-object v5, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    .line 627
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 628
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 629
    .local v7, "aid":Ljava/lang/String;
    move-object v8, v7

    .line 630
    .local v8, "plainAid":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v7}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 631
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 632
    :cond_1
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 633
    iget-object v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-interface {v9, v10, v11}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    .end local v7    # "aid":Ljava/lang/String;
    .end local v8    # "plainAid":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 636
    :cond_3
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 637
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 639
    const-string v6, "RegisteredAidCache"

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

    .line 641
    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->services:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 642
    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->aids:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 644
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    :cond_4
    goto :goto_1

    .line 645
    :cond_5
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

    .line 354
    .local p1, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 356
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

    .line 357
    .local v2, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    const-string v3, "payment"

    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    .line 358
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 359
    .local v3, "serviceClaimsPaymentAid":Z
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    goto :goto_1

    .line 361
    :cond_0
    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 363
    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 365
    .end local v2    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v3    # "serviceClaimsPaymentAid":Z
    :cond_1
    :goto_1
    goto :goto_0

    .line 366
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
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;Z)",
            "Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;"
        }
    .end annotation

    .line 565
    .local p2, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 566
    .local v0, "prefixAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 572
    .local v1, "minPrefix":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "plainSubsetAid":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 575
    .local v6, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getPrefixAids()Ljava/util/List;

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

    .line 577
    .local v8, "prefixAid":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 578
    .local v9, "plainPrefix":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 579
    if-eqz p3, :cond_1

    .line 580
    const-string v10, "payment"

    invoke-virtual {v6, v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    iget-object v11, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 581
    :cond_0
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 583
    :cond_1
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    .end local v8    # "prefixAid":Ljava/lang/String;
    .end local v9    # "plainPrefix":Ljava/lang/String;
    :cond_2
    :goto_2
    goto :goto_1

    .line 587
    .end local v6    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_3
    goto :goto_0

    .line 588
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 589
    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Ljava/lang/String;

    .line 590
    :cond_5
    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    invoke-direct {v5, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 591
    .local v5, "resolvedPrefix":Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;
    iput-object v1, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    .line 592
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 593
    iput-boolean v3, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->matchingSubset:Z

    .line 594
    :cond_6
    return-object v5
.end method

.method public generateAidCacheLocked()V
    .locals 1

    .line 650
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked(I)V

    .line 651
    return-void
.end method

.method generateAidCacheLocked(I)V
    .locals 17
    .param p1, "reason"    # I

    move-object/from16 v0, p0

    .line 654
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 656
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 659
    .local v1, "aidCache":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    new-instance v2, Ljava/util/PriorityQueue;

    iget-object v3, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/PriorityQueue;-><init>(Ljava/util/Collection;)V

    .line 660
    .local v2, "aidsToResolve":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 661
    :goto_0
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_8

    .line 662
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v3, "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 671
    .local v6, "aidToResolve":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 672
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 674
    :cond_0
    const-string v7, "RegisteredAidCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "generateAidCacheLocked: starting with aid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-static {v6}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 681
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 682
    invoke-virtual {v8, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 685
    .local v7, "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v0, v6}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findConflictsForPrefixLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;

    move-result-object v8

    .line 688
    .local v8, "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    iget-object v9, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->services:Ljava/util/ArrayList;

    invoke-virtual {v0, v7, v9}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v9

    .line 690
    .local v9, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    invoke-virtual {v1, v6, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    iget-object v10, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    if-eqz v10, :cond_3

    .line 695
    iget-object v4, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 696
    iget-object v4, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getSubsetAids()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 697
    .local v10, "aid":Ljava/lang/String;
    iget-object v11, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 698
    const-string v11, "payment"

    iget-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v12, v10}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v11}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v11, v12}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 699
    :cond_1
    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v11, v10}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    invoke-virtual {v0, v11, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v11

    .line 700
    .local v11, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    invoke-virtual {v1, v10, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const-string v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " shared with prefix; adding subset ."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v10    # "aid":Ljava/lang/String;
    .end local v11    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_2
    goto :goto_1

    .line 706
    :cond_3
    iget-object v10, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    .line 710
    const/4 v10, 0x0

    .line 712
    .local v10, "foundChildService":Z
    iget-object v11, v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v11}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 713
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v13, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 715
    const-string v13, "RegisteredAidCache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AID "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " shared with prefix;  adding all handling services."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    nop

    .line 718
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    .line 717
    invoke-virtual {v0, v13, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v13

    .line 723
    .local v13, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iput-boolean v5, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    .line 724
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14, v13}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v14, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    xor-int/2addr v14, v4

    or-int/2addr v10, v14

    .line 728
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    .end local v13    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_4
    goto :goto_2

    .line 731
    :cond_5
    if-nez v10, :cond_6

    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ne v11, v4, :cond_6

    .line 732
    iget-object v4, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    iput-object v4, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 738
    .end local v7    # "prefixServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v8    # "prefixConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .end local v9    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v10    # "foundChildService":Z
    :cond_6
    goto :goto_3

    .line 742
    :cond_7
    const-string v5, "RegisteredAidCache"

    const-string v7, "Exact AID, resolving."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 744
    invoke-virtual {v7, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 745
    .local v5, "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v0, v5, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v4

    invoke-virtual {v1, v6, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    .end local v5    # "conflictingServiceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :goto_3
    const-string v4, "RegisteredAidCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AIDs: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " were resolved."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    invoke-virtual {v2, v3}, Ljava/util/PriorityQueue;->removeAll(Ljava/util/Collection;)Z

    .line 752
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 753
    .end local v3    # "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "aidToResolve":Ljava/lang/String;
    goto/16 :goto_0

    .line 754
    :cond_8
    new-instance v3, Ljava/util/PriorityQueue;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 755
    .local v3, "reversedQueue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/PriorityQueue;->addAll(Ljava/util/Collection;)Z

    .line 756
    :goto_4
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13

    .line 757
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v6, "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 760
    .local v7, "aidToResolve":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 761
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v4

    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 762
    .local v8, "matchingSubset":Ljava/lang/String;
    const-string v9, "RegisteredAidCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "matching subset"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {v3, v8}, Ljava/util/PriorityQueue;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 764
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-virtual {v7, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 766
    .end local v8    # "matchingSubset":Ljava/lang/String;
    :cond_9
    invoke-static {v7}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 767
    const-string v8, "RegisteredAidCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "subset resolving aidToResolve  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v8, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    .line 769
    invoke-virtual {v9, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 772
    .local v8, "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v0, v7}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findConflictsForSubsetAidLocked(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;

    move-result-object v9

    .line 775
    .local v9, "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    iget-object v10, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->services:Ljava/util/ArrayList;

    invoke-virtual {v0, v8, v10}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v10

    .line 777
    .local v10, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v11, v7, v10}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    iget-object v11, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    if-eqz v11, :cond_b

    .line 782
    iget-object v11, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    if-eqz v11, :cond_a

    iget-object v11, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v11, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    if-eqz v11, :cond_a

    iget-object v11, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-boolean v11, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->matchingSubset:Z

    if-nez v11, :cond_a

    .line 784
    const-string v11, "RegisteredAidCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AID default "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v13, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " prefix AID shared with dsubset root;  adding prefix aid"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v11, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v12, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v12, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    .line 787
    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Collection;

    .line 786
    invoke-virtual {v0, v11, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v11

    .line 788
    .restart local v11    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    iget-object v13, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v13, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    invoke-virtual {v12, v13, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    .end local v11    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_a
    iget-object v11, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->aids:Ljava/util/HashSet;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    .line 791
    :cond_b
    iget-object v11, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_10

    .line 795
    const/4 v11, 0x0

    .line 797
    .local v11, "foundChildService":Z
    iget-object v12, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;->conflictMap:Ljava/util/NavigableMap;

    invoke-interface {v12}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 799
    .local v13, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    .line 801
    const-string v14, "RegisteredAidCache"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AID "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " shared with subset root;  adding all handling services."

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    nop

    .line 804
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 803
    invoke-virtual {v0, v4, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v4

    .line 809
    .local v4, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iput-boolean v5, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    .line 810
    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v14, v15, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    iget-object v14, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    const/4 v15, 0x1

    xor-int/2addr v14, v15

    or-int v4, v11, v14

    .line 814
    .end local v11    # "foundChildService":Z
    .end local v13    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;>;"
    .local v4, "foundChildService":Z
    move v11, v4

    .line 797
    .end local v4    # "foundChildService":Z
    .restart local v11    # "foundChildService":Z
    :cond_c
    const/4 v4, 0x1

    goto :goto_5

    .line 815
    :cond_d
    iget-object v4, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    if-eqz v4, :cond_e

    iget-object v4, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    if-eqz v4, :cond_e

    iget-object v4, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-boolean v4, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->matchingSubset:Z

    if-nez v4, :cond_e

    .line 816
    iget-object v4, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v12, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v12, v12, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    .line 817
    invoke-virtual {v4, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 816
    invoke-virtual {v0, v4, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v4

    .line 818
    .local v4, "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v12, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    iget-object v13, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v13, v13, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    invoke-virtual {v12, v13, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string v12, "RegisteredAidCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-object v14, v14, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->prefixAid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " prefix AID shared with subset root;  adding prefix aid"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    .end local v4    # "childResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_e
    if-nez v11, :cond_f

    iget-object v4, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v12, 0x1

    if-ne v4, v12, :cond_11

    .line 826
    iget-object v4, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    iput-object v4, v10, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .end local v8    # "subsetServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .end local v9    # "aidConflicts":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidConflicts;
    .end local v10    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v11    # "foundChildService":Z
    goto :goto_7

    .line 832
    :cond_f
    const/4 v12, 0x1

    goto :goto_7

    :cond_10
    :goto_6
    move v12, v4

    :cond_11
    :goto_7
    goto :goto_8

    .line 836
    :cond_12
    move v12, v4

    const-string v4, "RegisteredAidCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exact or Prefix AID."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-object v4, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v1, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-virtual {v4, v7, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    :goto_8
    const-string v4, "RegisteredAidCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AIDs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " were resolved."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    invoke-virtual {v3, v6}, Ljava/util/PriorityQueue;->removeAll(Ljava/util/Collection;)Z

    .line 844
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 845
    .end local v6    # "resolvedAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "aidToResolve":Ljava/lang/String;
    nop

    .line 756
    move v4, v12

    goto/16 :goto_4

    .line 849
    :cond_13
    invoke-virtual/range {p0 .. p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked(I)V

    .line 852
    return-void
.end method

.method generateServiceMapLocked(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 443
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 444
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 445
    .local v1, "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const-string v2, "RegisteredAidCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateServiceMap component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getPrefixAids()Ljava/util/List;

    move-result-object v2

    .line 447
    .local v2, "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getSubsetAids()Ljava/util/List;

    move-result-object v3

    .line 449
    .local v3, "subSetAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getAids()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 450
    .local v5, "aid":Ljava/lang/String;
    invoke-static {v5}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 451
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is not valid."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    goto :goto_1

    .line 454
    :cond_0
    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v6

    if-nez v6, :cond_1

    .line 455
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prefix AID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ignored on device that doesn\'t support it."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    goto :goto_1

    .line 457
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    invoke-static {v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isExact(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 459
    const/4 v6, 0x0

    .line 460
    .local v6, "foundPrefix":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 461
    .local v9, "prefixAid":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 462
    .local v10, "prefix":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 463
    const-string v7, "RegisteredAidCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring exact AID "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " because prefix AID "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is already registered"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v6, 0x1

    .line 466
    goto :goto_3

    .line 468
    .end local v9    # "prefixAid":Ljava/lang/String;
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 469
    :cond_3
    :goto_3
    if-eqz v6, :cond_4

    .line 470
    goto/16 :goto_1

    .line 472
    .end local v6    # "foundPrefix":Z
    :cond_4
    goto/16 :goto_6

    :cond_5
    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidSubsetRegistration()Z

    move-result v6

    if-nez v6, :cond_6

    .line 473
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Subset AID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ignored on device that doesn\'t support it."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    goto/16 :goto_1

    .line 475
    :cond_6
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidSubsetRegistration()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_9

    invoke-static {v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isExact(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 477
    const/4 v6, 0x0

    .line 478
    .local v6, "foundSubset":Z
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 479
    .local v9, "subsetAid":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 480
    .local v10, "plainSubset":Ljava/lang/String;
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 481
    const-string v7, "RegisteredAidCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring exact AID "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " because subset AID "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is already registered"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/4 v6, 0x1

    .line 484
    goto :goto_5

    .line 486
    .end local v9    # "subsetAid":Ljava/lang/String;
    .end local v10    # "plainSubset":Ljava/lang/String;
    :cond_7
    goto :goto_4

    .line 487
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    .line 488
    goto/16 :goto_1

    .line 492
    .end local v6    # "foundSubset":Z
    :cond_9
    :goto_6
    new-instance v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    invoke-direct {v6, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 493
    .local v6, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 494
    iput-object v1, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 495
    invoke-virtual {v1, v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    .line 496
    iget-object v7, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    const-string v8, "other"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "other"

    .line 497
    invoke-virtual {v1, v7}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getServiceState(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "other"

    .line 498
    invoke-virtual {v1, v7}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getServiceState(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_b

    .line 501
    :cond_a
    const-string v7, "RegisteredAidCache"

    const-string v8, "ignoring other category aid because service category is disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    goto/16 :goto_1

    .line 505
    :cond_b
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v7}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getAidMatchingPlatform()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    .line 506
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->isOnHost()Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 509
    :cond_c
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 511
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v8, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 512
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v8, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 513
    invoke-virtual {v7, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 514
    .local v7, "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    .end local v7    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    goto :goto_7

    .line 516
    :cond_d
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 518
    .restart local v7    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v8, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidServices:Ljava/util/TreeMap;

    iget-object v9, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    .end local v5    # "aid":Ljava/lang/String;
    .end local v6    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v7    # "serviceAidInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    :goto_7
    goto/16 :goto_1

    .line 522
    :cond_e
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getNxpAidGroups()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/NxpAidGroup;

    .line 523
    .local v5, "group":Landroid/nfc/cardemulation/NxpAidGroup;
    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpAidGroup;->getApduPatternList()Ljava/util/ArrayList;

    move-result-object v6

    .line 524
    .local v6, "apduPattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;>;"
    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_10

    .line 525
    goto :goto_8

    .line 526
    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;

    .line 527
    .local v8, "apdu":Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;
    new-instance v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;

    invoke-direct {v9, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 528
    .local v9, "serviceApduInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;
    iput-object v8, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;->apdu:Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;

    .line 529
    iput-object v1, v9, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 530
    iget-object v10, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mapduPatternList:Ljava/util/TreeMap;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;->getreferenceData()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 531
    const-string v10, "RegisteredAidCache"

    const-string v11, " Ignoring APDU pattern which is already registered"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 533
    :cond_11
    iget-object v10, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mapduPatternList:Ljava/util/TreeMap;

    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;->getreferenceData()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .end local v8    # "apdu":Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;
    .end local v9    # "serviceApduInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceApduInfo;
    :goto_a
    goto :goto_9

    .line 536
    .end local v5    # "group":Landroid/nfc/cardemulation/NxpAidGroup;
    .end local v6    # "apduPattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpAidGroup$ApduPattern;>;"
    :cond_12
    goto :goto_8

    .line 537
    .end local v1    # "service":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v2    # "prefixAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "subSetAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_13
    goto/16 :goto_0

    .line 538
    :cond_14
    return-void
.end method

.method public getPreferredPaymentService()Landroid/content/ComponentName;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getPreviousPreferredPaymentService()Landroid/content/ComponentName;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreviousPreferredPaymentService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;

    .line 257
    invoke-virtual {p0, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v0

    .line 258
    .local v0, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    .line 259
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    if-eqz v2, :cond_1

    .line 264
    iget-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 265
    :cond_1
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 266
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 269
    :cond_2
    return v1

    .line 260
    :cond_3
    :goto_0
    return v1
.end method

.method public onNfcDisabled()V
    .locals 2

    .line 1032
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1033
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 1034
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->onNfccRoutingTableCleared()V

    .line 1036
    return-void

    .line 1034
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

    .line 1039
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1040
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    .line 1041
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked()V

    .line 1042
    monitor-exit v0

    .line 1043
    return-void

    .line 1042
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

    .line 1018
    const-string v0, "RegisteredAidCache"

    const-string v1, "Preferred foreground service changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1020
    :try_start_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    .line 1021
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 1022
    monitor-exit v0

    .line 1023
    return-void

    .line 1022
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

    .line 997
    const-string v0, "RegisteredAidCache"

    const-string v1, "Preferred payment service changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 999
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreviousPreferredPaymentService:Landroid/content/ComponentName;

    .line 1000
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    .line 1003
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked(I)V

    .line 1006
    monitor-exit v0

    .line 1007
    return-void

    .line 1006
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onRoutingTableChanged()V
    .locals 2

    .line 1026
    const-string v0, "RegisteredAidCache"

    const-string v1, "onRoutingTableChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1028
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    .line 1029
    monitor-exit v0

    .line 1030
    return-void

    .line 1029
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
            "Landroid/nfc/cardemulation/NxpApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 984
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    const-string v0, "RegisteredAidCache"

    const-string v1, "onServicesUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 986
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 988
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateServiceMapLocked(Ljava/util/List;)V

    .line 989
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->generateAidCacheLocked()V

    goto :goto_0

    .line 991
    :cond_0
    const-string v1, "RegisteredAidCache"

    const-string v2, "Ignoring update because it\'s not for the current user."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :goto_0
    monitor-exit v0

    .line 994
    return-void

    .line 993
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .locals 17
    .param p1, "aid"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 191
    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 192
    :try_start_0
    const-string v0, "RegisteredAidCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAid: resolving AID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 194
    const-string v0, "RegisteredAidCache"

    const-string v4, "AID selected with fewer than 5 bytes."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    monitor-exit v3

    return-object v0

    .line 197
    :cond_0
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v0, v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 198
    .local v0, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-boolean v5, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    if-nez v5, :cond_2

    iget-boolean v5, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsSubset:Z

    if-eqz v5, :cond_1

    goto :goto_0

    .line 237
    :cond_1
    iget-object v4, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v4, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-object v0, v4

    goto/16 :goto_5

    .line 202
    :cond_2
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 203
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

    .line 206
    .local v6, "longestAidMatch":Ljava/lang/String;
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

    .line 208
    iget-object v8, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    .line 209
    invoke-virtual {v8, v4, v7, v6, v7}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v8

    .line 211
    .local v8, "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    const-string v9, "other"

    iput-object v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 212
    invoke-interface {v8}, Ljava/util/NavigableMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 213
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isPrefix(Ljava/lang/String;)Z

    move-result v11

    .line 214
    .local v11, "isPrefix":Z
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v12

    .line 215
    .local v12, "isSubset":Z
    if-nez v11, :cond_4

    if-eqz v12, :cond_3

    goto :goto_2

    .line 216
    :cond_3
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    goto :goto_3

    .line 215
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 216
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int/2addr v14, v7

    .line 215
    invoke-virtual {v13, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 216
    :goto_3
    nop

    .line 217
    .local v13, "entryAid":Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    if-eqz v11, :cond_5

    invoke-virtual {v2, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    :cond_5
    if-eqz v12, :cond_a

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 218
    :cond_6
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

    .line 219
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 220
    .local v5, "entryResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-object v14, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    if-eqz v14, :cond_8

    .line 221
    iget-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    if-eqz v14, :cond_7

    .line 224
    const-string v14, "RegisteredAidCache"

    const-string v15, "Different defaults for conflicting AIDs!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_7
    iget-object v14, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    iput-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 227
    iget-object v14, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    iput-object v14, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 229
    :cond_8
    iget-object v14, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 230
    .local v15, "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 231
    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v15    # "serviceInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_9
    nop

    .line 229
    const/4 v7, 0x1

    goto :goto_4

    .line 235
    .end local v5    # "entryResolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v11    # "isPrefix":Z
    .end local v12    # "isSubset":Z
    .end local v13    # "entryAid":Ljava/lang/String;
    :cond_a
    nop

    .line 212
    const/4 v5, 0x0

    const/4 v7, 0x1

    goto/16 :goto_1

    .line 236
    .end local v4    # "shortestAidMatch":Ljava/lang/String;
    .end local v6    # "longestAidMatch":Ljava/lang/String;
    .end local v8    # "matchingAids":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    :cond_b
    nop

    .line 239
    :goto_5
    const-string v4, "RegisteredAidCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolved to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    monitor-exit v3

    return-object v0

    .line 241
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

    .line 372
    .local p1, "aidServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    .local p2, "conflictingServices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    move-result-object v0

    .line 375
    .local v0, "aidDefaultInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    invoke-virtual {p0, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findDefaultServices(Ljava/util/ArrayList;)Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;

    move-result-object v1

    .line 382
    .local v1, "conflictingDefaultInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 383
    const-string v2, "RegisteredAidCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prefix AID service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 384
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has foreground preference, ignoring conflicting AIDs."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 383
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 390
    .local v2, "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 391
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$1;

    invoke-direct {v5, p0, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache$1;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;)V

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findPrefixConflictForSubsetAid(Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    move-result-object v3

    iput-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    .line 394
    :cond_0
    return-object v2

    .line 395
    .end local v2    # "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_1
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_4

    .line 397
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_2

    .line 399
    const-string v2, "RegisteredAidCache"

    const-string v3, "One of the conflicting AID registrations is foreground preferred, ignoring prefix."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    return-object v2

    .line 404
    :cond_2
    const-string v2, "RegisteredAidCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prefix AID service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 405
    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is payment default, ignoring conflicting AIDs."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 409
    .restart local v2    # "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 410
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v4, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    new-instance v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$2;

    invoke-direct {v5, p0, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache$2;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;)V

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findPrefixConflictForSubsetAid(Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    move-result-object v3

    iput-object v3, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    .line 413
    :cond_3
    return-object v2

    .line 416
    .end local v2    # "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_4
    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->foregroundDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-nez v2, :cond_9

    iget-object v2, v1, Lcom/android/nfc/cardemulation/RegisteredAidCache$DefaultServiceInfo;->paymentDefault:Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    if-eqz v2, :cond_5

    goto :goto_2

    .line 424
    :cond_5
    const-string v2, "RegisteredAidCache"

    const-string v3, "No service has preference, adding all."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 427
    .restart local v2    # "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isSubset(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 429
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 430
    .local v3, "apduServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 431
    .local v6, "serviceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    iget-object v7, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6    # "serviceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    goto :goto_0

    .line 432
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 433
    .restart local v6    # "serviceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    iget-object v7, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6    # "serviceInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    goto :goto_1

    .line 434
    :cond_7
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->findPrefixConflictForSubsetAid(Ljava/lang/String;Ljava/util/ArrayList;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    move-result-object v4

    iput-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    .line 436
    .end local v3    # "apduServiceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/NxpApduServiceInfo;>;"
    :cond_8
    return-object v2

    .line 418
    .end local v2    # "resolveinfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_9
    :goto_2
    const-string v2, "RegisteredAidCache"

    const-string v3, "One of the conflicting AID registrations is either payment default or foreground preferred, ignoring prefix."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->EMPTY_RESOLVE_INFO:Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    return-object v2
.end method

.method resolveAidConflictLocked(Ljava/util/Collection;Z)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .locals 9
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

    .line 287
    .local p1, "conflictingServices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;>;"
    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 291
    :cond_0
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;-><init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    .line 292
    .local v0, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const-string v1, "other"

    iput-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "matchedForeground":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    const/4 v2, 0x0

    .line 296
    .local v2, "matchedPayment":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 297
    .local v4, "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    const-string v5, "payment"

    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    .line 298
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 299
    .local v5, "serviceClaimsPaymentAid":Z
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 300
    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    if-eqz v5, :cond_1

    .line 302
    const-string v6, "payment"

    iput-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 304
    :cond_1
    iget-object v1, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    goto :goto_1

    .line 305
    :cond_2
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 307
    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    const-string v6, "payment"

    iput-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 309
    iget-object v2, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    goto :goto_1

    .line 311
    :cond_3
    if-eqz v5, :cond_4

    .line 315
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAidLocked: (Ignoring handling service "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 316
    invoke-virtual {v8}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because it\'s not the payment default.)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 315
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 319
    :cond_4
    iget-object v6, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v4    # "serviceAidInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    .end local v5    # "serviceClaimsPaymentAid":Z
    :goto_1
    goto :goto_0

    .line 323
    :cond_5
    if-eqz v1, :cond_6

    .line 326
    const-string v3, "RegisteredAidCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAidLocked: DECISION: routing to foreground preferred "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iput-object v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    goto :goto_2

    .line 329
    :cond_6
    if-eqz v2, :cond_7

    .line 332
    const-string v3, "RegisteredAidCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAidLocked: DECISION: routing to payment default default "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iput-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    goto :goto_2

    .line 336
    :cond_7
    iget-object v3, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    if-eqz p2, :cond_8

    .line 337
    const-string v3, "RegisteredAidCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveAidLocked: DECISION: making single handling service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    .line 338
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " default."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v3, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/NxpApduServiceInfo;

    iput-object v3, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    goto :goto_2

    .line 342
    :cond_8
    const-string v3, "RegisteredAidCache"

    const-string v4, "resolveAidLocked: DECISION: routing to all matching services"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :goto_2
    return-object v0

    .line 288
    .end local v0    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v1    # "matchedForeground":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    .end local v2    # "matchedPayment":Landroid/nfc/cardemulation/NxpApduServiceInfo;
    :cond_9
    :goto_3
    const-string v0, "RegisteredAidCache"

    const-string v1, "resolveAidConflict: No services passed in."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v0, 0x0

    return-object v0
.end method

.method public setPreviousPreferredPaymentService(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "mPrevPaymentService"    # Landroid/content/ComponentName;

    .line 1014
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreviousPreferredPaymentService:Landroid/content/ComponentName;

    .line 1015
    return-void
.end method

.method public supportsAidPrefixRegistration()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsPrefixes:Z

    return v0
.end method

.method public supportsAidSubsetRegistration()Z
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mSupportsSubset:Z

    return v0
.end method

.method updateRoutingLocked()V
    .locals 1

    .line 855
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateRoutingLocked(I)V

    .line 856
    return-void
.end method

.method updateRoutingLocked(I)V
    .locals 22
    .param p1, "reason"    # I

    move-object/from16 v0, p0

    .line 860
    iget-boolean v1, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mNfcEnabled:Z

    if-nez v1, :cond_0

    .line 861
    const-string v1, "RegisteredAidCache"

    const-string v2, "Not updating routing table because NFC is off."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    return-void

    .line 864
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 867
    .local v1, "routingEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidElement;>;"
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mAidCache:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 868
    .local v3, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 869
    .local v4, "aid":Ljava/lang/String;
    const/4 v5, 0x0

    .line 870
    .local v5, "aidInfo":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    .line 871
    .local v11, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    iget-boolean v6, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->mustRoute:Z

    if-nez v6, :cond_1

    .line 872
    const-string v6, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not routing AID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " on request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    goto :goto_0

    .line 875
    :cond_1
    const-string v6, "#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 876
    or-int/lit8 v5, v5, 0x20

    .line 878
    :cond_2
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    if-eqz v6, :cond_3

    iget-object v6, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->prefixInfo:Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;

    iget-boolean v6, v6, Lcom/android/nfc/cardemulation/RegisteredAidCache$ReslovedPrefixConflictAid;->matchingSubset:Z

    if-eqz v6, :cond_3

    goto :goto_2

    .line 881
    .end local v5    # "aidInfo":I
    .local v12, "aidInfo":I
    :cond_3
    :goto_1
    move v12, v5

    goto :goto_3

    .line 879
    .end local v12    # "aidInfo":I
    .restart local v5    # "aidInfo":I
    :cond_4
    :goto_2
    or-int/lit8 v5, v5, 0x10

    goto :goto_1

    .line 881
    .end local v5    # "aidInfo":I
    .restart local v12    # "aidInfo":I
    :goto_3
    iget-object v5, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 956
    .end local v3    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v4    # "aid":Ljava/lang/String;
    .end local v11    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v12    # "aidInfo":I
    move-object/from16 v20, v2

    goto/16 :goto_7

    .line 883
    .restart local v3    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .restart local v4    # "aid":Ljava/lang/String;
    .restart local v11    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .restart local v12    # "aidInfo":I
    :cond_5
    iget-object v5, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    if-eqz v5, :cond_d

    .line 886
    iget-object v5, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;

    move-result-object v13

    .line 887
    .local v13, "seInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;
    iget-object v5, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredPaymentService:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 888
    .local v14, "isDefaultPayment":Z
    iget-object v5, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    iget-object v7, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mPreferredForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 889
    .local v15, "isForeground":Z
    iget-object v5, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->isOnHost()Z

    move-result v16

    .line 890
    .local v16, "isOnHost":Z
    iget-object v5, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    const-string v7, "payment"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 892
    .local v17, "isPaymentAid":Z
    const/4 v5, 0x0

    .line 895
    .local v5, "vzwPowerstate":I
    invoke-virtual {v13}, Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;->getPowerState()I

    move-result v7

    and-int/lit8 v7, v7, 0x7

    .line 896
    .local v7, "powerstate":I
    if-nez v7, :cond_6

    .line 898
    or-int/lit8 v7, v7, 0x1

    .line 899
    if-nez v16, :cond_6

    .line 900
    or-int/lit8 v7, v7, 0x2

    .line 903
    :cond_6
    const/4 v9, 0x1

    .line 906
    .local v9, "weight":I
    if-nez v16, :cond_7

    .line 907
    const-string v8, "RegisteredAidCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " set screen off enable for "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    or-int/lit8 v7, v7, 0x28

    .line 910
    :cond_7
    const-string v6, "RegisteredAidCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AID power state before adding screen state"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    or-int/lit8 v6, v7, 0x10

    .line 912
    .end local v7    # "powerstate":I
    .local v6, "powerstate":I
    const-string v7, "RegisteredAidCache"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " AID power state after"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const/4 v7, 0x0

    if-nez v16, :cond_9

    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/nfc/NfcService;->isVzwFeatureEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 914
    const-string v8, ""

    .line 915
    .local v8, "plainAid":Ljava/lang/String;
    const-string v10, "*"

    invoke-virtual {v4, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 917
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v18, 0x1

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 919
    :cond_8
    move-object v8, v4

    .line 921
    :goto_4
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v10}, Lcom/android/nfc/cardemulation/AidRoutingManager;->GetVzwCache()Lcom/android/nfc/cardemulation/VzwRoutingCache;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->isAidPresent(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 922
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v10}, Lcom/android/nfc/cardemulation/AidRoutingManager;->GetVzwCache()Lcom/android/nfc/cardemulation/VzwRoutingCache;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->IsAidAllowed(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 924
    and-int/lit8 v6, v6, -0x29

    .line 926
    iget-object v10, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v10}, Lcom/android/nfc/cardemulation/AidRoutingManager;->GetVzwCache()Lcom/android/nfc/cardemulation/VzwRoutingCache;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->getPowerState(Ljava/lang/String;)I

    move-result v5

    .line 928
    and-int/2addr v6, v5

    .line 930
    and-int/lit8 v10, v5, 0x28

    or-int/2addr v6, v10

    .line 931
    const-string v10, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v2

    const-string v2, " vzw aid"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-string v2, "RegisteredAidCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " vzw merged power state"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8    # "plainAid":Ljava/lang/String;
    goto :goto_5

    .line 936
    :cond_9
    move-object/from16 v20, v2

    .end local v5    # "vzwPowerstate":I
    .end local v6    # "powerstate":I
    .local v2, "powerstate":I
    .local v18, "vzwPowerstate":I
    :goto_5
    move/from16 v18, v5

    move v2, v6

    if-eqz v16, :cond_a

    const/4 v8, 0x0

    goto :goto_6

    :cond_a
    invoke-virtual {v13}, Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;->getSeId()I

    move-result v5

    move v8, v5

    .line 937
    .local v8, "route":I
    :goto_6
    const-string v5, "RegisteredAidCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " AID power state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    if-eqz v15, :cond_b

    .line 939
    add-int/lit8 v9, v9, 0x4

    .line 941
    :cond_b
    if-eqz v14, :cond_c

    if-eqz v17, :cond_c

    .line 942
    add-int/lit8 v9, v9, 0x2

    .line 944
    .end local v9    # "weight":I
    .local v19, "weight":I
    :cond_c
    move/from16 v19, v9

    new-instance v21, Lcom/android/nfc/cardemulation/AidElement;

    move-object/from16 v5, v21

    move-object v6, v4

    move/from16 v7, v19

    move v9, v2

    move v10, v12

    invoke-direct/range {v5 .. v10}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;IIII)V

    .line 945
    .local v5, "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    .end local v2    # "powerstate":I
    .end local v5    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v8    # "route":I
    .end local v13    # "seInfo":Landroid/nfc/cardemulation/NxpApduServiceInfo$ESeInfo;
    .end local v14    # "isDefaultPayment":Z
    .end local v15    # "isForeground":Z
    .end local v16    # "isOnHost":Z
    .end local v17    # "isPaymentAid":Z
    .end local v18    # "vzwPowerstate":I
    .end local v19    # "weight":I
    goto :goto_7

    :cond_d
    move-object/from16 v20, v2

    iget-object v2, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_e

    .line 949
    new-instance v2, Lcom/android/nfc/cardemulation/AidElement;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mHostAIDPowerState:I

    move-object v5, v2

    move-object v6, v4

    move v10, v12

    invoke-direct/range {v5 .. v10}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;IIII)V

    .line 950
    .local v2, "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    .end local v2    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    goto :goto_7

    :cond_e
    iget-object v2, v11, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_f

    .line 953
    new-instance v2, Lcom/android/nfc/cardemulation/AidElement;

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget v9, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mHostAIDPowerState:I

    move-object v5, v2

    move-object v6, v4

    move v10, v12

    invoke-direct/range {v5 .. v10}, Lcom/android/nfc/cardemulation/AidElement;-><init>(Ljava/lang/String;IIII)V

    .line 954
    .restart local v2    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .end local v2    # "aidElem":Lcom/android/nfc/cardemulation/AidElement;
    .end local v3    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;>;"
    .end local v4    # "aid":Ljava/lang/String;
    .end local v11    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v12    # "aidInfo":I
    :cond_f
    :goto_7
    nop

    .line 867
    move-object/from16 v2, v20

    goto/16 :goto_0

    .line 957
    :cond_10
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mapduPatternList:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 958
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->addApduPatternEntries()V

    .line 962
    :cond_11
    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;->mRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    move/from16 v3, p1

    invoke-virtual {v2, v1, v3}, Lcom/android/nfc/cardemulation/AidRoutingManager;->configureRouting(Ljava/util/HashMap;I)Z

    .line 965
    return-void
.end method

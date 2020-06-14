.class public Lcom/android/nfc/cardemulation/AidRoutingManager;
.super Ljava/lang/Object;
.source "AidRoutingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;
    }
.end annotation


# static fields
.field static final AID_MATCHING_EXACT_ONLY:I = 0x0

.field static final AID_MATCHING_EXACT_OR_PREFIX:I = 0x1

.field static final AID_MATCHING_EXACT_OR_SUBSET_OR_PREFIX:I = 0x3

.field static final AID_MATCHING_PREFIX_ONLY:I = 0x2

.field static final DBG:Z

.field static final ROUTE_HOST:I = 0x0

.field static final TAG:Ljava/lang/String; = "AidRoutingManager"


# instance fields
.field final mActivityManager:Landroid/app/ActivityManager;

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

.field mDefaultAidRoute:I

.field mDefaultIsoDepRoute:I

.field final mDefaultOffHostRoute:I

.field mDefaultRoute:I

.field mLastCommitStatus:Z

.field final mLock:Ljava/lang/Object;

.field mMaxAidRoutingTableSize:I

.field final mOffHostRouteEse:[B

.field final mOffHostRouteUicc:[B

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    const-string v0, "persist.nfc.ce_debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 126
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetDefaultRouteDestination()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 127
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    const-string v1, "AidRoutingManager"

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultRoute=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetDefaultOffHostRouteDestination()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    .line 130
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultOffHostRoute=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetOffHostUiccDestination()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteUicc:[B

    .line 133
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOffHostRouteUicc="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteUicc:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetOffHostEseDestination()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteEse:[B

    .line 136
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOffHostRouteEse="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteEse:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_3
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetAidMatchingMode()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    .line 139
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAidMatchingSupport=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_4
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultAidRoute:I

    .line 141
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_5

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultAidRoute=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultAidRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_5
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->doGetDefaultIsoDepRouteDestination()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultIsoDepRoute:I

    .line 144
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDefaultIsoDepRoute=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultIsoDepRoute:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLastCommitStatus:Z

    .line 147
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 148
    .local v0, "context":Landroid/content/Context;
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 149
    return-void
.end method

.method private clearNfcRoutingTableLocked()V
    .locals 11

    .line 179
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 180
    .local v1, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 181
    .local v2, "aid":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "] is registered"

    const/4 v8, 0x1

    const-string v9, "AidRoutingManager"

    if-eqz v3, :cond_4

    .line 182
    iget v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    if-nez v3, :cond_0

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device does not support prefix AIDs but AID ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 185
    :cond_0
    const-string v7, "Unrouting prefix AID "

    if-ne v3, v5, :cond_2

    .line 186
    sget-boolean v3, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 189
    :cond_2
    if-eq v3, v8, :cond_3

    if-ne v3, v4, :cond_a

    .line 191
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 192
    sget-boolean v3, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 194
    :cond_4
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 195
    iget v3, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const-string v10, "Device does not support subset AIDs but AID ["

    if-nez v3, :cond_5

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 198
    :cond_5
    if-eq v3, v5, :cond_8

    if-ne v3, v8, :cond_6

    goto :goto_1

    .line 202
    :cond_6
    if-ne v3, v4, :cond_a

    .line 203
    sget-boolean v3, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrouting subset AID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 200
    :cond_8
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 207
    :cond_9
    sget-boolean v3, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrouting exact AID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_a
    :goto_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/nfc/NfcService;->unrouteAids(Ljava/lang/String;)V

    .line 211
    .end local v1    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "aid":Ljava/lang/String;
    goto/16 :goto_0

    .line 212
    :cond_b
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getNciVersion()I

    move-result v0

    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    const/16 v1, 0x10

    if-eq v0, v1, :cond_c

    .line 214
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->unrouteAids(Ljava/lang/String;)V

    .line 216
    :cond_c
    return-void
.end method

.method private commit(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;",
            ">;)V"
        }
    .end annotation

    .line 405
    .local p1, "routeCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;>;"
    if-nez p1, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 410
    .local v1, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    goto :goto_0

    .line 412
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    .line 413
    .local v2, "element":Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;
    sget-boolean v3, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AidRoutingManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    .line 415
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, v2, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->route:I

    iget v6, v2, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->aidInfo:I

    iget v7, v2, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    .line 414
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;III)V

    .line 419
    .end local v1    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;>;"
    .end local v2    # "element":Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;
    goto :goto_0

    .line 420
    :cond_3
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    .line 421
    .local v1, "emptyAidEntry":Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;
    if-eqz v1, :cond_4

    .line 422
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    iget v3, v1, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->route:I

    iget v4, v1, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->aidInfo:I

    iget v5, v1, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/nfc/NfcService;->routeAids(Ljava/lang/String;III)V

    .line 424
    :cond_4
    return-void
.end method

.method private native doGetAidMatchingMode()I
.end method

.method private native doGetDefaultIsoDepRouteDestination()I
.end method

.method private native doGetDefaultOffHostRouteDestination()I
.end method

.method private native doGetDefaultRouteDestination()I
.end method

.method private native doGetOffHostEseDestination()[B
.end method

.method private native doGetOffHostUiccDestination()[B
.end method

.method private getRouteForSecureElement(Ljava/lang/String;)I
    .locals 4
    .param p1, "se"    # Ljava/lang/String;

    .line 219
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 223
    :cond_0
    :try_start_0
    const-string v1, "eSE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteEse:[B

    if-eqz v1, :cond_1

    .line 224
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 225
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteEse:[B

    array-length v2, v2

    if-lt v2, v1, :cond_3

    if-lez v1, :cond_3

    .line 226
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteEse:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v0, v2, v3

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 228
    .end local v1    # "index":I
    :cond_1
    const-string v1, "SIM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteUicc:[B

    if-eqz v1, :cond_3

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 230
    .restart local v1    # "index":I
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteUicc:[B

    array-length v2, v2

    if-lt v2, v1, :cond_2

    if-lez v1, :cond_2

    .line 231
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteUicc:[B

    add-int/lit8 v3, v1, -0x1

    aget-byte v0, v2, v3

    and-int/lit16 v0, v0, 0xff

    return v0

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteEse:[B

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mOffHostRouteUicc:[B

    if-nez v2, :cond_4

    .line 234
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 228
    .end local v1    # "index":I
    :cond_3
    nop

    .line 237
    :cond_4
    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 238
    :goto_0
    return v0

    .line 220
    :cond_5
    :goto_1
    return v0
.end method

.method private getTopClass()Ljava/lang/String;
    .locals 3

    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "topClass":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 466
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 467
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 469
    :cond_0
    return-object v0
.end method

.method private isProcessingTapAgain()Z
    .locals 2

    .line 459
    const-class v0, Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, "appChooserActivityClassName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getTopClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public calculateAidRouteSize(Ljava/util/HashMap;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;",
            ">;)I"
        }
    .end annotation

    .line 163
    .local p1, "routeCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;>;"
    const/4 v0, 0x4

    .line 164
    .local v0, "AID_HDR_LENGTH":I
    const/4 v1, 0x0

    .line 165
    .local v1, "routeTableSize":I
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    .line 166
    .local v3, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 168
    .local v4, "aid":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 169
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    add-int/2addr v1, v5

    goto :goto_1

    .line 171
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    add-int/2addr v1, v5

    .line 173
    .end local v3    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;>;"
    .end local v4    # "aid":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 174
    :cond_1
    sget-boolean v2, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateAidRouteSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AidRoutingManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_2
    return v1
.end method

.method public configureRouting(Ljava/util/HashMap;Z)Z
    .locals 25
    .param p2, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;",
            ">;Z)Z"
        }
    .end annotation

    .line 242
    .local p1, "aidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    .line 243
    .local v3, "aidRouteResolved":Z
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    move-object v4, v0

    .line 244
    .local v4, "aidRoutingTableCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 245
    .local v5, "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/SparseArray;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-direct {v0, v6}, Landroid/util/SparseArray;-><init>(I)V

    move-object v6, v0

    .line 246
    .local v6, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/HashMap;-><init>(I)V

    move-object v7, v0

    .line 247
    .local v7, "routeForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/HashMap;-><init>(I)V

    move-object v8, v0

    .line 248
    .local v8, "infoForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/HashMap;-><init>(I)V

    move-object v9, v0

    .line 249
    .local v9, "powerForAid":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v0

    iput v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    .line 250
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getAidRoutingTableSize()I

    move-result v0

    iput v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTableSize:I

    .line 251
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    iput v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultAidRoute:I

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Size of routing table"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTableSize:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "AidRoutingManager"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultAidRoute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 256
    .local v10, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;>;"
    const/4 v11, 0x0

    .line 257
    .local v11, "route":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    iget-boolean v12, v12, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->isOnHost:Z

    if-nez v12, :cond_1

    .line 258
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    iget-object v12, v12, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->offHostSE:Ljava/lang/String;

    .line 259
    .local v12, "offHostSE":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 260
    iget v11, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultOffHostRoute:I

    goto :goto_1

    .line 262
    :cond_0
    invoke-direct {v1, v12}, Lcom/android/nfc/cardemulation/AidRoutingManager;->getRouteForSecureElement(Ljava/lang/String;)I

    move-result v11

    .line 263
    if-nez v11, :cond_1

    .line 264
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid Off host Aid Entry "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "AidRoutingManager"

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    goto :goto_0

    .line 269
    .end local v12    # "offHostSE":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 270
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    iput v11, v12, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->route:I

    .line 272
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    iget v12, v12, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->aidInfo:I

    .line 273
    .local v12, "aidType":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    iget v13, v13, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;->powerstate:I

    .line 274
    .local v13, "power":I
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 275
    .local v14, "aid":Ljava/lang/String;
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v6, v11, v15}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    .line 276
    .local v15, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-virtual {v6, v11, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    move-object/from16 v16, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    .end local v3    # "aidRouteResolved":Z
    .local v17, "aidRouteResolved":Z
    const-string v3, "#######Routing AID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to route "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with power "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    const-string v3, "AidRoutingManager"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v17    # "aidRouteResolved":Z
    .restart local v3    # "aidRouteResolved":Z
    :cond_3
    move/from16 v17, v3

    .line 283
    .end local v3    # "aidRouteResolved":Z
    .end local v10    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;>;"
    .end local v11    # "route":I
    .end local v12    # "aidType":I
    .end local v13    # "power":I
    .end local v14    # "aid":Ljava/lang/String;
    .end local v15    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "aidRouteResolved":Z
    :goto_2
    move-object/from16 v0, v16

    move/from16 v3, v17

    goto/16 :goto_0

    .line 284
    .end local v17    # "aidRouteResolved":Z
    .restart local v3    # "aidRouteResolved":Z
    :cond_4
    move/from16 v17, v3

    .end local v3    # "aidRouteResolved":Z
    .restart local v17    # "aidRouteResolved":Z
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 285
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_5
    iget-object v3, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 288
    :try_start_0
    iget-object v10, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v10, :cond_7

    if-nez p2, :cond_7

    .line 289
    :try_start_1
    sget-boolean v10, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v10, :cond_6

    const-string v10, "AidRoutingManager"

    const-string v11, "Routing table unchanged, not updating"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    .line 398
    :catchall_0
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    goto/16 :goto_f

    .line 294
    :cond_7
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AidRoutingManager;->clearNfcRoutingTableLocked()V

    .line 295
    iput-object v7, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    .line 296
    iput-object v6, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    .line 297
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/nfc/NfcService;->getAidRoutingTableSize()I

    move-result v10

    iput v10, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mMaxAidRoutingTableSize:I

    .line 298
    sget-boolean v10, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v10, :cond_8

    :try_start_3
    const-string v10, "AidRoutingManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mMaxAidRoutingTableSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mMaxAidRoutingTableSize:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    :cond_8
    move v10, v0

    .local v10, "index":I
    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_21

    .line 301
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iput v11, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 302
    if-eqz v10, :cond_9

    .line 303
    :try_start_5
    sget-boolean v11, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v11, :cond_9

    const-string v11, "AidRoutingManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AidRoutingTable is full, try to switch mDefaultRoute to 0x"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 305
    :cond_9
    :try_start_6
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 306
    iget v11, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v14, 0x2

    if-ne v11, v14, :cond_10

    .line 321
    iget-object v11, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    iget v15, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-virtual {v11, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    .line 322
    .local v11, "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v11, :cond_f

    .line 323
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v18, v16

    .line 326
    .local v18, "defaultRouteAid":Ljava/lang/String;
    iget-object v12, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 327
    .local v19, "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v21, v20

    .line 328
    .local v21, "aid":Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move/from16 v22, v20

    .line 329
    .local v22, "route":I
    move-object/from16 v13, v18

    move-object/from16 v14, v21

    .end local v18    # "defaultRouteAid":Ljava/lang/String;
    .end local v21    # "aid":Ljava/lang/String;
    .local v13, "defaultRouteAid":Ljava/lang/String;
    .restart local v14    # "aid":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_c

    iget v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v23, v5

    move/from16 v5, v22

    .end local v22    # "route":I
    .local v5, "route":I
    .local v23, "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eq v5, v0, :cond_b

    .line 330
    :try_start_7
    sget-boolean v0, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "AidRoutingManager"

    move/from16 v22, v5

    .end local v5    # "route":I
    .restart local v22    # "route":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v24, v6

    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v24, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :try_start_8
    const-string v6, "Adding AID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for default route, because a conflicting shorter AID will be added to the routing table"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v22    # "route":I
    .end local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v5    # "route":I
    .restart local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_a
    move/from16 v22, v5

    move-object/from16 v24, v6

    .line 333
    .end local v5    # "route":I
    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v22    # "route":I
    .restart local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :goto_6
    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    invoke-virtual {v4, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 398
    .end local v10    # "index":I
    .end local v11    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "defaultRouteAid":Ljava/lang/String;
    .end local v14    # "aid":Ljava/lang/String;
    .end local v19    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v22    # "route":I
    .end local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :catchall_1
    move-exception v0

    move-object/from16 v24, v6

    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    goto/16 :goto_f

    .line 329
    .end local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v5    # "route":I
    .restart local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v10    # "index":I
    .restart local v11    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "defaultRouteAid":Ljava/lang/String;
    .restart local v14    # "aid":Ljava/lang/String;
    .restart local v19    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_b
    move/from16 v22, v5

    move-object/from16 v24, v6

    .end local v5    # "route":I
    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v22    # "route":I
    .restart local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_7

    .end local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v5, "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_c
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .line 335
    .end local v5    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v14    # "aid":Ljava/lang/String;
    .end local v19    # "aidEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v22    # "route":I
    .restart local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :goto_7
    move-object/from16 v18, v13

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    const/4 v0, 0x0

    const/4 v14, 0x2

    goto :goto_5

    .line 326
    .end local v13    # "defaultRouteAid":Ljava/lang/String;
    .end local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v5    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v18    # "defaultRouteAid":Ljava/lang/String;
    :cond_d
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v13, v18

    .line 336
    .end local v5    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v18    # "defaultRouteAid":Ljava/lang/String;
    .restart local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    const/4 v14, 0x2

    goto/16 :goto_4

    .line 323
    .end local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v5    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_e
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .end local v5    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_8

    .line 322
    .end local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v5    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_f
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .end local v5    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    goto :goto_8

    .line 306
    .end local v11    # "defaultRouteAids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v5    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_10
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .line 343
    .end local v5    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :goto_8
    const/4 v0, 0x0

    move v5, v0

    .local v5, "i":I
    :goto_9
    iget-object v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v5, v0, :cond_1f

    .line 344
    iget-object v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 345
    .local v0, "route":I
    iget v6, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    if-eq v0, v6, :cond_1e

    .line 346
    iget-object v6, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 347
    .local v6, "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 348
    .local v12, "aid":Ljava/lang/String;
    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 349
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    if-nez v13, :cond_11

    .line 350
    const-string v13, "AidRoutingManager"

    const-string v14, "This device does not support prefix AIDs."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 351
    :cond_11
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_13

    .line 352
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v13, :cond_12

    const-string v13, "AidRoutingManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Routing prefix AID "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to route "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 352
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_12
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 356
    :cond_13
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_14

    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_1d

    .line 358
    :cond_14
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v13, :cond_15

    const-string v13, "AidRoutingManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Routing prefix AID "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to route "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 358
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_15
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    .line 362
    :cond_16
    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 363
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    if-nez v13, :cond_17

    .line 364
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

    goto/16 :goto_c

    .line 366
    :cond_17
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1a

    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v15, 0x1

    if-ne v13, v15, :cond_18

    goto :goto_b

    .line 370
    :cond_18
    iget v13, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v15, 0x3

    if-ne v13, v15, :cond_1d

    .line 371
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v13, :cond_19

    const-string v13, "AidRoutingManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Routing subset AID "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " to route "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 371
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_19
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 368
    :cond_1a
    :goto_b
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

    goto :goto_c

    .line 376
    :cond_1b
    sget-boolean v13, Lcom/android/nfc/cardemulation/AidRoutingManager;->DBG:Z

    if-eqz v13, :cond_1c

    const-string v13, "AidRoutingManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Routing exact AID "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to route "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 376
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_1c
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/nfc/cardemulation/AidRoutingManager$AidEntry;

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v12    # "aid":Ljava/lang/String;
    :cond_1d
    :goto_c
    goto/16 :goto_a

    .line 343
    .end local v0    # "route":I
    .end local v6    # "aidsForRoute":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_9

    .line 383
    .end local v5    # "i":I
    :cond_1f
    invoke-virtual {v1, v4}, Lcom/android/nfc/cardemulation/AidRoutingManager;->calculateAidRouteSize(Ljava/util/HashMap;)I

    move-result v0

    iget v5, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mMaxAidRoutingTableSize:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-gt v0, v5, :cond_20

    .line 384
    const/4 v0, 0x1

    .line 385
    .end local v17    # "aidRouteResolved":Z
    .local v0, "aidRouteResolved":Z
    move v5, v0

    goto :goto_d

    .line 300
    .end local v0    # "aidRouteResolved":Z
    .restart local v17    # "aidRouteResolved":Z
    :cond_20
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    const/4 v0, 0x0

    goto/16 :goto_3

    .end local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v5, "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v6, "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_21
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .end local v5    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    move/from16 v5, v17

    .line 388
    .end local v10    # "index":I
    .end local v17    # "aidRouteResolved":Z
    .local v5, "aidRouteResolved":Z
    :goto_d
    const/4 v0, 0x1

    if-ne v5, v0, :cond_22

    .line 389
    :try_start_9
    invoke-direct {v1, v4}, Lcom/android/nfc/cardemulation/AidRoutingManager;->commit(Ljava/util/HashMap;)V

    .line 390
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget v6, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    invoke-virtual {v0, v6}, Lcom/android/nfc/NfcService;->updateDefaultAidRoute(I)V

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLastCommitStatus:Z

    goto :goto_e

    .line 393
    :cond_22
    const/16 v0, 0x86

    const/4 v6, 0x3

    const/4 v10, 0x0

    invoke-static {v0, v6, v10, v10}, Landroid/util/StatsLog;->write(IIII)I

    .line 394
    const-string v0, "AidRoutingManager"

    const-string v6, "RoutingTable unchanged because it\'s full, not updating"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->notifyRoutingTableFull()V

    .line 396
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLastCommitStatus:Z

    .line 398
    :goto_e
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 399
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 400
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 401
    :cond_23
    const/4 v0, 0x1

    return v0

    .line 398
    :catchall_2
    move-exception v0

    move/from16 v17, v5

    goto :goto_f

    .end local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .local v5, "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v17    # "aidRouteResolved":Z
    :catchall_3
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    .end local v5    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v23    # "seList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24    # "aidRoutingTable":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Set<Ljava/lang/String;>;>;"
    :goto_f
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_f
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 443
    const-string v0, "Routing table:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Default route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mDefaultRoute:I

    if-nez v1, :cond_0

    const-string v1, "host"

    goto :goto_0

    :cond_0
    const-string v1, "secure element"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 447
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 448
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

    .line 449
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 450
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

    .line 451
    .end local v4    # "aid":Ljava/lang/String;
    goto :goto_2

    .line 446
    .end local v2    # "aids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 453
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLastCommitRoutingStatus()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLastCommitStatus:Z

    return v0
.end method

.method public onNfccRoutingTableCleared()V
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 433
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidRoutingTable:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 434
    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mRouteForAid:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 435
    monitor-exit v0

    .line 436
    return-void

    .line 435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supportsAidPrefixRouting()Z
    .locals 3

    .line 152
    iget v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager;->mAidMatchingSupport:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public supportsAidSubsetRouting()Z
    .locals 2

    .line 158
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

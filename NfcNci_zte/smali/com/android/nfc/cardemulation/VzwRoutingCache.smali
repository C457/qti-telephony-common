.class public Lcom/android/nfc/cardemulation/VzwRoutingCache;
.super Ljava/lang/Object;
.source "VzwRoutingCache.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VzwRoutingCache"


# instance fields
.field final mVzwCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/vzw/nfc/RouteEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method static toHexString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 62
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 63
    .local v0, "HEX_CHARS":[C
    const/4 v1, 0x2

    mul-int v2, v1, p2

    new-array v2, v2, [C

    .line 64
    .local v2, "chars":[C
    move v3, p1

    .local v3, "j":I
    :goto_0
    add-int v4, p1, p2

    if-ge v3, v4, :cond_0

    .line 65
    sub-int v4, v3, p1

    mul-int/2addr v4, v1

    aget-byte v5, p0, v3

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, v0, v5

    aput-char v5, v2, v4

    .line 66
    sub-int v4, v3, p1

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    aget-byte v5, p0, v3

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v0, v5

    aput-char v5, v2, v4

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "j":I
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method


# virtual methods
.method IsAidAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/nfc/RouteEntry;

    .line 58
    .local v0, "elem":Lcom/vzw/nfc/RouteEntry;
    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->isAllowed()Z

    move-result v1

    return v1
.end method

.method addAid([BIIZ)Z
    .locals 6
    .param p1, "aid"    # [B
    .param p2, "route"    # I
    .param p3, "power"    # I
    .param p4, "isAllowed"    # Z

    .line 44
    new-instance v0, Lcom/vzw/nfc/RouteEntry;

    invoke-direct {v0, p1, p3, p2, p4}, Lcom/vzw/nfc/RouteEntry;-><init>([BIIZ)V

    .line 45
    .local v0, "elem":Lcom/vzw/nfc/RouteEntry;
    const-string v1, "VzwRoutingCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "aid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->getAid()[B

    move-result-object v3

    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->getAid()[B

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->toHexString([BII)Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v1, "VzwRoutingCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "power "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v1, "VzwRoutingCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "power state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->getPowerState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v1, "VzwRoutingCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is allowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->isAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->getAid()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->getAid()[B

    move-result-object v3

    array-length v3, v3

    invoke-static {v2, v5, v3}, Lcom/android/nfc/cardemulation/VzwRoutingCache;->toHexString([BII)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const/4 v1, 0x1

    return v1
.end method

.method clear()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 83
    return-void
.end method

.method getPowerState(Ljava/lang/String;)I
    .locals 2
    .param p1, "aid"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vzw/nfc/RouteEntry;

    .line 73
    .local v0, "elem":Lcom/vzw/nfc/RouteEntry;
    invoke-virtual {v0}, Lcom/vzw/nfc/RouteEntry;->getPowerState()I

    move-result v1

    return v1
.end method

.method isAidPresent(Ljava/lang/String;)Z
    .locals 1
    .param p1, "aid"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lcom/android/nfc/cardemulation/VzwRoutingCache;->mVzwCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

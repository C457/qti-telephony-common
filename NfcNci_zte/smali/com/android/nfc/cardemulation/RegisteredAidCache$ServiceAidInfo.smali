.class final Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
.super Ljava/lang/Object;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredAidCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceAidInfo"
.end annotation


# instance fields
.field aid:Ljava/lang/String;

.field category:Ljava/lang/String;

.field service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 99
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 116
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 120
    .local v2, "that":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    .line 121
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v1

    .line 122
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v3, v4}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    .line 124
    :cond_4
    return v0

    .line 116
    .end local v2    # "that":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->hashCode()I

    move-result v0

    .line 130
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 131
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 132
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServiceAidInfo{service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/NxpApduServiceInfo;

    .line 107
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NxpApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", category=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    return-object v0
.end method

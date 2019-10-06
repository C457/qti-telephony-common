.class public Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;
.super Ljava/lang/Object;
.source "SystemCodeRoutingManager.java"


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "SystemCodeRoutingManager"


# instance fields
.field mConfiguredT3tIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mLock:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public configureRouting(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;",
            ">;)Z"
        }
    .end annotation

    .line 41
    .local p1, "t3tIdentifiers":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "toBeAdded":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v1, "toBeRemoved":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;>;"
    iget-object v2, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 44
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 45
    .local v4, "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    iget-object v5, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 46
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .end local v4    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    :cond_0
    goto :goto_0

    .line 49
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 50
    .restart local v4    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 51
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v4    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    :cond_2
    goto :goto_1

    .line 54
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_4

    .line 55
    const-string v3, "SystemCodeRoutingManager"

    const-string v4, "Routing table unchanged, not updating"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v3, 0x0

    monitor-exit v2

    return v3

    .line 59
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 61
    .restart local v4    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v5

    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->t3tPmm:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/nfc/NfcService;->deregisterT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v4    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    goto :goto_2

    .line 64
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 66
    .restart local v4    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v5

    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->t3tPmm:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/nfc/NfcService;->registerT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .end local v4    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    goto :goto_3

    .line 86
    :cond_6
    iput-object p1, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;

    .line 87
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->commitRouting()V

    .line 92
    const/4 v2, 0x1

    return v2

    .line 87
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 110
    const-string v0, "HCE-F routing table:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 113
    .local v2, "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    .end local v2    # "t3tIdentifier":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    goto :goto_0

    .line 116
    :cond_0
    monitor-exit v0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNfccRoutingTableCleared()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->clearT3tIdentifiersCache()V

    .line 105
    iget-object v1, p0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->mConfiguredT3tIdentifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 106
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

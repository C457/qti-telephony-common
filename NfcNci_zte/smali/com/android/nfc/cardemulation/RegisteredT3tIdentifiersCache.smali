.class public Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
.super Ljava/lang/Object;
.source "RegisteredT3tIdentifiersCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "RegisteredT3tIdentifiersCache"


# instance fields
.field final mContext:Landroid/content/Context;

.field mEnabledForegroundService:Landroid/content/ComponentName;

.field final mForegroundT3tIdentifiersCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mNfcEnabled:Z

.field final mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

.field mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mServices:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    .line 79
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    .line 84
    const-string v0, "RegisteredT3tIdentifiersCache"

    const-string v1, "RegisteredT3tIdentifiersCache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    .line 87
    return-void
.end method


# virtual methods
.method clearT3tidentifiercache()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->onNfccRoutingTableCleared()V

    .line 131
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 206
    const-string v0, "T3T Identifier cache entries: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    .line 208
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    NFCID2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    const-string v2, "    NfcFServiceInfo: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v2, p1, p2, p3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 211
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    goto :goto_0

    .line 212
    :cond_0
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 214
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method generateForegroundT3tIdentifiersCacheLocked()V
    .locals 4

    .line 102
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 103
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 105
    .local v1, "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NULL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NULL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 112
    .end local v1    # "service":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_0
    goto :goto_0

    .line 125
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->updateRoutingLocked()V

    .line 126
    return-void
.end method

.method public onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 166
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    if-eqz p1, :cond_1

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 169
    monitor-exit v0

    return-void

    .line 171
    :cond_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    goto :goto_0

    .line 179
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    .line 174
    monitor-exit v0

    return-void

    .line 176
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->generateForegroundT3tIdentifiersCacheLocked()V

    .line 179
    monitor-exit v0

    .line 180
    return-void

    .line 179
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNfcDisabled()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    .line 191
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 192
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->onNfccRoutingTableCleared()V

    .line 195
    return-void

    .line 193
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

    .line 183
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
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
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 157
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mServices:Ljava/util/List;

    goto :goto_0

    .line 159
    :cond_0
    const-string v1, "RegisteredT3tIdentifiersCache"

    const-string v2, "Ignoring update because it\'s not for the current user."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_0
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUserSwitched()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 200
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->updateRoutingLocked()V

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mEnabledForegroundService:Landroid/content/ComponentName;

    .line 202
    monitor-exit v0

    .line 203
    return-void

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveNfcid2(Ljava/lang/String;)Landroid/nfc/cardemulation/NfcFServiceInfo;
    .locals 5
    .param p1, "nfcid2"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/NfcFServiceInfo;

    .line 94
    .local v1, "resolveInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const-string v2, "RegisteredT3tIdentifiersCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolved to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    if-nez v1, :cond_0

    const-string v4, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/nfc/cardemulation/NfcFServiceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    monitor-exit v0

    return-object v1

    .line 97
    .end local v1    # "resolveInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateRoutingLocked()V
    .locals 7

    .line 135
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mNfcEnabled:Z

    if-nez v0, :cond_0

    .line 136
    const-string v0, "RegisteredT3tIdentifiersCache"

    const-string v1, "Not updating routing table because NFC is off."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "t3tIdentifiers":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;>;"
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mForegroundT3tIdentifiersCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 143
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    nop

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 146
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    new-instance v3, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 147
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v4}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/NfcFServiceInfo;

    invoke-virtual {v6}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getT3tPmm()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;-><init>(Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    goto :goto_0

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->mRoutingManager:Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;

    invoke-virtual {v2, v0}, Lcom/android/nfc/cardemulation/SystemCodeRoutingManager;->configureRouting(Ljava/util/List;)Z

    .line 150
    return-void
.end method

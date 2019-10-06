.class public Lcom/android/nfc/cardemulation/EnabledNfcFServices;
.super Ljava/lang/Object;
.source "EnabledNfcFServices.java"

# interfaces
.implements Lcom/android/nfc/ForegroundUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final TAG:Ljava/lang/String; = "EnabledNfcFCardEmulationServices"


# instance fields
.field mActivated:Z

.field final mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

.field mComputeFgRequested:Z

.field final mContext:Landroid/content/Context;

.field mForegroundComponent:Landroid/content/ComponentName;

.field mForegroundRequested:Landroid/content/ComponentName;

.field mForegroundUid:I

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field final mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcFServiceCache"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;
    .param p3, "t3tIdentifiersCache"    # Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
    .param p4, "callback"    # Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mHandler:Landroid/os/Handler;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 45
    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 59
    iput-object p1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 61
    iput-object p3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 62
    iput-object p4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    .line 63
    return-void
.end method


# virtual methods
.method computeEnabledForegroundService()V
    .locals 5

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "foregroundRequested":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 69
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    :try_start_0
    iget-boolean v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    if-eqz v3, :cond_0

    .line 71
    const-string v3, "EnabledNfcFCardEmulationServices"

    const-string v4, "configuration will be postponed until deactivation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 73
    monitor-exit v2

    return-void

    .line 75
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 76
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    move-object v0, v3

    .line 77
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 79
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 80
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 81
    const/4 v1, 0x1

    goto :goto_0

    .line 82
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    .line 83
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 84
    const/4 v1, 0x1

    .line 86
    :cond_3
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v1, :cond_4

    .line 89
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    invoke-interface {v2, v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;->onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V

    .line 91
    :cond_4
    return-void

    .line 86
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 219
    return-void
.end method

.method public onHostEmulationActivated()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 180
    monitor-exit v0

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostEmulationDeactivated()V
    .locals 3

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "needComputeFg":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 187
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 188
    iget-boolean v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    if-eqz v2, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    if-eqz v0, :cond_1

    .line 193
    const-string v1, "EnabledNfcFCardEmulationServices"

    const-string v2, "do postponed configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 196
    :cond_1
    return-void

    .line 191
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onNfcDisabled()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 201
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 202
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 203
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 204
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 205
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServicesUpdated()V
    .locals 4

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "EnabledNfcFCardEmulationServices"

    const-string v3, "Removing foreground enabled service because of service update."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 101
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 102
    const/4 v0, 0x1

    .line 104
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 108
    :cond_1
    return-void

    .line 104
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onUidToBackground(I)V
    .locals 0
    .param p1, "uid"    # I

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->unregisterForegroundService(I)Z

    .line 174
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 209
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 210
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 211
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 212
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 213
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 214
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 215
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerEnabledForegroundService(Landroid/content/ComponentName;I)Z
    .locals 6
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 115
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 114
    invoke-virtual {v2, v3, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v2

    .line 116
    .local v2, "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 117
    monitor-exit v1

    return v3

    .line 119
    :cond_0
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 120
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 121
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getT3tPmm()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 125
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    const-string v3, "EnabledNfcFCardEmulationServices"

    const-string v4, "The servcie is already requested to the foreground service."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v3, 0x1

    monitor-exit v1

    return v3

    .line 129
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v3, p0, p2}, Lcom/android/nfc/ForegroundUtils;->registerUidToBackgroundCallback(Lcom/android/nfc/ForegroundUtils$Callback;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 130
    iput-object p1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 131
    iput p2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 132
    const/4 v0, 0x1

    goto :goto_0

    .line 134
    :cond_3
    const-string v3, "EnabledNfcFCardEmulationServices"

    const-string v4, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 140
    :cond_4
    return v0

    .line 122
    .restart local v2    # "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_5
    :goto_1
    :try_start_1
    monitor-exit v1

    return v3

    .line 136
    .end local v2    # "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method unregisterForegroundService(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    iget v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    if-ne v2, p1, :cond_0

    .line 148
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 149
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 150
    const/4 v0, 0x1

    .line 152
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 156
    :cond_1
    return v0

    .line 152
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public unregisteredEnabledForegroundService(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .line 162
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v0, p1}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->unregisterForegroundService(I)Z

    move-result v0

    return v0

    .line 165
    :cond_0
    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    return v0
.end method

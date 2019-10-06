.class Lcom/android/nfc/NfcService$WatchDogThread;
.super Ljava/lang/Thread;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchDogThread"
.end annotation


# instance fields
.field final mCancelWaiter:Ljava/lang/Object;

.field mCanceled:Z

.field final mTimeout:I

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .line 3735
    iput-object p1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->this$0:Lcom/android/nfc/NfcService;

    .line 3736
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3731
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    .line 3733
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCanceled:Z

    .line 3737
    iput p3, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mTimeout:I

    .line 3738
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 3759
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3760
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCanceled:Z

    .line 3761
    iget-object v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3762
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3763
    monitor-exit p0

    return-void

    .line 3762
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3758
    :catchall_1
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/nfc/NfcService$WatchDogThread;
    throw v0
.end method

.method public run()V
    .locals 4

    .line 3743
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3744
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    iget v2, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 3745
    iget-boolean v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCanceled:Z

    if-eqz v1, :cond_0

    .line 3746
    monitor-exit v0

    return-void

    .line 3748
    :cond_0
    monitor-exit v0

    .line 3753
    goto :goto_0

    .line 3748
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3749
    :catch_0
    move-exception v0

    .line 3751
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "NfcService"

    const-string v2, "Watchdog thread interruped."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$WatchDogThread;->interrupt()V

    .line 3754
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const-string v0, "NfcService"

    const-string v1, "Watchdog triggered, aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    iget-object v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->access$1100(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/nfc/NfcService$WatchDogThread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->doAbort(Ljava/lang/String;)V

    .line 3756
    return-void
.end method

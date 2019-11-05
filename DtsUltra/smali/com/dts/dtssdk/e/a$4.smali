.class public final Lcom/dts/dtssdk/e/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtssdk/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dts/dtssdk/e/a;


# direct methods
.method public constructor <init>(Lcom/dts/dtssdk/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/dts/dtssdk/e/a;->f()Ljava/lang/String;

    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v0}, Lcom/dts/dtssdk/e/a;->e(Lcom/dts/dtssdk/e/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v0}, Lcom/dts/dtssdk/e/a;->b(Lcom/dts/dtssdk/e/a;)Landroid/media/AudioTrack;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v0}, Lcom/dts/dtssdk/e/a;->c(Lcom/dts/dtssdk/e/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    monitor-enter v4

    :try_start_1
    iget-object v0, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v0}, Lcom/dts/dtssdk/e/a;->b(Lcom/dts/dtssdk/e/a;)Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v5, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v5}, Lcom/dts/dtssdk/e/a;->g(Lcom/dts/dtssdk/e/a;)[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v7}, Lcom/dts/dtssdk/e/a;->g(Lcom/dts/dtssdk/e/a;)[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/AudioTrack;->write([BII)I

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object v4, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    iget-object v0, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v0}, Lcom/dts/dtssdk/e/a;->c(Lcom/dts/dtssdk/e/a;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v4, v0}, Lcom/dts/dtssdk/e/a;->a(Lcom/dts/dtssdk/e/a;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v0}, Lcom/dts/dtssdk/e/a;->f(Lcom/dts/dtssdk/e/a;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    :catch_0
    move-exception v0

    move v3, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    iget-object v4, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    monitor-enter v4

    :try_start_3
    iget-object v0, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v0}, Lcom/dts/dtssdk/e/a;->b(Lcom/dts/dtssdk/e/a;)Landroid/media/AudioTrack;

    move-result-object v0

    iget-object v5, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v5}, Lcom/dts/dtssdk/e/a;->h(Lcom/dts/dtssdk/e/a;)[B

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/dts/dtssdk/e/a$4;->a:Lcom/dts/dtssdk/e/a;

    invoke-static {v7}, Lcom/dts/dtssdk/e/a;->h(Lcom/dts/dtssdk/e/a;)[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/AudioTrack;->write([BII)I

    monitor-exit v4

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/dts/dtssdk/e/a;->f()Ljava/lang/String;

    return-void
.end method

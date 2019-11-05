.class final Lcom/a/b/bu$1;
.super Ljava/util/concurrent/ThreadPoolExecutor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/bu;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/bu;


# direct methods
.method constructor <init>(Lcom/a/b/bu;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
    .locals 8

    iput-object p1, p0, Lcom/a/b/bu$1;->a:Lcom/a/b/bu;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const-wide/16 v4, 0x1388

    move-object v1, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method


# virtual methods
.method protected final afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/a/b/bu;->a(Ljava/lang/Runnable;)Lcom/a/b/dg;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/a/b/bu$1;->a:Lcom/a/b/bu;

    invoke-static {v1}, Lcom/a/b/bu;->a(Lcom/a/b/bu;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/a/b/bu$1;->a:Lcom/a/b/bu;

    invoke-static {v2}, Lcom/a/b/bu;->a(Lcom/a/b/bu;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/a/b/bu$1;->a:Lcom/a/b/bu;

    invoke-static {v1, v0}, Lcom/a/b/bu;->a(Lcom/a/b/bu;Lcom/a/b/dg;)V

    new-instance v1, Lcom/a/b/bu$1$2;

    invoke-direct {v1, p0, v0}, Lcom/a/b/bu$1$2;-><init>(Lcom/a/b/bu$1;Lcom/a/b/dg;)V

    invoke-virtual {v1}, Lcom/a/b/bu$1$2;->run()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 2

    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    invoke-static {p2}, Lcom/a/b/bu;->a(Ljava/lang/Runnable;)Lcom/a/b/dg;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/a/b/bu$1$1;

    invoke-direct {v1, p0, v0}, Lcom/a/b/bu$1$1;-><init>(Lcom/a/b/bu$1;Lcom/a/b/dg;)V

    invoke-virtual {v1}, Lcom/a/b/bu$1$1;->run()V

    goto :goto_0
.end method

.method protected final newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TV;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/a/b/bt;

    invoke-direct {v0, p1, p2}, Lcom/a/b/bt;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/a/b/bu$1;->a:Lcom/a/b/bu;

    invoke-static {v1}, Lcom/a/b/bu;->a(Lcom/a/b/bu;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/a/b/bu$1;->a:Lcom/a/b/bu;

    invoke-static {v2}, Lcom/a/b/bu;->a(Lcom/a/b/bu;)Ljava/util/HashMap;

    move-result-object v2

    check-cast p1, Lcom/a/b/dg;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TV;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Callable not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

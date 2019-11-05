.class final Lcom/a/b/cv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/b/cv$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Timer;

.field private b:Lcom/a/b/cv$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/b/cv;->a:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/cv;->a:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/cv;->a:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/cv;->b:Lcom/a/b/cv$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/b/cv;->a:Ljava/util/Timer;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/b/cv;->a()V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    const-string v1, "FlurrySessionTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/a/b/cv;->a:Ljava/util/Timer;

    new-instance v0, Lcom/a/b/cv$a;

    invoke-direct {v0, p0}, Lcom/a/b/cv$a;-><init>(Lcom/a/b/cv;)V

    iput-object v0, p0, Lcom/a/b/cv;->b:Lcom/a/b/cv$a;

    iget-object v0, p0, Lcom/a/b/cv;->a:Ljava/util/Timer;

    iget-object v1, p0, Lcom/a/b/cv;->b:Lcom/a/b/cv$a;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

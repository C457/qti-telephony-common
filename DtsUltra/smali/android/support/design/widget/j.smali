.class final Landroid/support/design/widget/j;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/j$b;,
        Landroid/support/design/widget/j$a;
    }
.end annotation


# static fields
.field private static e:Landroid/support/design/widget/j;


# instance fields
.field final a:Ljava/lang/Object;

.field final b:Landroid/os/Handler;

.field c:Landroid/support/design/widget/j$b;

.field d:Landroid/support/design/widget/j$b;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/j;->a:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/support/design/widget/j$1;

    invoke-direct {v2, p0}, Landroid/support/design/widget/j$1;-><init>(Landroid/support/design/widget/j;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/support/design/widget/j;->b:Landroid/os/Handler;

    return-void
.end method

.method static a()Landroid/support/design/widget/j;
    .locals 1

    sget-object v0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/design/widget/j;

    invoke-direct {v0}, Landroid/support/design/widget/j;-><init>()V

    sput-object v0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j;

    :cond_0
    sget-object v0, Landroid/support/design/widget/j;->e:Landroid/support/design/widget/j;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/j$a;)V
    .locals 3

    iget-object v1, p0, Landroid/support/design/widget/j;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/j;->d(Landroid/support/design/widget/j$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    iget-boolean v0, v0, Landroid/support/design/widget/j$b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/design/widget/j$b;->c:Z

    iget-object v0, p0, Landroid/support/design/widget/j;->b:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Landroid/support/design/widget/j$b;)V
    .locals 6

    iget v0, p1, Landroid/support/design/widget/j$b;->b:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0xabe

    iget v1, p1, Landroid/support/design/widget/j$b;->b:I

    if-lez v1, :cond_2

    iget v0, p1, Landroid/support/design/widget/j$b;->b:I

    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/support/design/widget/j;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Landroid/support/design/widget/j;->b:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/design/widget/j;->b:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget v1, p1, Landroid/support/design/widget/j$b;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/16 v0, 0x5dc

    goto :goto_1
.end method

.method final a(Landroid/support/design/widget/j$b;I)Z
    .locals 2

    iget-object v0, p1, Landroid/support/design/widget/j$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/j$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/j;->b:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-interface {v0, p2}, Landroid/support/design/widget/j$a;->a(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    iput-object v0, p0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    iput-object v1, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    iget-object v0, p0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    iget-object v0, v0, Landroid/support/design/widget/j$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/j$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/support/design/widget/j$a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v1, p0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    goto :goto_0
.end method

.method public final b(Landroid/support/design/widget/j$a;)V
    .locals 3

    iget-object v1, p0, Landroid/support/design/widget/j;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/j;->d(Landroid/support/design/widget/j$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    iget-boolean v0, v0, Landroid/support/design/widget/j$b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/design/widget/j$b;->c:Z

    iget-object v0, p0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/j;->a(Landroid/support/design/widget/j$b;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c(Landroid/support/design/widget/j$a;)Z
    .locals 2

    iget-object v1, p0, Landroid/support/design/widget/j;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/j;->d(Landroid/support/design/widget/j$a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/j;->e(Landroid/support/design/widget/j$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final d(Landroid/support/design/widget/j$a;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/j;->c:Landroid/support/design/widget/j$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/j$b;->a(Landroid/support/design/widget/j$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e(Landroid/support/design/widget/j$a;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/j;->d:Landroid/support/design/widget/j$b;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/j$b;->a(Landroid/support/design/widget/j$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

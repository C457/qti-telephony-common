.class public Lcom/a/b/bg;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/a/b/cs;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field public volatile f:J

.field private final g:Lcom/a/b/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bq",
            "<",
            "Lcom/a/b/ct;",
            ">;"
        }
    .end annotation
.end field

.field private volatile h:J

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/bg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/bg;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/a/b/bg;->c:J

    iput-wide v2, p0, Lcom/a/b/bg;->d:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/a/b/bg;->e:J

    iput-wide v2, p0, Lcom/a/b/bg;->f:J

    new-instance v0, Lcom/a/b/bg$1;

    invoke-direct {v0, p0}, Lcom/a/b/bg$1;-><init>(Lcom/a/b/bg;)V

    iput-object v0, p0, Lcom/a/b/bg;->g:Lcom/a/b/bq;

    iput-wide v2, p0, Lcom/a/b/bg;->h:J

    invoke-static {}, Lcom/a/b/br;->a()Lcom/a/b/br;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/a/b/bg;->g:Lcom/a/b/bq;

    invoke-virtual {v0, v1, v2}, Lcom/a/b/br;->a(Ljava/lang/String;Lcom/a/b/bq;)V

    new-instance v0, Lcom/a/b/bg$2;

    invoke-direct {v0, p0}, Lcom/a/b/bg$2;-><init>(Lcom/a/b/bg;)V

    iput-object v0, p0, Lcom/a/b/bg;->k:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/a/b/bg;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/a/b/bg;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Lcom/a/b/bg;)Lcom/a/b/bq;
    .locals 1

    iget-object v0, p0, Lcom/a/b/bg;->g:Lcom/a/b/bq;

    return-object v0
.end method

.method public static b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/a/b/cu;->a()Lcom/a/b/cu;

    move-result-object v0

    iget-wide v0, v0, Lcom/a/b/cu;->a:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/a/b/bg;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/a/b/bg;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()J
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/a/b/bg;->d:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/a/b/bg;->h:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    iput-wide v0, p0, Lcom/a/b/bg;->h:J

    iget-wide v0, p0, Lcom/a/b/bg;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/a/b/bg;->h:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/a/b/bg;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/b/bg;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/b/bg;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/b/bg;->k:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

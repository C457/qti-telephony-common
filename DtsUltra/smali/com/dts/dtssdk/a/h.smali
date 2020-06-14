.class Lcom/dts/dtssdk/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dts/dtssdk/a/h$k;,
        Lcom/dts/dtssdk/a/h$a;,
        Lcom/dts/dtssdk/a/h$c;,
        Lcom/dts/dtssdk/a/h$d;,
        Lcom/dts/dtssdk/a/h$m;,
        Lcom/dts/dtssdk/a/h$h;,
        Lcom/dts/dtssdk/a/h$l;,
        Lcom/dts/dtssdk/a/h$i;,
        Lcom/dts/dtssdk/a/h$j;,
        Lcom/dts/dtssdk/a/h$g;,
        Lcom/dts/dtssdk/a/h$b;,
        Lcom/dts/dtssdk/a/h$f;,
        Lcom/dts/dtssdk/a/h$e;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/dts/dtssdk/a/h;

.field private static e:Lcom/dts/dtssdk/a/h$e;


# instance fields
.field a:Ljava/util/concurrent/ExecutorService;

.field private d:Lcom/dts/dtssdk/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/dts/dtssdk/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/a/h;->b:Ljava/lang/String;

    new-instance v0, Lcom/dts/dtssdk/a/h$e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/a/h$e;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/dts/dtssdk/a/h;->e:Lcom/dts/dtssdk/a/h$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;
    .locals 1

    iget-object v0, p0, Lcom/dts/dtssdk/a/h;->d:Lcom/dts/dtssdk/a/b;

    return-object v0
.end method

.method static a()Lcom/dts/dtssdk/a/h;
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/a/h;->c:Lcom/dts/dtssdk/a/h;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtssdk/a/h;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtssdk/a/h;->c:Lcom/dts/dtssdk/a/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/a/h;

    invoke-direct {v0}, Lcom/dts/dtssdk/a/h;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/a/h;->c:Lcom/dts/dtssdk/a/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/a/h;->c:Lcom/dts/dtssdk/a/h;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/dts/dtssdk/a/h;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/dts/dtssdk/a/h;)Lcom/dts/dtssdk/a/b;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dts/dtssdk/a/h;->d:Lcom/dts/dtssdk/a/b;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Lcom/dts/dtssdk/a/h$e;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/a/h;->e:Lcom/dts/dtssdk/a/h$e;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtssdk/a/h;->d:Lcom/dts/dtssdk/a/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtssdk/a/b;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/dts/dtssdk/a/h;->d:Lcom/dts/dtssdk/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/a/b;

    invoke-direct {v0, p1}, Lcom/dts/dtssdk/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dts/dtssdk/a/h;->d:Lcom/dts/dtssdk/a/b;

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/dts/dtssdk/a/h$l;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/dts/dtssdk/a/h$l;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/dts/dtssdk/c/a",
            "<[B>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/dts/dtssdk/a/h$d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/dts/dtssdk/a/h$d;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/dts/dtssdk/c/a;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

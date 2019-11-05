.class public final Lcom/a/b/bf;
.super Lcom/a/b/bu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/b/bu",
        "<",
        "Lcom/a/b/cd;",
        ">;"
    }
.end annotation


# static fields
.field private static a:Lcom/a/b/bf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/a/b/bf;->a:Lcom/a/b/bf;

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    const-class v0, Lcom/a/b/bf;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v2, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v3, 0xb

    new-instance v4, Lcom/a/b/bs;

    invoke-direct {v4}, Lcom/a/b/bs;-><init>()V

    invoke-direct {v2, v3, v4}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/a/b/bu;-><init>(Ljava/lang/String;Ljava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public static declared-synchronized a()Lcom/a/b/bf;
    .locals 2

    const-class v1, Lcom/a/b/bf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/a/b/bf;->a:Lcom/a/b/bf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/b/bf;

    invoke-direct {v0}, Lcom/a/b/bf;-><init>()V

    sput-object v0, Lcom/a/b/bf;->a:Lcom/a/b/bf;

    :cond_0
    sget-object v0, Lcom/a/b/bf;->a:Lcom/a/b/bf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

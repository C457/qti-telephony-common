.class public final Lcom/a/b/at;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/a/b/at;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/a/b/at;
    .locals 2

    const-class v1, Lcom/a/b/at;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/a/b/at;->a:Lcom/a/b/at;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/b/at;

    invoke-direct {v0}, Lcom/a/b/at;-><init>()V

    sput-object v0, Lcom/a/b/at;->a:Lcom/a/b/at;

    :cond_0
    sget-object v0, Lcom/a/b/at;->a:Lcom/a/b/at;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.class public Lcom/dts/dtssdk/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dts/dtssdk/g;

.field private static final c:Lcom/dts/dtssdk/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    new-instance v0, Lcom/dts/dtssdk/a;

    invoke-direct {v0}, Lcom/dts/dtssdk/a;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/g;->c:Lcom/dts/dtssdk/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/dts/dtssdk/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->j:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "getGEQ() API called, but GEQ feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0}, Lcom/dts/dtssdk/DtsCore;->a(I)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(II)Lcom/dts/dtssdk/f/a;
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->j:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "setGEQ() API called, but GEQ feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1}, Lcom/dts/dtssdk/DtsCore;->a(II)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/dts/dtssdk/f/a;
    .locals 1

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dts/dtssdk/DtsCore;->a(Landroid/content/Context;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;
    .locals 1

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1}, Lcom/dts/dtssdk/DtsCore;->a(Landroid/content/Context;Z)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAccessoryUuid() API called, but route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not enabled. Aborting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->A:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/a/j;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Lcom/dts/dtssdk/a/n;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->i:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "getStereoPreference() API called, but stereo preference feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)Lcom/dts/dtssdk/f/a;
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->o:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "Dialog level is disabled or not supported. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1, p2}, Lcom/dts/dtssdk/DtsCore;->c(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/a/n;)Lcom/dts/dtssdk/f/a;
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->i:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "setStereoPreference() API called, but stereo preference feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1, p2}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/a/n;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Z)Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/a/j;",
            "Z)",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->p:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "Loudness leveling control is disabled or not supported. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1, p2}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;Z)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Z)Lcom/dts/dtssdk/f/a;
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->j:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->k:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "setGEQ() API called, but GEQ feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0}, Lcom/dts/dtssdk/DtsCore;->a(Z)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([F)Lcom/dts/dtssdk/f/a;
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->f:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "setListeningTest() API called, but listening test feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0}, Lcom/dts/dtssdk/DtsCore;->a([F)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([I)Lcom/dts/dtssdk/f/a;
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->j:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "setGEQ() API called, but GEQ feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0}, Lcom/dts/dtssdk/DtsCore;->a([I)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()Lcom/dts/dtssdk/g;
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/g;->b:Lcom/dts/dtssdk/g;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtssdk/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtssdk/g;->b:Lcom/dts/dtssdk/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/g;

    invoke-direct {v0}, Lcom/dts/dtssdk/g;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/g;->b:Lcom/dts/dtssdk/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/g;->b:Lcom/dts/dtssdk/g;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;ILandroid/app/Notification;)V
    .locals 0

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1, p2}, Lcom/dts/dtssdk/DtsCore;->a(Landroid/content/Context;ILandroid/app/Notification;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V
    .locals 3

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    move-result-object v0

    new-instance v1, Lcom/dts/dtssdk/DtsCore$a;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/dts/dtssdk/DtsCore$a;-><init>(Lcom/dts/dtssdk/DtsCore;Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/dts/dtssdk/DtsCore$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;Lcom/dts/dtssdk/c/b;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAccessory() API called, but route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not enabled. Aborting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->A:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    invoke-interface {p4, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    move-result-object v0

    iget-object v1, p3, Lcom/dts/dtssdk/a/a;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/dts/dtssdk/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, p3, v1, p1, p4}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;Ljava/lang/Boolean;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V

    :goto_1
    invoke-virtual {v0}, Lcom/dts/dtssdk/DtsCore;->k()Lcom/dts/dtssdk/util/a;

    move-result-object v1

    sget-object v2, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    if-ne p2, v1, :cond_3

    invoke-static {p0, p3}, Lcom/dts/dtssdk/util/BluetoothConnectionManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/a;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2, p3, v1, p1, p4}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/a;Ljava/lang/Boolean;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/dts/dtssdk/DtsCore;->k()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    if-ne p2, v0, :cond_0

    invoke-static {p0, p3}, Lcom/dts/dtssdk/util/UsbConnectionManager;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/a;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V
    .locals 3

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "setContentMode() API called, but speaker mode feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    invoke-interface {p3, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "Cannot call setContentMode() with null content Mode UUID. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Content Mode UUID cannot be null"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    :cond_3
    sget-object v0, Lcom/dts/dtssdk/util/d;->a:Lcom/dts/dtssdk/util/d;

    :goto_2
    sget-object v1, Lcom/dts/dtssdk/util/d;->a:Lcom/dts/dtssdk/util/d;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "Cannot call setContentMode() with invalid UUID. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content Mode UUID ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-interface {p3, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    goto :goto_0

    :sswitch_0
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a19"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a20"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a16"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a28"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a29"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a30"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a44"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a45"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "f08a4c48-0887-11e4-9191-0800200c9a46"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_1

    :pswitch_0
    sget-object v0, Lcom/dts/dtssdk/util/d;->b:Lcom/dts/dtssdk/util/d;

    goto/16 :goto_2

    :pswitch_1
    sget-object v0, Lcom/dts/dtssdk/util/d;->c:Lcom/dts/dtssdk/util/d;

    goto/16 :goto_2

    :pswitch_2
    sget-object v0, Lcom/dts/dtssdk/util/d;->d:Lcom/dts/dtssdk/util/d;

    goto/16 :goto_2

    :pswitch_3
    sget-object v0, Lcom/dts/dtssdk/util/d;->e:Lcom/dts/dtssdk/util/d;

    goto/16 :goto_2

    :pswitch_4
    sget-object v0, Lcom/dts/dtssdk/util/d;->f:Lcom/dts/dtssdk/util/d;

    goto/16 :goto_2

    :pswitch_5
    sget-object v0, Lcom/dts/dtssdk/util/d;->g:Lcom/dts/dtssdk/util/d;

    goto/16 :goto_2

    :pswitch_6
    sget-object v0, Lcom/dts/dtssdk/util/d;->h:Lcom/dts/dtssdk/util/d;

    goto/16 :goto_2

    :pswitch_7
    sget-object v0, Lcom/dts/dtssdk/util/d;->i:Lcom/dts/dtssdk/util/d;

    goto/16 :goto_2

    :pswitch_8
    sget-object v0, Lcom/dts/dtssdk/util/d;->j:Lcom/dts/dtssdk/util/d;

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p3}, Lcom/dts/dtssdk/DtsCore;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7f65d5fc -> :sswitch_2
        -0x7f65d5f9 -> :sswitch_0
        -0x7f65d5e3 -> :sswitch_1
        -0x7f65d5db -> :sswitch_3
        -0x7f65d5da -> :sswitch_4
        -0x7f65d5c4 -> :sswitch_5
        -0x7f65d5a1 -> :sswitch_6
        -0x7f65d5a0 -> :sswitch_7
        -0x7f65d59f -> :sswitch_8
        0x552c5040 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/c/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/j;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "getAllContentModes() API called, but content mode feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/dts/dtssdk/c/c;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    move-result-object v0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v1

    sget-object v2, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    invoke-virtual {v1, v2}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    new-instance v2, Lcom/dts/dtssdk/DtsCore$1;

    invoke-direct {v2, v0, v1, p1}, Lcom/dts/dtssdk/DtsCore$1;-><init>(Lcom/dts/dtssdk/DtsCore;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    invoke-static {p0, v2}, Lcom/dts/dtssdk/a/e;->a(Landroid/content/Context;Lcom/dts/dtssdk/c/c;)V

    :cond_1
    return-void
.end method

.method public static a(Lcom/dts/dtssdk/util/h;)V
    .locals 0

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/h;)V

    return-void
.end method

.method public static b()Lcom/dts/dtssdk/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->d()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/a/j;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->o:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "Dialog level is disabled or not supported. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1}, Lcom/dts/dtssdk/DtsCore;->e(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)Lcom/dts/dtssdk/f/a;
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->m:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "Treble level is disabled or not supported. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1, p2}, Lcom/dts/dtssdk/DtsCore;->a(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->g:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->d:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/dts/dtssdk/util/BluetoothConnectionManager;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "setContentMode() API called, but content mode feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    invoke-interface {p2, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/dts/dtssdk/DtsCore;->a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/c/b;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/dts/dtssdk/h;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method public static c()Lcom/dts/dtssdk/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "getContentModeOnSpeakerUuid() API called, but speaker mode feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->e()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/a/j;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->m:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "Treble level is disabled or not supported. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1}, Lcom/dts/dtssdk/DtsCore;->b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)Lcom/dts/dtssdk/f/a;
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->n:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "Bass level is disabled or not supported. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1, p2}, Lcom/dts/dtssdk/DtsCore;->b(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;I)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->h:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/util/a;->e:Lcom/dts/dtssdk/util/a;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/dts/dtssdk/util/UsbConnectionManager;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static d()Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->j:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->k:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "getGEQ() API called, but GEQ feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->f()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/a/j;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->p:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "Loudness leveling control API called, but feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1}, Lcom/dts/dtssdk/DtsCore;->c(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0}, Lcom/dts/dtssdk/DtsCore;->b(Landroid/content/Context;)V

    return-void
.end method

.method public static e()Lcom/dts/dtssdk/f/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->j:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "getGEQ() API called, but GEQ feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->g()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/a/j;",
            ")",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->n:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "Bass level is disabled or not supported. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {p0, p1}, Lcom/dts/dtssdk/DtsCore;->d(Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/a/j;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static f()Lcom/dts/dtssdk/util/a;
    .locals 1

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/DtsCore;->k()Lcom/dts/dtssdk/util/a;

    move-result-object v0

    return-object v0
.end method

.method public static g()Lcom/dts/dtssdk/f/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->f:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "getListeningTest() API called, but listening test feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->h()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static h()Lcom/dts/dtssdk/f/a;
    .locals 2

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->f:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "resetListeningTest() API called, but listening test feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->i()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    goto :goto_0
.end method

.method public static i()Lcom/dts/dtssdk/f/a;
    .locals 1

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->j()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()Lcom/dts/dtssdk/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/dts/dtssdk/f/a",
            "<",
            "Lcom/dts/dtssdk/l;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->a()Lcom/dts/dtssdk/DtsCore;

    invoke-static {}, Lcom/dts/dtssdk/DtsCore;->c()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;Ljava/lang/String;Lcom/dts/dtssdk/c/b;)V
    .locals 8

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAccessory() API called, but route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not enabled. Aborting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->A:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    invoke-interface {p5, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    :goto_0
    return-void

    :cond_0
    if-nez p4, :cond_1

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "Cannot call setAccessory() with null UUID. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->e:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Accessory UUID cannot be null"

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-interface {p5, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    goto :goto_0

    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/dts/dtssdk/a/a/a;

    sget v1, Lcom/dts/dtssdk/a/a/a$a;->c:I

    invoke-direct {v0, v1, p4}, Lcom/dts/dtssdk/a/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    new-instance v0, Lcom/dts/dtssdk/g$2;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/dts/dtssdk/g$2;-><init>(Lcom/dts/dtssdk/g;Ljava/lang/String;Lcom/dts/dtssdk/c/b;Landroid/content/Context;Lcom/dts/dtssdk/a/j;Lcom/dts/dtssdk/util/a;)V

    invoke-static {p1, v7, v0}, Lcom/dts/dtssdk/a/e;->e(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/dts/dtssdk/c/b;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v1, "getContentMode() API called, but content mode feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    invoke-interface {p2, v0}, Lcom/dts/dtssdk/c/b;->a(Lcom/dts/dtssdk/f/a;)V

    :cond_0
    new-instance v1, Lcom/dts/dtssdk/g$4;

    invoke-direct {v1, p0, p2}, Lcom/dts/dtssdk/g$4;-><init>(Lcom/dts/dtssdk/g;Lcom/dts/dtssdk/c/b;)V

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v2, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v2}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    const-string v2, "getSpeakerMode() API called, but speaker mode feature is not enabled. Aborting"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    invoke-interface {v1, v0, v3}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/g;->c()Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, v0, v3}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v2, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v2}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v2, "Speaker mode has not been applied yet."

    iput-object v2, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/dts/dtssdk/g;->c:Lcom/dts/dtssdk/a;

    new-instance v3, Lcom/dts/dtssdk/g$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/dts/dtssdk/g$1;-><init>(Lcom/dts/dtssdk/g;Lcom/dts/dtssdk/c/a;Ljava/lang/String;)V

    invoke-static {v2, p1, v0, v3}, Lcom/dts/dtssdk/a/g;->a(Lcom/dts/dtssdk/a;Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/c;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/c/a",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/util/a;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/g;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAccessory() API called, but route "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not enabled. Aborting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->A:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    invoke-interface {p3, v0, v3}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Lcom/dts/dtssdk/g;->a(Lcom/dts/dtssdk/util/a;)Lcom/dts/dtssdk/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dts/dtssdk/f/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p3, v0, v3}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/dts/dtssdk/f/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->b:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const-string v1, "Accessory has not been applied yet."

    iput-object v1, v0, Lcom/dts/dtssdk/f/a;->b:Ljava/lang/String;

    invoke-interface {p3, v0, v3}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/dts/dtssdk/a/a/a;

    sget v3, Lcom/dts/dtssdk/a/a/a$a;->c:I

    invoke-direct {v2, v3, v0}, Lcom/dts/dtssdk/a/a/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/dts/dtssdk/a/e;->a()Lcom/dts/dtssdk/a/e;

    new-instance v2, Lcom/dts/dtssdk/g$3;

    invoke-direct {v2, p0, p3, v0}, Lcom/dts/dtssdk/g$3;-><init>(Lcom/dts/dtssdk/g;Lcom/dts/dtssdk/c/a;Ljava/lang/String;)V

    invoke-static {p1, v1, v2}, Lcom/dts/dtssdk/a/e;->e(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    goto :goto_0
.end method

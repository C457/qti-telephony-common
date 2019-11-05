.class public Lcom/dts/dtssdk/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/dts/dtssdk/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/dts/dtssdk/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dts/dtssdk/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/dts/dtssdk/a/e;
    .locals 2

    sget-object v0, Lcom/dts/dtssdk/a/e;->b:Lcom/dts/dtssdk/a/e;

    if-nez v0, :cond_1

    const-class v1, Lcom/dts/dtssdk/a/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dts/dtssdk/a/e;->b:Lcom/dts/dtssdk/a/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/dts/dtssdk/a/e;

    invoke-direct {v0}, Lcom/dts/dtssdk/a/e;-><init>()V

    sput-object v0, Lcom/dts/dtssdk/a/e;->b:Lcom/dts/dtssdk/a/e;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/dts/dtssdk/a/e;->b:Lcom/dts/dtssdk/a/e;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/c/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dts/dtssdk/c/a",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/dts/dtssdk/a/h$c;

    invoke-direct {v2, v0, p0, p1}, Lcom/dts/dtssdk/a/h$c;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Lcom/dts/dtssdk/c/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/c/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/l;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->l:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/dts/dtssdk/a/e;->a:Ljava/lang/String;

    const-string v1, "querySpeakerModes() API called, but speaker modes feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v1}, Lcom/dts/dtssdk/c/c;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;Ljava/lang/String;Lcom/dts/dtssdk/c/c;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/a;)V
    .locals 3
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

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->d:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/a/e;->a:Ljava/lang/String;

    const-string v1, "queryInboxHeadphone() API called, but inbox headphone feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/dts/dtssdk/c/a;->a(Lcom/dts/dtssdk/f/a;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/dts/dtssdk/a/h$j;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/dts/dtssdk/a/h$j;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p0, v0, p2}, Lcom/dts/dtssdk/a/e;->b(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a/b;",
            ">;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/i;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/dts/dtssdk/a/h$i;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/dts/dtssdk/a/h$i;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/dts/dtssdk/c/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dts/dtssdk/c/a",
            "<",
            "Lcom/dts/dtssdk/a/f;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/dts/dtssdk/a/h$a;

    invoke-direct {v2, v0, p0, p1}, Lcom/dts/dtssdk/a/h$a;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Lcom/dts/dtssdk/c/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/dts/dtssdk/util/a;Lcom/dts/dtssdk/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/dts/dtssdk/util/a;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {p0, v0, p2}, Lcom/dts/dtssdk/a/e;->c(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a/b;",
            ">;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->c:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/a/e;->a:Ljava/lang/String;

    const-string v1, "queryStandardAccessories() API called, but generic headphone feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0, v1}, Lcom/dts/dtssdk/c/c;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v6, v1, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/dts/dtssdk/a/h$g;

    sget v5, Lcom/dts/dtssdk/a/b$a;->a:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/dts/dtssdk/a/h$g;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;I)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a/b;",
            ">;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->b:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/a/e;->a:Ljava/lang/String;

    const-string v1, "queryFeaturedAccessories() API called, but featured headphone feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0, v1}, Lcom/dts/dtssdk/c/c;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v6, v1, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/dts/dtssdk/a/h$g;

    sget v5, Lcom/dts/dtssdk/a/b$a;->c:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/dts/dtssdk/a/h$g;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;I)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a/b;",
            ">;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/f;->a()Lcom/dts/dtssdk/f;

    move-result-object v0

    sget-object v1, Lcom/dts/dtssdk/e;->a:Lcom/dts/dtssdk/e;

    invoke-virtual {v0, v1}, Lcom/dts/dtssdk/f;->a(Lcom/dts/dtssdk/e;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/dts/dtssdk/a/e;->a:Ljava/lang/String;

    const-string v1, "queryBrandedHeadphone() API called, but branded headphone feature is not enabled. Aborting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    new-instance v0, Lcom/dts/dtssdk/f/a;

    sget-object v1, Lcom/dts/dtssdk/f/a$a;->z:Lcom/dts/dtssdk/f/a$a;

    invoke-direct {v0, v1}, Lcom/dts/dtssdk/f/a;-><init>(Lcom/dts/dtssdk/f/a$a;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0, v1}, Lcom/dts/dtssdk/c/c;->a(Lcom/dts/dtssdk/f/a;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v6, v1, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/dts/dtssdk/a/h$g;

    sget v5, Lcom/dts/dtssdk/a/b$a;->b:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/dts/dtssdk/a/h$g;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;I)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/dts/dtssdk/a/a/b;",
            ">;",
            "Lcom/dts/dtssdk/c/c",
            "<",
            "Lcom/dts/dtssdk/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/dts/dtssdk/a/h;->a()Lcom/dts/dtssdk/a/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/dts/dtssdk/a/h;->a(Landroid/content/Context;)V

    iget-object v6, v1, Lcom/dts/dtssdk/a/h;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/dts/dtssdk/a/h$g;

    sget v5, Lcom/dts/dtssdk/a/b$a;->d:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/dts/dtssdk/a/h$g;-><init>(Lcom/dts/dtssdk/a/h;Landroid/content/Context;Ljava/util/List;Lcom/dts/dtssdk/c/c;I)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

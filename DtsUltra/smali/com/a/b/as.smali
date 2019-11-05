.class public Lcom/a/b/as;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/by;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/a/b/as;
    .locals 3

    const-class v1, Lcom/a/b/as;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    const-class v2, Lcom/a/b/as;

    invoke-virtual {v0, v2}, Lcom/a/b/bh;->a(Ljava/lang/Class;)Lcom/a/b/by;

    move-result-object v0

    check-cast v0, Lcom/a/b/as;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Lcom/a/b/bg;
    .locals 2

    invoke-static {}, Lcom/a/b/cu;->a()Lcom/a/b/cu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/cu;->b()Lcom/a/b/cs;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/a/b/bg;

    invoke-virtual {v0, v1}, Lcom/a/b/cs;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/bg;

    goto :goto_0
.end method

.method public static c()J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/a/b/as;->b()Lcom/a/b/bg;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v0, v2, Lcom/a/b/bg;->c:J

    :cond_0
    return-wide v0
.end method

.method public static d()J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/a/b/as;->b()Lcom/a/b/bg;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v0, v2, Lcom/a/b/bg;->d:J

    :cond_0
    return-wide v0
.end method

.method public static e()J
    .locals 3

    const-wide/16 v0, -0x1

    invoke-static {}, Lcom/a/b/as;->b()Lcom/a/b/bg;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v0, v2, Lcom/a/b/bg;->e:J

    :cond_0
    return-wide v0
.end method

.method public static f()J
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {}, Lcom/a/b/as;->b()Lcom/a/b/bg;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/a/b/bg;->c()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static g()I
    .locals 1

    invoke-static {}, Lcom/a/b/ba;->a()Lcom/a/b/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/ba;->b()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    const-class v0, Lcom/a/b/bg;

    invoke-static {v0}, Lcom/a/b/cs;->a(Ljava/lang/Class;)V

    invoke-static {}, Lcom/a/b/br;->a()Lcom/a/b/br;

    invoke-static {}, Lcom/a/b/cx;->a()Lcom/a/b/cx;

    invoke-static {}, Lcom/a/b/bj;->a()Lcom/a/b/bj;

    invoke-static {}, Lcom/a/b/ba;->a()Lcom/a/b/ba;

    invoke-static {}, Lcom/a/b/au;->a()Lcom/a/b/au;

    invoke-static {}, Lcom/a/b/bb;->a()Lcom/a/b/bb;

    invoke-static {}, Lcom/a/b/ay;->a()Lcom/a/b/ay;

    invoke-static {}, Lcom/a/b/bd;->a()Lcom/a/b/bd;

    invoke-static {}, Lcom/a/b/ax;->a()Lcom/a/b/ax;

    invoke-static {}, Lcom/a/b/bf;->a()Lcom/a/b/bf;

    return-void
.end method

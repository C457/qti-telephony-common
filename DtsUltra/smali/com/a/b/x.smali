.class public Lcom/a/b/x;
.super Lcom/a/b/cg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/b/cg",
        "<",
        "Lcom/a/b/y;",
        ">;"
    }
.end annotation


# static fields
.field public static a:J

.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/x;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/a/b/cg;-><init>()V

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/a/b/cg;->b:J

    sget-wide v0, Lcom/a/b/cg;->b:J

    iput-wide v0, p0, Lcom/a/b/cg;->d:J

    return-void
.end method

.method static synthetic a(Lcom/a/b/x;Lcom/a/b/z;Lcom/a/b/y;)V
    .locals 1

    invoke-static {}, Lcom/a/b/ab;->c()Lcom/a/b/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/b/ab;->b(Lcom/a/b/z;)V

    invoke-virtual {p0, p2}, Lcom/a/b/x;->c(Lcom/a/b/cf;)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/x;Lcom/a/b/z;Lcom/a/b/y;Lcom/a/b/cb;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x0

    const-string v1, "Location"

    invoke-virtual {p3, v1}, Lcom/a/b/cb;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p2, Lcom/a/b/cf;->q:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/a/b/dh;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/a/b/ab;->c()Lcom/a/b/ab;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/a/b/ab;->a(Lcom/a/b/z;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/a/b/x;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received redirect url. Retrying: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_3

    iput-object v0, p2, Lcom/a/b/cf;->r:Ljava/lang/String;

    iput-object v0, p3, Lcom/a/b/cd;->g:Ljava/lang/String;

    const-string v0, "Location"

    iget-object v1, p3, Lcom/a/b/cd;->f:Lcom/a/b/bm;

    if-eqz v1, :cond_1

    iget-object v1, p3, Lcom/a/b/cd;->f:Lcom/a/b/bm;

    iget-object v1, v1, Lcom/a/b/bm;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p3, Lcom/a/b/cd;->f:Lcom/a/b/bm;

    invoke-virtual {v1, v0}, Lcom/a/b/bm;->b(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/a/b/bf;->a()Lcom/a/b/bf;

    move-result-object v0

    invoke-virtual {v0, p0, p3}, Lcom/a/b/bf;->a(Ljava/lang/Object;Lcom/a/b/dg;)V

    :goto_1
    return-void

    :cond_2
    sget-object v2, Lcom/a/b/x;->e:Ljava/lang/String;

    const-string v3, "Received redirect url. Retrying: false"

    invoke-static {v5, v2, v3}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/a/b/x;->c(Lcom/a/b/cf;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/a/b/x;Lcom/a/b/z;Lcom/a/b/y;Ljava/lang/String;)V
    .locals 5

    invoke-static {}, Lcom/a/b/ab;->c()Lcom/a/b/ab;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/a/b/ab;->b(Lcom/a/b/z;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    sget-object v2, Lcom/a/b/x;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed report retrying: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/a/b/x;->d(Lcom/a/b/cf;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/a/b/x;->c(Lcom/a/b/cf;)V

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/a/b/x;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/a/b/x;Lcom/a/b/z;Lcom/a/b/y;)V
    .locals 4

    const/4 v0, 0x3

    sget-object v1, Lcom/a/b/x;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/a/b/y;->g:Lcom/a/b/ac;

    iget-object v3, v3, Lcom/a/b/ac;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " report sent successfully to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/a/b/y;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/ab;->c()Lcom/a/b/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/b/ab;->a(Lcom/a/b/z;)V

    invoke-virtual {p0, p2}, Lcom/a/b/x;->c(Lcom/a/b/cf;)V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/a/b/bo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/b/bo",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/a/b/y;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->a:Landroid/content/Context;

    new-instance v1, Lcom/a/b/bo;

    const-string v2, ".yflurryanpulsecallbackreporter"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, ".yflurryanpulsecallbackreporter"

    const/4 v3, 0x2

    new-instance v4, Lcom/a/b/x$1;

    invoke-direct {v4, p0}, Lcom/a/b/x$1;-><init>(Lcom/a/b/x;)V

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/a/b/bo;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/a/b/cr;)V

    return-object v1
.end method

.method protected final synthetic a(Lcom/a/b/cf;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    check-cast v1, Lcom/a/b/y;

    const/4 v0, 0x3

    sget-object v2, Lcom/a/b/x;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sending next pulse report to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/a/b/y;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/a/b/cf;->r:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->c()J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-nez v0, :cond_0

    sget-wide v2, Lcom/a/b/x;->a:J

    :cond_0
    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->f()J

    move-result-wide v4

    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    :cond_1
    iget v6, v1, Lcom/a/b/cf;->p:I

    new-instance v0, Lcom/a/b/z;

    invoke-direct/range {v0 .. v6}, Lcom/a/b/z;-><init>(Lcom/a/b/y;JJI)V

    new-instance v4, Lcom/a/b/cb;

    invoke-direct {v4}, Lcom/a/b/cb;-><init>()V

    iget-object v2, v1, Lcom/a/b/cf;->r:Ljava/lang/String;

    iput-object v2, v4, Lcom/a/b/cd;->g:Ljava/lang/String;

    const v2, 0x186a0

    iput v2, v4, Lcom/a/b/dg;->u:I

    iget-object v2, v1, Lcom/a/b/y;->d:Lcom/a/b/af;

    sget-object v3, Lcom/a/b/af;->c:Lcom/a/b/af;

    invoke-virtual {v2, v3}, Lcom/a/b/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/a/b/cl;

    invoke-direct {v2}, Lcom/a/b/cl;-><init>()V

    iput-object v2, v4, Lcom/a/b/cb;->c:Lcom/a/b/cp;

    iget-object v2, v1, Lcom/a/b/y;->k:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/a/b/y;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, v4, Lcom/a/b/cb;->b:Ljava/lang/Object;

    :cond_2
    sget-object v2, Lcom/a/b/cd$a;->c:Lcom/a/b/cd$a;

    iput-object v2, v4, Lcom/a/b/cd;->h:Lcom/a/b/cd$a;

    :goto_0
    iget v2, v1, Lcom/a/b/y;->i:I

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, v4, Lcom/a/b/cd;->i:I

    iget v2, v1, Lcom/a/b/y;->j:I

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, v4, Lcom/a/b/cd;->j:I

    iput-boolean v7, v4, Lcom/a/b/cd;->m:Z

    iput-boolean v7, v4, Lcom/a/b/cd;->r:Z

    iget v2, v1, Lcom/a/b/y;->i:I

    iget v3, v1, Lcom/a/b/y;->j:I

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    iput v2, v4, Lcom/a/b/cd;->s:I

    iget-object v5, v1, Lcom/a/b/y;->e:Ljava/util/Map;

    if-eqz v5, :cond_4

    iget-object v2, v1, Lcom/a/b/y;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Lcom/a/b/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/a/b/cd$a;->b:Lcom/a/b/cd$a;

    iput-object v2, v4, Lcom/a/b/cd;->h:Lcom/a/b/cd$a;

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/a/b/cd;->k:Z

    new-instance v2, Lcom/a/b/x$2;

    invoke-direct {v2, p0, v1, v0}, Lcom/a/b/x$2;-><init>(Lcom/a/b/x;Lcom/a/b/y;Lcom/a/b/z;)V

    iput-object v2, v4, Lcom/a/b/cb;->a:Lcom/a/b/cb$a;

    invoke-static {}, Lcom/a/b/bf;->a()Lcom/a/b/bf;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, Lcom/a/b/bf;->a(Ljava/lang/Object;Lcom/a/b/dg;)V

    return-void
.end method

.method protected final declared-synchronized a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/a/b/y;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/a/b/ab;->c()Lcom/a/b/ab;

    invoke-static {}, Lcom/a/b/ab;->d()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    sget-object v2, Lcom/a/b/x;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Restoring "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from report queue."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/ac;

    invoke-static {}, Lcom/a/b/ab;->c()Lcom/a/b/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/a/b/ab;->b(Lcom/a/b/ac;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/a/b/ab;->c()Lcom/a/b/ab;

    invoke-static {}, Lcom/a/b/ab;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/ac;

    invoke-virtual {v0}, Lcom/a/b/ac;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/y;

    iget-boolean v3, v0, Lcom/a/b/y;->m:Z

    if-nez v3, :cond_4

    const/4 v3, 0x3

    sget-object v4, Lcom/a/b/x;->e:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Callback for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/a/b/y;->g:Lcom/a/b/ac;

    iget-object v6, v6, Lcom/a/b/ac;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/a/b/y;->l:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not completed.  Adding to reporter queue."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected final declared-synchronized b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/a/b/y;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/a/b/ab;->c()Lcom/a/b/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/ab;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

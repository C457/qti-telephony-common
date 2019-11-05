.class public Lcom/a/b/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/cy$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/a/b/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bz",
            "<",
            "Lcom/a/b/h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/a/b/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bz",
            "<",
            "Lcom/a/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/a/b/u;

.field private final e:Lcom/a/b/bm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bm",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/b/l;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/b/ac;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/a/b/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bo",
            "<",
            "Lcom/a/b/t;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/a/b/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bo",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/a/b/ac;",
            ">;>;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:J

.field private n:J

.field private o:Z

.field private p:Lcom/a/b/i;

.field private q:Z

.field private final r:Ljava/lang/Runnable;

.field private final s:Lcom/a/b/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bq",
            "<",
            "Lcom/a/b/av;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/a/b/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bq",
            "<",
            "Lcom/a/b/aw;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/a/b/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bq",
            "<",
            "Lcom/a/b/az;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v7, 0x10

    const/4 v4, 0x4

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/b/bz;

    const-string v1, "proton config request"

    new-instance v2, Lcom/a/b/ah;

    invoke-direct {v2}, Lcom/a/b/ah;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/a/b/bz;-><init>(Ljava/lang/String;Lcom/a/b/cp;)V

    iput-object v0, p0, Lcom/a/b/v;->b:Lcom/a/b/bz;

    new-instance v0, Lcom/a/b/bz;

    const-string v1, "proton config response"

    new-instance v2, Lcom/a/b/ai;

    invoke-direct {v2}, Lcom/a/b/ai;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/a/b/bz;-><init>(Ljava/lang/String;Lcom/a/b/cp;)V

    iput-object v0, p0, Lcom/a/b/v;->c:Lcom/a/b/bz;

    new-instance v0, Lcom/a/b/u;

    invoke-direct {v0}, Lcom/a/b/u;-><init>()V

    iput-object v0, p0, Lcom/a/b/v;->d:Lcom/a/b/u;

    new-instance v0, Lcom/a/b/bm;

    invoke-direct {v0}, Lcom/a/b/bm;-><init>()V

    iput-object v0, p0, Lcom/a/b/v;->e:Lcom/a/b/bm;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/v;->f:Ljava/util/List;

    iput-boolean v6, p0, Lcom/a/b/v;->k:Z

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/a/b/v;->m:J

    new-instance v0, Lcom/a/b/v$1;

    invoke-direct {v0, p0}, Lcom/a/b/v$1;-><init>(Lcom/a/b/v;)V

    iput-object v0, p0, Lcom/a/b/v;->r:Ljava/lang/Runnable;

    new-instance v0, Lcom/a/b/v$6;

    invoke-direct {v0, p0}, Lcom/a/b/v$6;-><init>(Lcom/a/b/v;)V

    iput-object v0, p0, Lcom/a/b/v;->s:Lcom/a/b/bq;

    new-instance v0, Lcom/a/b/v$7;

    invoke-direct {v0, p0}, Lcom/a/b/v$7;-><init>(Lcom/a/b/v;)V

    iput-object v0, p0, Lcom/a/b/v;->t:Lcom/a/b/bq;

    new-instance v0, Lcom/a/b/v$8;

    invoke-direct {v0, p0}, Lcom/a/b/v$8;-><init>(Lcom/a/b/v;)V

    iput-object v0, p0, Lcom/a/b/v;->u:Lcom/a/b/bq;

    invoke-static {}, Lcom/a/b/cx;->a()Lcom/a/b/cx;

    move-result-object v1

    const-string v0, "ProtonEnabled"

    invoke-virtual {v1, v0}, Lcom/a/b/cy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/b/v;->i:Z

    const-string v0, "ProtonEnabled"

    invoke-virtual {v1, v0, p0}, Lcom/a/b/cy;->a(Ljava/lang/String;Lcom/a/b/cy$a;)V

    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, protonEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/a/b/v;->i:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "ProtonConfigUrl"

    invoke-virtual {v1, v0}, Lcom/a/b/cy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/a/b/v;->j:Ljava/lang/String;

    const-string v0, "ProtonConfigUrl"

    invoke-virtual {v1, v0, p0}, Lcom/a/b/cy;->a(Ljava/lang/String;Lcom/a/b/cy$a;)V

    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initSettings, protonConfigUrl = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a/b/v;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "analyticsEnabled"

    invoke-virtual {v1, v0}, Lcom/a/b/cy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/b/v;->k:Z

    const-string v0, "analyticsEnabled"

    invoke-virtual {v1, v0, p0}, Lcom/a/b/cy;->a(Ljava/lang/String;Lcom/a/b/cy$a;)V

    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSettings, AnalyticsEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/a/b/v;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/br;->a()Lcom/a/b/br;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v2, p0, Lcom/a/b/v;->s:Lcom/a/b/bq;

    invoke-virtual {v0, v1, v2}, Lcom/a/b/br;->a(Ljava/lang/String;Lcom/a/b/bq;)V

    invoke-static {}, Lcom/a/b/br;->a()Lcom/a/b/br;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.IdProviderUpdatedAdvertisingId"

    iget-object v2, p0, Lcom/a/b/v;->t:Lcom/a/b/bq;

    invoke-virtual {v0, v1, v2}, Lcom/a/b/br;->a(Ljava/lang/String;Lcom/a/b/bq;)V

    invoke-static {}, Lcom/a/b/br;->a()Lcom/a/b/br;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/a/b/v;->u:Lcom/a/b/bq;

    invoke-virtual {v0, v1, v2}, Lcom/a/b/br;->a(Ljava/lang/String;Lcom/a/b/bq;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->a:Landroid/content/Context;

    new-instance v1, Lcom/a/b/bo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".yflurryprotonconfig."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v3

    iget-object v3, v3, Lcom/a/b/bh;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/a/b/dd;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    const-string v3, ".yflurryprotonconfig."

    new-instance v4, Lcom/a/b/v$9;

    invoke-direct {v4, p0}, Lcom/a/b/v$9;-><init>(Lcom/a/b/v;)V

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/a/b/bo;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/a/b/cr;)V

    iput-object v1, p0, Lcom/a/b/v;->g:Lcom/a/b/bo;

    new-instance v1, Lcom/a/b/bo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ".yflurryprotonreport."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v3

    iget-object v3, v3, Lcom/a/b/bh;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/a/b/dd;->e(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5, v7}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v2, ".yflurryprotonreport."

    new-instance v3, Lcom/a/b/v$10;

    invoke-direct {v3, p0}, Lcom/a/b/v$10;-><init>(Lcom/a/b/v;)V

    invoke-direct {v1, v0, v2, v6, v3}, Lcom/a/b/bo;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/a/b/cr;)V

    iput-object v1, p0, Lcom/a/b/v;->h:Lcom/a/b/bo;

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/b/v$11;

    invoke-direct {v1, p0}, Lcom/a/b/v$11;-><init>(Lcom/a/b/v;)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/b/v$2;

    invoke-direct {v1, p0}, Lcom/a/b/v$2;-><init>(Lcom/a/b/v;)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/v;J)J
    .locals 1

    iput-wide p1, p0, Lcom/a/b/v;->m:J

    return-wide p1
.end method

.method static synthetic a(Lcom/a/b/v;Lcom/a/b/i;)Lcom/a/b/i;
    .locals 0

    iput-object p1, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    return-object p1
.end method

.method private declared-synchronized a(JZ[B)V
    .locals 3

    monitor-enter p0

    if-nez p4, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v2, "Saving proton config response"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/a/b/t;

    invoke-direct {v0}, Lcom/a/b/t;-><init>()V

    iput-wide p1, v0, Lcom/a/b/t;->a:J

    iput-boolean p3, v0, Lcom/a/b/t;->b:Z

    iput-object p4, v0, Lcom/a/b/t;->c:[B

    iget-object v1, p0, Lcom/a/b/v;->g:Lcom/a/b/bo;

    invoke-virtual {v1, v0}, Lcom/a/b/bo;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/a/b/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/v;->e()V

    return-void
.end method

.method static synthetic a(Lcom/a/b/v;JZ[B)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/a/b/v;->a(JZ[B)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/v;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/a/b/v;->b(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/i;)Z
    .locals 1

    invoke-static {p0}, Lcom/a/b/v;->b(Lcom/a/b/i;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/a/b/v;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/a/b/v;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/a/b/v;J)J
    .locals 1

    iput-wide p1, p0, Lcom/a/b/v;->n:J

    return-wide p1
.end method

.method private declared-synchronized b(J)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/b/v;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/ac;

    iget-wide v2, v0, Lcom/a/b/ac;->a:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/a/b/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/v;->l()V

    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;Ljava/util/Map;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v2, 0x3

    :try_start_0
    sget-object v3, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Event triggered: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/a/b/v;->k:Z

    if-nez v2, :cond_1

    sget-object v2, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v3, "Analytics and pulse have been disabled."

    invoke-static {v2, v3}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/v;->p:Lcom/a/b/i;

    if-nez v2, :cond_2

    const/4 v2, 0x3

    sget-object v3, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v4, "Config response is empty. No events to fire."

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/a/b/dd;->a()V

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/v;->e:Lcom/a/b/bm;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/a/b/bm;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v2, 0x3

    sget-object v3, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v4, "No events to fire. Returning."

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x3

    sget-object v3, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v4, "No events to fire. Returning."

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    if-eqz p2, :cond_7

    const/4 v2, 0x1

    move/from16 v17, v2

    :goto_1
    const/4 v2, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_5
    :goto_2
    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/a/b/ag;->d:Lcom/a/b/ag;

    move-object/from16 v16, v2

    :goto_3
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/a/b/l;

    const/4 v4, 0x0

    instance-of v3, v2, Lcom/a/b/m;

    if-eqz v3, :cond_d

    const/4 v3, 0x4

    sget-object v5, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v6, "Event contains triggers."

    invoke-static {v3, v5, v6}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lcom/a/b/m;

    move-object v3, v0

    iget-object v6, v3, Lcom/a/b/m;->d:[Ljava/lang/String;

    if-nez v6, :cond_8

    const/4 v3, 0x4

    sget-object v4, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v5, "Template does not contain trigger values. Firing."

    invoke-static {v3, v4, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    :cond_6
    :goto_5
    move-object v0, v2

    check-cast v0, Lcom/a/b/m;

    move-object v3, v0

    iget-object v3, v3, Lcom/a/b/m;->c:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_a

    const/4 v2, 0x4

    sget-object v3, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v4, "Publisher params has no value associated with proton key. Not firing."

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    move/from16 v17, v2

    goto :goto_1

    :sswitch_0
    const-string v4, "flurry.session_start"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x0

    goto :goto_2

    :sswitch_1
    const-string v4, "flurry.session_end"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string v4, "flurry.app_install"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :pswitch_0
    sget-object v2, Lcom/a/b/ag;->b:Lcom/a/b/ag;

    move-object/from16 v16, v2

    goto :goto_3

    :pswitch_1
    sget-object v2, Lcom/a/b/ag;->c:Lcom/a/b/ag;

    move-object/from16 v16, v2

    goto :goto_3

    :pswitch_2
    sget-object v2, Lcom/a/b/ag;->a:Lcom/a/b/ag;

    move-object/from16 v16, v2

    goto/16 :goto_3

    :cond_8
    array-length v3, v6

    if-nez v3, :cond_9

    const/4 v3, 0x4

    sget-object v4, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v5, "Template does not contain trigger values. Firing."

    invoke-static {v3, v4, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    if-nez p2, :cond_6

    const/4 v2, 0x4

    sget-object v3, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v4, "Publisher has not passed in params list. Not firing."

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    array-length v7, v6

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v7, :cond_12

    aget-object v8, v6, v5

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v3, 0x1

    :goto_7
    if-nez v3, :cond_c

    const/4 v2, 0x4

    sget-object v3, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v4, "Publisher params list does not match proton param values. Not firing."

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    const/4 v3, 0x4

    sget-object v4, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v5, "Publisher params match proton values. Firing."

    invoke-static {v3, v4, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object v0, v2, Lcom/a/b/l;->b:Lcom/a/b/f;

    move-object/from16 v22, v0

    if-nez v22, :cond_e

    const/4 v2, 0x3

    sget-object v3, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v4, "Template is empty. Not firing current event."

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    const/4 v2, 0x3

    sget-object v3, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Creating callback report for partner: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/a/b/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "event_name"

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "event_time_millis"

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/b/v;->d:Lcom/a/b/u;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/a/b/f;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/a/b/u;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/a/b/f;->f:Ljava/lang/String;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/a/b/v;->d:Lcom/a/b/u;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/a/b/f;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/a/b/u;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    add-long v7, v2, v4

    new-instance v2, Lcom/a/b/y;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/a/b/f;->b:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/a/b/f;->a:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/a/b/v;->p:Lcom/a/b/i;

    iget-object v9, v9, Lcom/a/b/i;->e:Lcom/a/b/g;

    iget v9, v9, Lcom/a/b/g;->b:I

    move-object/from16 v0, v22

    iget v10, v0, Lcom/a/b/f;->g:I

    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/a/b/f;->d:Lcom/a/b/af;

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/a/b/f;->j:Ljava/util/Map;

    move-object/from16 v0, v22

    iget v13, v0, Lcom/a/b/f;->i:I

    move-object/from16 v0, v22

    iget v14, v0, Lcom/a/b/f;->h:I

    invoke-direct/range {v2 .. v15}, Lcom/a/b/y;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/a/b/af;Ljava/util/Map;IILjava/lang/String;)V

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/a/b/f;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_10
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/a/b/ac;

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->c()J

    move-result-wide v6

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->f()J

    move-result-wide v8

    move-object/from16 v4, p1

    move/from16 v5, v17

    move-object/from16 v10, v16

    move-object/from16 v11, v20

    invoke-direct/range {v3 .. v11}, Lcom/a/b/ac;-><init>(Ljava/lang/String;ZJJLcom/a/b/ag;Ljava/util/Map;)V

    const-string v2, "flurry.session_end"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x3

    sget-object v4, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Storing Pulse callbacks for event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/v;->f:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_11
    const/4 v2, 0x3

    sget-object v4, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Firing Pulse callbacks for event: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/ab;->c()Lcom/a/b/ab;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/a/b/ab;->a(Lcom/a/b/ac;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_12
    move v3, v4

    goto/16 :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        0x26750b2e -> :sswitch_1
        0x51bea0f9 -> :sswitch_2
        0x5e26fdf5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Lcom/a/b/i;)Z
    .locals 11

    const/4 v3, 0x1

    const/4 v10, 0x3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v4, p0, Lcom/a/b/i;->e:Lcom/a/b/g;

    if-eqz v4, :cond_7

    iget-object v0, v4, Lcom/a/b/g;->a:Ljava/util/List;

    if-eqz v0, :cond_7

    move v1, v2

    :goto_1
    iget-object v0, v4, Lcom/a/b/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, v4, Lcom/a/b/g;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f;

    if-eqz v0, :cond_6

    iget-object v5, v0, Lcom/a/b/f;->b:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-wide v6, v0, Lcom/a/b/f;->a:J

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/a/b/f;->e:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v0, v0, Lcom/a/b/f;->c:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/l;

    iget-object v6, v0, Lcom/a/b/l;->a:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v5, "An event is missing a name"

    invoke-static {v10, v0, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_2
    if-nez v0, :cond_6

    :cond_2
    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v1, "A callback template is missing required values"

    invoke-static {v10, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_3
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/b/i;->e:Lcom/a/b/g;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/a/b/i;->e:Lcom/a/b/g;

    iget-object v0, v0, Lcom/a/b/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/a/b/i;->e:Lcom/a/b/g;

    iget-object v0, v0, Lcom/a/b/g;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_3
    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v1, "Config response is missing required values."

    invoke-static {v10, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    instance-of v6, v0, Lcom/a/b/m;

    if-eqz v6, :cond_1

    check-cast v0, Lcom/a/b/m;

    iget-object v0, v0, Lcom/a/b/m;->c:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v5, "An event trigger is missing a param name"

    invoke-static {v10, v0, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_7
    move v0, v3

    goto :goto_3

    :cond_8
    move v2, v3

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/a/b/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/v;->m()V

    return-void
.end method

.method static synthetic d(Lcom/a/b/v;)Lcom/a/b/bz;
    .locals 1

    iget-object v0, p0, Lcom/a/b/v;->c:Lcom/a/b/bz;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 12

    const-wide/16 v10, 0x3e8

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/a/b/v;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/a/b/dd;->a()V

    iget-boolean v1, p0, Lcom/a/b/v;->l:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/a/b/au;->a()Lcom/a/b/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/au;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/a/b/au;->a()Lcom/a/b/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/au;->c()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/a/b/v;->o:Z

    if-eq v0, v1, :cond_4

    const/4 v0, 0x3

    sget-object v4, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v5, "Limit ad tracking value has changed, purging"

    invoke-static {v0, v4, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    :cond_2
    :goto_2
    invoke-static {}, Lcom/a/b/bf;->a()Lcom/a/b/bf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/a/b/bf;->a(Ljava/lang/Object;)V

    const/4 v0, 0x3

    sget-object v4, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v5, "Requesting proton config"

    invoke-static {v0, v4, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/a/b/v;->f()[B

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Lcom/a/b/cb;

    invoke-direct {v5}, Lcom/a/b/cb;-><init>()V

    iget-object v0, p0, Lcom/a/b/v;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "https://proton.flurry.com/sdk/v1/config"

    :goto_3
    iput-object v0, v5, Lcom/a/b/cd;->g:Ljava/lang/String;

    const/16 v0, 0x1388

    iput v0, v5, Lcom/a/b/dg;->u:I

    sget-object v0, Lcom/a/b/cd$a;->c:Lcom/a/b/cd$a;

    iput-object v0, v5, Lcom/a/b/cd;->h:Lcom/a/b/cd$a;

    const-string v0, "application/x-flurry;version=2"

    const-string v6, "application/x-flurry;version=2"

    invoke-static {v4}, Lcom/a/b/bz;->a([B)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Content-Type"

    invoke-virtual {v5, v8, v0}, Lcom/a/b/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    invoke-virtual {v5, v0, v6}, Lcom/a/b/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FM-Checksum"

    invoke-virtual {v5, v0, v7}, Lcom/a/b/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/a/b/cl;

    invoke-direct {v0}, Lcom/a/b/cl;-><init>()V

    iput-object v0, v5, Lcom/a/b/cb;->c:Lcom/a/b/cp;

    new-instance v0, Lcom/a/b/cl;

    invoke-direct {v0}, Lcom/a/b/cl;-><init>()V

    iput-object v0, v5, Lcom/a/b/cb;->d:Lcom/a/b/cp;

    iput-object v4, v5, Lcom/a/b/cb;->b:Ljava/lang/Object;

    new-instance v0, Lcom/a/b/v$3;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/a/b/v$3;-><init>(Lcom/a/b/v;JZ)V

    iput-object v0, v5, Lcom/a/b/cb;->a:Lcom/a/b/cb$a;

    invoke-static {}, Lcom/a/b/bf;->a()Lcom/a/b/bf;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Lcom/a/b/bf;->a(Ljava/lang/Object;Lcom/a/b/dg;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_1

    :cond_4
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/a/b/v;->n:J

    iget-object v0, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    iget-wide v8, v0, Lcom/a/b/i;->b:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    const/4 v0, 0x3

    sget-object v1, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v2, "Cached Proton config valid, no need to refresh"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/a/b/v;->q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/v;->q:Z

    const-string v0, "flurry.session_start"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a/b/v;->b(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/a/b/v;->n:J

    iget-object v0, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    iget-wide v8, v0, Lcom/a/b/i;->c:J

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    const/4 v0, 0x3

    sget-object v4, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v5, "Cached Proton config expired, purging"

    invoke-static {v0, v4, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    iget-object v0, p0, Lcom/a/b/v;->e:Lcom/a/b/bm;

    invoke-virtual {v0}, Lcom/a/b/bm;->a()V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/a/b/v;->j:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3
.end method

.method static synthetic e(Lcom/a/b/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/v;->g()V

    return-void
.end method

.method static synthetic f(Lcom/a/b/v;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/b/v;->q:Z

    return v0
.end method

.method private f()[B
    .locals 6

    :try_start_0
    new-instance v2, Lcom/a/b/h;

    invoke-direct {v2}, Lcom/a/b/h;-><init>()V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->d:Ljava/lang/String;

    iput-object v0, v2, Lcom/a/b/h;->a:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/b/da;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/a/b/h;->b:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/a/b/da;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/a/b/h;->c:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/bi;->b()I

    move-result v0

    iput v0, v2, Lcom/a/b/h;->d:I

    const/4 v0, 0x3

    iput v0, v2, Lcom/a/b/h;->e:I

    invoke-static {}, Lcom/a/b/bd;->a()Lcom/a/b/bd;

    invoke-static {}, Lcom/a/b/bd;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/a/b/h;->f:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/au;->a()Lcom/a/b/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/au;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/a/b/h;->g:Z

    new-instance v0, Lcom/a/b/k;

    invoke-direct {v0}, Lcom/a/b/k;-><init>()V

    iput-object v0, v2, Lcom/a/b/h;->h:Lcom/a/b/k;

    iget-object v0, v2, Lcom/a/b/h;->h:Lcom/a/b/k;

    new-instance v1, Lcom/a/b/e;

    invoke-direct {v1}, Lcom/a/b/e;-><init>()V

    iput-object v1, v0, Lcom/a/b/k;->a:Lcom/a/b/e;

    iget-object v0, v2, Lcom/a/b/h;->h:Lcom/a/b/k;

    iget-object v0, v0, Lcom/a/b/k;->a:Lcom/a/b/e;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/b/e;->a:Ljava/lang/String;

    iget-object v0, v2, Lcom/a/b/h;->h:Lcom/a/b/k;

    iget-object v0, v0, Lcom/a/b/k;->a:Lcom/a/b/e;

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/b/e;->b:Ljava/lang/String;

    iget-object v0, v2, Lcom/a/b/h;->h:Lcom/a/b/k;

    iget-object v0, v0, Lcom/a/b/k;->a:Lcom/a/b/e;

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/b/e;->c:Ljava/lang/String;

    iget-object v0, v2, Lcom/a/b/h;->h:Lcom/a/b/k;

    iget-object v0, v0, Lcom/a/b/k;->a:Lcom/a/b/e;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/b/e;->d:Ljava/lang/String;

    iget-object v0, v2, Lcom/a/b/h;->h:Lcom/a/b/k;

    iget-object v0, v0, Lcom/a/b/k;->a:Lcom/a/b/e;

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/b/e;->e:Ljava/lang/String;

    iget-object v0, v2, Lcom/a/b/h;->h:Lcom/a/b/k;

    iget-object v0, v0, Lcom/a/b/k;->a:Lcom/a/b/e;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/a/b/e;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/a/b/h;->i:Ljava/util/List;

    invoke-static {}, Lcom/a/b/au;->a()Lcom/a/b/au;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/au;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/a/b/j;

    invoke-direct {v4}, Lcom/a/b/j;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/bc;

    iget v1, v1, Lcom/a/b/bc;->c:I

    iput v1, v4, Lcom/a/b/j;->a:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/bc;

    iget-boolean v1, v1, Lcom/a/b/bc;->d:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v4, Lcom/a/b/j;->b:Ljava/lang/String;

    :goto_2
    iget-object v0, v2, Lcom/a/b/h;->i:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x5

    sget-object v2, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Proton config request failed with exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/a/b/dd;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/a/b/j;->b:Ljava/lang/String;

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/a/b/ay;->a()Lcom/a/b/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/ay;->f()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/a/b/ay;->c()I

    move-result v1

    new-instance v3, Lcom/a/b/o;

    invoke-direct {v3}, Lcom/a/b/o;-><init>()V

    iput-object v3, v2, Lcom/a/b/h;->j:Lcom/a/b/o;

    iget-object v3, v2, Lcom/a/b/h;->j:Lcom/a/b/o;

    new-instance v4, Lcom/a/b/n;

    invoke-direct {v4}, Lcom/a/b/n;-><init>()V

    iput-object v4, v3, Lcom/a/b/o;->a:Lcom/a/b/n;

    iget-object v3, v2, Lcom/a/b/h;->j:Lcom/a/b/o;

    iget-object v3, v3, Lcom/a/b/o;->a:Lcom/a/b/n;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/a/b/dd;->a(DI)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/a/b/n;->a:D

    iget-object v3, v2, Lcom/a/b/h;->j:Lcom/a/b/o;

    iget-object v3, v3, Lcom/a/b/o;->a:Lcom/a/b/n;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5, v1}, Lcom/a/b/dd;->a(DI)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/a/b/n;->b:D

    iget-object v3, v2, Lcom/a/b/h;->j:Lcom/a/b/o;

    iget-object v3, v3, Lcom/a/b/o;->a:Lcom/a/b/n;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v4, v0

    invoke-static {v4, v5, v1}, Lcom/a/b/dd;->a(DI)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, v3, Lcom/a/b/n;->c:F

    :cond_3
    invoke-static {}, Lcom/a/b/cx;->a()Lcom/a/b/cx;

    move-result-object v0

    const-string v1, "UserId"

    invoke-virtual {v0, v1}, Lcom/a/b/cx;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/a/b/r;

    invoke-direct {v1}, Lcom/a/b/r;-><init>()V

    iput-object v1, v2, Lcom/a/b/h;->k:Lcom/a/b/r;

    iget-object v1, v2, Lcom/a/b/h;->k:Lcom/a/b/r;

    iput-object v0, v1, Lcom/a/b/r;->a:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/a/b/v;->b:Lcom/a/b/bz;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v3, v0, Lcom/a/b/bz;->c:Lcom/a/b/cp;

    invoke-interface {v3, v1, v2}, Lcom/a/b/cp;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x3

    sget-object v3, Lcom/a/b/bz;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Encoding "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/a/b/bz;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/a/b/cn;

    new-instance v2, Lcom/a/b/cl;

    invoke-direct {v2}, Lcom/a/b/cl;-><init>()V

    invoke-direct {v0, v2}, Lcom/a/b/cn;-><init>(Lcom/a/b/cp;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v0, v2, v1}, Lcom/a/b/cp;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/bz;->b([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method private g()V
    .locals 6

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v1, "Processing config response"

    invoke-static {v4, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    iget-object v0, v0, Lcom/a/b/i;->e:Lcom/a/b/g;

    iget v0, v0, Lcom/a/b/g;->c:I

    invoke-static {v0}, Lcom/a/b/ab;->a(I)V

    iget-object v0, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    iget-object v0, v0, Lcom/a/b/i;->e:Lcom/a/b/g;

    iget v0, v0, Lcom/a/b/g;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Lcom/a/b/ab;->b(I)V

    invoke-static {}, Lcom/a/b/ad;->a()Lcom/a/b/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    iget-object v1, v1, Lcom/a/b/i;->e:Lcom/a/b/g;

    iget-object v1, v1, Lcom/a/b/g;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, ".do"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/a/b/ad;->a:Ljava/lang/String;

    const-string v3, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v4, v2, v3}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object v1, v0, Lcom/a/b/ad;->b:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/a/b/v;->i:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/a/b/cx;->a()Lcom/a/b/cx;

    move-result-object v0

    const-string v1, "analyticsEnabled"

    iget-object v2, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    iget-object v2, v2, Lcom/a/b/i;->f:Lcom/a/b/s;

    iget-boolean v2, v2, Lcom/a/b/s;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/b/cx;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/a/b/v;->e:Lcom/a/b/bm;

    invoke-virtual {v0}, Lcom/a/b/bm;->a()V

    iget-object v0, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    iget-object v0, v0, Lcom/a/b/i;->e:Lcom/a/b/g;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/a/b/g;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/f;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/a/b/f;->c:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/l;

    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/a/b/l;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-object v0, v1, Lcom/a/b/l;->b:Lcom/a/b/f;

    iget-object v4, p0, Lcom/a/b/v;->e:Lcom/a/b/bm;

    iget-object v5, v1, Lcom/a/b/l;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/a/b/bm;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/a/b/v;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/v;->q:Z

    return v0
.end method

.method private declared-synchronized h()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/b/v;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/a/b/dd;->a()V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.flurry.android.flurryAppInstall"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "flurry.app_install"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/a/b/v;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.flurry.android.flurryAppInstall"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/a/b/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/v;->h()V

    return-void
.end method

.method static synthetic i(Lcom/a/b/v;)J
    .locals 2

    iget-wide v0, p0, Lcom/a/b/v;->m:J

    return-wide v0
.end method

.method private declared-synchronized i()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/b/v;->k:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v1, "Analytics disabled, not sending pulse reports."

    invoke-static {v0, v1}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x4

    :try_start_1
    sget-object v1, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a/b/v;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " queued reports."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/v;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/ac;

    const/4 v2, 0x3

    sget-object v3, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Firing Pulse callbacks for event: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/a/b/ac;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/ab;->c()Lcom/a/b/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/a/b/ab;->a(Lcom/a/b/ac;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/a/b/v;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic j(Lcom/a/b/v;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/a/b/v;->r:Ljava/lang/Runnable;

    return-object v0
.end method

.method private declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/b/v;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/a/b/v;->h:Lcom/a/b/bo;

    invoke-virtual {v0}, Lcom/a/b/bo;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized k()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v2, "Saving queued report data."

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/v;->h:Lcom/a/b/bo;

    iget-object v1, p0, Lcom/a/b/v;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/a/b/bo;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic k(Lcom/a/b/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/v;->k()V

    return-void
.end method

.method private declared-synchronized l()V
    .locals 7

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/b/v;->g:Lcom/a/b/bo;

    invoke-virtual {v0}, Lcom/a/b/bo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/a/b/v;->c:Lcom/a/b/bz;

    iget-object v3, v0, Lcom/a/b/t;->c:[B

    invoke-virtual {v1, v3}, Lcom/a/b/bz;->c([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/i;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/a/b/v;->b(Lcom/a/b/i;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x4

    sget-object v3, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v4, "Loaded saved proton config response"

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x2710

    iput-wide v2, p0, Lcom/a/b/v;->m:J

    iget-wide v2, v0, Lcom/a/b/t;->a:J

    iput-wide v2, p0, Lcom/a/b/v;->n:J

    iget-boolean v0, v0, Lcom/a/b/t;->b:Z

    iput-boolean v0, p0, Lcom/a/b/v;->o:Z

    iput-object v1, p0, Lcom/a/b/v;->p:Lcom/a/b/i;

    invoke-direct {p0}, Lcom/a/b/v;->g()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/b/v;->l:Z

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/b/v$5;

    invoke-direct {v1, p0}, Lcom/a/b/v$5;-><init>(Lcom/a/b/v;)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    const/4 v3, 0x5

    :try_start_3
    sget-object v4, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to decode saved proton config response: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/a/b/v;->g:Lcom/a/b/bo;

    invoke-virtual {v1}, Lcom/a/b/bo;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized m()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v2, "Loading queued report data."

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/v;->h:Lcom/a/b/bo;

    invoke-virtual {v0}, Lcom/a/b/bo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/a/b/v;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
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


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/b/v;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/a/b/dd;->a()V

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->c()J

    move-result-wide v0

    sput-wide v0, Lcom/a/b/x;->a:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/b/v;->q:Z

    invoke-direct {p0}, Lcom/a/b/v;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/b/v;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/a/b/dd;->a()V

    invoke-direct {p0, p1, p2}, Lcom/a/b/v;->b(J)V

    const-string v0, "flurry.session_end"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/a/b/v;->b(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/b/v$4;

    invoke-direct {v1, p0}, Lcom/a/b/v$4;-><init>(Lcom/a/b/v;)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x6

    sget-object v1, Lcom/a/b/v;->a:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_0
    const-string v1, "ProtonEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "ProtonConfigUrl"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "analyticsEnabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/b/v;->i:Z

    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, protonEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/a/b/v;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/a/b/v;->j:Ljava/lang/String;

    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, protonConfigUrl = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/a/b/v;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/b/v;->k:Z

    sget-object v0, Lcom/a/b/v;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/a/b/v;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x66855b25 -> :sswitch_2
        0x2633fcbb -> :sswitch_0
        0x5edae5c7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/b/v;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/a/b/dd;->a()V

    invoke-direct {p0, p1, p2}, Lcom/a/b/v;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/b/v;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/a/b/dd;->a()V

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->c()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/a/b/v;->b(J)V

    invoke-direct {p0}, Lcom/a/b/v;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/a/b/v;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/a/b/dd;->a()V

    invoke-direct {p0}, Lcom/a/b/v;->i()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

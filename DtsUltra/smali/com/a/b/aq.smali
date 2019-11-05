.class public Lcom/a/b/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/cy$a;


# static fields
.field static final a:Ljava/lang/String;

.field static b:I

.field static c:I

.field static d:I

.field static e:I

.field static f:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private final G:Lcom/a/b/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bq",
            "<",
            "Lcom/a/b/ct;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/a/b/cs;",
            ">;"
        }
    .end annotation
.end field

.field h:Ljava/io/File;

.field i:Lcom/a/b/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bo",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/a/b/ao;",
            ">;>;"
        }
    .end annotation
.end field

.field public j:Z

.field k:Z

.field l:Ljava/lang/String;

.field m:B

.field n:Ljava/lang/Long;

.field o:Z

.field final p:Lcom/a/b/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bq",
            "<",
            "Lcom/a/b/av;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final r:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/b/ao;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final u:Ljava/util/Map;
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

.field private final v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/b/ak;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/b/al;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/b/aj;",
            ">;"
        }
    .end annotation
.end field

.field private final y:Lcom/a/b/b;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    const/16 v0, 0x64

    sput v0, Lcom/a/b/aq;->b:I

    const/16 v0, 0xa

    sput v0, Lcom/a/b/aq;->c:I

    const/16 v0, 0x3e8

    sput v0, Lcom/a/b/aq;->d:I

    const v0, 0x27100

    sput v0, Lcom/a/b/aq;->e:I

    const/16 v0, 0x32

    sput v0, Lcom/a/b/aq;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/aq;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/aq;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/aq;->s:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/aq;->t:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/a/b/aq;->v:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/aq;->w:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/aq;->x:Ljava/util/List;

    new-instance v0, Lcom/a/b/b;

    invoke-direct {v0}, Lcom/a/b/b;-><init>()V

    iput-object v0, p0, Lcom/a/b/aq;->y:Lcom/a/b/b;

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/b/aq;->B:I

    iput-boolean v2, p0, Lcom/a/b/aq;->C:Z

    iput v1, p0, Lcom/a/b/aq;->D:I

    iput v1, p0, Lcom/a/b/aq;->E:I

    iput v1, p0, Lcom/a/b/aq;->F:I

    iput-boolean v2, p0, Lcom/a/b/aq;->o:Z

    new-instance v0, Lcom/a/b/aq$1;

    invoke-direct {v0, p0}, Lcom/a/b/aq$1;-><init>(Lcom/a/b/aq;)V

    iput-object v0, p0, Lcom/a/b/aq;->p:Lcom/a/b/bq;

    new-instance v0, Lcom/a/b/aq$16;

    invoke-direct {v0, p0}, Lcom/a/b/aq$16;-><init>(Lcom/a/b/aq;)V

    iput-object v0, p0, Lcom/a/b/aq;->G:Lcom/a/b/bq;

    invoke-static {}, Lcom/a/b/br;->a()Lcom/a/b/br;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/a/b/aq;->G:Lcom/a/b/bq;

    invoke-virtual {v0, v1, v2}, Lcom/a/b/br;->a(Ljava/lang/String;Lcom/a/b/bq;)V

    return-void
.end method

.method static synthetic a(Lcom/a/b/aq;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/a/b/aq;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/aq;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/a/b/aq;->a(ZJ)V

    return-void
.end method

.method private declared-synchronized a(ZJ)V
    .locals 20

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/a/b/aq;->o:Z

    if-nez v2, :cond_1

    const/4 v2, 0x3

    sget-object v3, Lcom/a/b/aq;->a:Ljava/lang/String;

    const-string v4, "Analytics disabled, not sending agent report."

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez p1, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/aq;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v2, 0x3

    sget-object v3, Lcom/a/b/aq;->a:Ljava/lang/String;

    const-string v4, "generating agent report"

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v19, 0x0

    :try_start_2
    new-instance v3, Lcom/a/b/am;

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v2

    iget-object v4, v2, Lcom/a/b/bh;->d:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/bd;->a()Lcom/a/b/bd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/bd;->d()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/a/b/aq;->j:Z

    invoke-static {}, Lcom/a/b/au;->a()Lcom/a/b/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/au;->c()Z

    move-result v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/a/b/aq;->z:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/a/b/aq;->s:Ljava/util/List;

    invoke-static {}, Lcom/a/b/au;->a()Lcom/a/b/au;

    move-result-object v2

    iget-object v2, v2, Lcom/a/b/au;->a:Ljava/util/Map;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/aq;->y:Lcom/a/b/b;

    invoke-virtual {v2}, Lcom/a/b/b;->a()Ljava/util/Map;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/a/b/aq;->t:Ljava/util/Map;

    invoke-static {}, Lcom/a/b/bj;->a()Lcom/a/b/bj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/a/b/bj;->b()Ljava/util/HashMap;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v10, p2

    invoke-direct/range {v3 .. v18}, Lcom/a/b/am;-><init>(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V

    iget-object v2, v3, Lcom/a/b/am;->a:[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-nez v2, :cond_3

    :try_start_3
    sget-object v2, Lcom/a/b/aq;->a:Ljava/lang/String;

    const-string v3, "Error generating report"

    invoke-static {v2, v3}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/aq;->s:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/a/b/aq;->i:Lcom/a/b/bo;

    invoke-virtual {v2}, Lcom/a/b/bo;->b()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_0
    move-exception v2

    :try_start_4
    sget-object v3, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception while generating report: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v19

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    sget-object v4, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "generated report of size "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/a/b/aq;->s:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reports."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/a;->a()Lcom/a/b/a;

    move-result-object v3

    iget-object v3, v3, Lcom/a/b/a;->b:Lcom/a/b/an;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/a/b/bi;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v5

    iget-object v5, v5, Lcom/a/b/bh;->d:Ljava/lang/String;

    if-eqz v2, :cond_4

    array-length v6, v2

    if-nez v6, :cond_5

    :cond_4
    const/4 v2, 0x6

    iget-object v3, v3, Lcom/a/b/ch;->a:Ljava/lang/String;

    const-string v4, "Report that has to be sent is EMPTY or NULL"

    invoke-static {v2, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    new-instance v6, Lcom/a/b/ch$3;

    invoke-direct {v6, v3, v2, v5, v4}, Lcom/a/b/ch$3;-><init>(Lcom/a/b/ch;[BLjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Lcom/a/b/ch;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/a/b/aq;)Lcom/a/b/bq;
    .locals 1

    iget-object v0, p0, Lcom/a/b/aq;->G:Lcom/a/b/bq;

    return-object v0
.end method

.method private declared-synchronized b(J)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/b/aq;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/al;

    iget-boolean v2, v0, Lcom/a/b/al;->c:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/a/b/al;->d:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/a/b/al;->d:Z

    iget-wide v2, v0, Lcom/a/b/al;->b:J

    sub-long v2, p1, v2

    iput-wide v2, v0, Lcom/a/b/al;->e:J

    const/4 v2, 0x3

    const-string v3, "FlurryAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Ended event \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/a/b/al;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/a/b/al;->b:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/a/b/al;->e:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V
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

.method static synthetic c(Lcom/a/b/aq;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/aq;->d()V

    return-void
.end method

.method private declared-synchronized d()V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/a/b/aq;->a:Ljava/lang/String;

    const-string v2, "Loading persistent session report data."

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/aq;->i:Lcom/a/b/bo;

    invoke-virtual {v0}, Lcom/a/b/bo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/a/b/aq;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/a/b/aq;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    sget-object v1, Lcom/a/b/aq;->a:Ljava/lang/String;

    const-string v2, "Legacy persistent agent data found, converting."

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/aq;->h:Ljava/io/File;

    invoke-static {v0}, Lcom/a/b/d;->a(Ljava/io/File;)Lcom/a/b/ar;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-boolean v3, v2, Lcom/a/b/ar;->b:Z

    iget-wide v0, v2, Lcom/a/b/ar;->c:J

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->c()J

    move-result-wide v0

    :cond_2
    iput-boolean v3, p0, Lcom/a/b/aq;->j:Z

    iput-wide v0, p0, Lcom/a/b/aq;->z:J

    invoke-direct {p0}, Lcom/a/b/aq;->e()V

    iget-object v0, v2, Lcom/a/b/ar;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/a/b/aq;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    iget-object v0, p0, Lcom/a/b/aq;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Lcom/a/b/aq;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/a/b/aq;)V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.flurry.sdk.previous_successful_report"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/a/b/aq;->j:Z

    const-string v1, "com.flurry.sdk.initial_run_time"

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->c()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/a/b/aq;->z:J

    const-string v1, "com.flurry.sdk.api_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/b/aq;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/b/aq;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/a/b/aq;->z:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/b/aq;->A:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/b/aq;->A:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v1

    iget-object v1, v1, Lcom/a/b/bh;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/b/aq;->z:J

    goto :goto_0
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->a:Landroid/content/Context;

    const-string v1, "FLURRY_SHARED_PREFERENCES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.flurry.sdk.previous_successful_report"

    iget-boolean v2, p0, Lcom/a/b/aq;->j:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.flurry.sdk.initial_run_time"

    iget-wide v2, p0, Lcom/a/b/aq;->z:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v1, "com.flurry.sdk.api_key"

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v2

    iget-object v2, v2, Lcom/a/b/bh;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method static synthetic e(Lcom/a/b/aq;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/aq;->e()V

    return-void
.end method

.method static synthetic f(Lcom/a/b/aq;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/a/b/aq;->s:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/a/b/aq;->a(Z)V

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->c()J

    move-result-wide v2

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->e()J

    move-result-wide v4

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    const-wide/16 v6, 0x0

    invoke-static {}, Lcom/a/b/as;->b()Lcom/a/b/bg;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v6, v0, Lcom/a/b/bg;->f:J

    :cond_0
    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->g()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    iget-boolean v0, p0, Lcom/a/b/aq;->o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/a/b/a;->a()Lcom/a/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/a;->a:Lcom/a/b/v;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/b/aq$9;

    invoke-direct {v1, p0, v2, v3}, Lcom/a/b/aq$9;-><init>(Lcom/a/b/aq;J)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    :cond_1
    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/b/aq$10;

    invoke-direct {v1, p0}, Lcom/a/b/aq$10;-><init>(Lcom/a/b/aq;)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/a/b/au;->a()Lcom/a/b/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/au;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v9

    new-instance v0, Lcom/a/b/aq$11;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/a/b/aq$11;-><init>(Lcom/a/b/aq;JJJI)V

    invoke-virtual {v9, v0}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/a/b/aq;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/b/aq;->o:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget v1, Lcom/a/a/c;->b:I

    iget-boolean v0, p0, Lcom/a/b/aq;->o:Z

    if-nez v0, :cond_1

    sget v0, Lcom/a/a/c;->g:I

    sget-object v1, Lcom/a/b/aq;->a:Ljava/lang/String;

    const-string v2, "Analytics has been disabled, not logging event."

    invoke-static {v1, v2}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->d()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {p1}, Lcom/a/b/dd;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/a/a/c;->a:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/a/b/aq;->v:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/ak;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/a/b/aq;->v:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget v3, Lcom/a/b/aq;->b:I

    if-ge v0, v3, :cond_3

    new-instance v0, Lcom/a/b/ak;

    invoke-direct {v0}, Lcom/a/b/ak;-><init>()V

    const/4 v3, 0x1

    iput v3, v0, Lcom/a/b/ak;->a:I

    iget-object v3, p0, Lcom/a/b/aq;->v:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Event count started: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    iget-boolean v1, p0, Lcom/a/b/aq;->k:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/a/b/aq;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sget v3, Lcom/a/b/aq;->d:I

    if-ge v1, v3, :cond_7

    iget v1, p0, Lcom/a/b/aq;->D:I

    sget v3, Lcom/a/b/aq;->e:I

    if-ge v1, v3, :cond_7

    if-nez p2, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    sget v1, Lcom/a/b/aq;->c:I

    if-le v0, v1, :cond_5

    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MaxEventParams exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/a/a/c;->d:I

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Too many different events. Event not counted: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/a/a/c;->c:I

    goto :goto_1

    :cond_4
    iget v1, v0, Lcom/a/b/ak;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/a/b/ak;->a:I

    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Event count incremented: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/a/a/c;->b:I

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/a/b/al;

    iget-object v1, p0, Lcom/a/b/aq;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-direct/range {v0 .. v5}, Lcom/a/b/al;-><init>(ILjava/lang/String;Ljava/util/Map;J)V

    invoke-virtual {v0}, Lcom/a/b/al;->b()[B

    move-result-object v1

    array-length v1, v1

    iget v4, p0, Lcom/a/b/aq;->D:I

    add-int/2addr v1, v4

    sget v4, Lcom/a/b/aq;->e:I

    if-gt v1, v4, :cond_6

    iget-object v1, p0, Lcom/a/b/aq;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/a/b/aq;->D:I

    invoke-virtual {v0}, Lcom/a/b/al;->b()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/b/aq;->D:I

    sget v0, Lcom/a/a/c;->b:I

    iget-boolean v1, p0, Lcom/a/b/aq;->o:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/a/b/a;->a()Lcom/a/b/a;

    move-result-object v1

    iget-object v1, v1, Lcom/a/b/a;->a:Lcom/a/b/v;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v1

    new-instance v4, Lcom/a/b/aq$14;

    invoke-direct {v4, p0, v2, v3}, Lcom/a/b/aq$14;-><init>(Lcom/a/b/aq;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v4}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    sget v0, Lcom/a/b/aq;->e:I

    iput v0, p0, Lcom/a/b/aq;->D:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/b/aq;->C:Z

    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    const-string v1, "Event Log size exceeded. No more event details logged."

    invoke-static {v0, v1}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/a/a/c;->e:I

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/a/b/aq;->C:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_8
    move-object v3, p2

    goto/16 :goto_2
.end method

.method final declared-synchronized a(JJJI)Lcom/a/b/ao;
    .locals 7

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/a/b/ap;

    invoke-direct {v2}, Lcom/a/b/ap;-><init>()V

    invoke-static {}, Lcom/a/b/bd;->a()Lcom/a/b/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/bd;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/a/b/ap;->a:Ljava/lang/String;

    iput-wide p1, v2, Lcom/a/b/ap;->b:J

    iput-wide p3, v2, Lcom/a/b/ap;->c:J

    iput-wide p5, v2, Lcom/a/b/ap;->d:J

    iget-object v0, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    iput-object v0, v2, Lcom/a/b/ap;->e:Ljava/util/Map;

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->b()Lcom/a/b/bg;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/a/b/bg;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v2, Lcom/a/b/ap;->f:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->b()Lcom/a/b/bg;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/a/b/bg;->e()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v2, Lcom/a/b/ap;->g:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->b()Lcom/a/b/bg;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/a/b/bg;->f()Ljava/util/Map;

    move-result-object v0

    :goto_2
    iput-object v0, v2, Lcom/a/b/ap;->h:Ljava/util/Map;

    invoke-static {}, Lcom/a/b/ax;->a()Lcom/a/b/ax;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/a/b/ap;->i:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/ax;->a()Lcom/a/b/ax;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/a/b/ap;->j:Ljava/lang/String;

    iput p7, v2, Lcom/a/b/ap;->k:I

    iget v0, p0, Lcom/a/b/aq;->B:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/a/b/aq;->B:I

    :goto_3
    iput v0, v2, Lcom/a/b/ap;->l:I

    iget-object v0, p0, Lcom/a/b/aq;->l:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_4
    iput-object v0, v2, Lcom/a/b/ap;->m:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/ay;->a()Lcom/a/b/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/ay;->f()Landroid/location/Location;

    move-result-object v0

    iput-object v0, v2, Lcom/a/b/ap;->n:Landroid/location/Location;

    iget v0, p0, Lcom/a/b/aq;->F:I

    iput v0, v2, Lcom/a/b/ap;->o:I

    iget-byte v0, p0, Lcom/a/b/aq;->m:B

    iput-byte v0, v2, Lcom/a/b/ap;->p:B

    iget-object v0, p0, Lcom/a/b/aq;->n:Ljava/lang/Long;

    iput-object v0, v2, Lcom/a/b/ap;->q:Ljava/lang/Long;

    iget-object v0, p0, Lcom/a/b/aq;->v:Ljava/util/Map;

    iput-object v0, v2, Lcom/a/b/ap;->r:Ljava/util/Map;

    iget-object v0, p0, Lcom/a/b/aq;->w:Ljava/util/List;

    iput-object v0, v2, Lcom/a/b/ap;->s:Ljava/util/List;

    iget-boolean v0, p0, Lcom/a/b/aq;->C:Z

    iput-boolean v0, v2, Lcom/a/b/ap;->t:Z

    iget-object v0, p0, Lcom/a/b/aq;->x:Ljava/util/List;

    iput-object v0, v2, Lcom/a/b/ap;->v:Ljava/util/List;

    iget v0, p0, Lcom/a/b/aq;->E:I

    iput v0, v2, Lcom/a/b/ap;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/a/b/ao;

    invoke-direct {v0, v2}, Lcom/a/b/ao;-><init>(Lcom/a/b/ap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    if-nez v0, :cond_0

    :try_start_2
    sget-object v1, Lcom/a/b/aq;->a:Ljava/lang/String;

    const-string v2, "New session report wasn\'t created"

    invoke-static {v1, v2}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    move-object v0, v1

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto/16 :goto_1

    :cond_3
    move-object v0, v1

    goto/16 :goto_2

    :cond_4
    :try_start_3
    invoke-static {}, Lcom/a/b/db;->a()I

    move-result v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/a/b/aq;->l:Ljava/lang/String;

    goto :goto_4

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    sget-object v3, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error creating analytics session report: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    sget-object v1, Lcom/a/b/aq;->a:Ljava/lang/String;

    const-string v2, "Saving persistent agent data."

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/aq;->i:Lcom/a/b/bo;

    iget-object v1, p0, Lcom/a/b/aq;->s:Ljava/util/List;

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

.method public final declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/a/b/br;->a()Lcom/a/b/br;

    move-result-object v0

    iget-object v1, p0, Lcom/a/b/aq;->p:Lcom/a/b/bq;

    invoke-virtual {v0, v1}, Lcom/a/b/br;->a(Lcom/a/b/bq;)V

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->e()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/a/b/aq;->b(J)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/b/aq$12;

    invoke-direct {v1, p0}, Lcom/a/b/aq$12;-><init>(Lcom/a/b/aq;)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/a/b/au;->a()Lcom/a/b/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/au;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/b/aq$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/a/b/aq$13;-><init>(Lcom/a/b/aq;J)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    :cond_0
    invoke-static {}, Lcom/a/b/cx;->a()Lcom/a/b/cx;

    move-result-object v0

    const-string v1, "Gender"

    invoke-virtual {v0, v1, p0}, Lcom/a/b/cx;->b(Ljava/lang/String;Lcom/a/b/cy$a;)Z

    invoke-static {}, Lcom/a/b/cx;->a()Lcom/a/b/cx;

    move-result-object v0

    const-string v1, "UserId"

    invoke-virtual {v0, v1, p0}, Lcom/a/b/cx;->b(Ljava/lang/String;Lcom/a/b/cy$a;)Z

    invoke-static {}, Lcom/a/b/cx;->a()Lcom/a/b/cx;

    move-result-object v0

    const-string v1, "Age"

    invoke-virtual {v0, v1, p0}, Lcom/a/b/cx;->b(Ljava/lang/String;Lcom/a/b/cy$a;)Z

    invoke-static {}, Lcom/a/b/cx;->a()Lcom/a/b/cx;

    move-result-object v0

    const-string v1, "LogEvents"

    invoke-virtual {v0, v1, p0}, Lcom/a/b/cx;->b(Ljava/lang/String;Lcom/a/b/cy$a;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x3

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Launch Options Bundle is present "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v0, v1}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v4, p0, Lcom/a/b/aq;->t:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Launch options Key: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ". Its value: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v4, v0}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "null"

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x4

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x6

    sget-object v1, Lcom/a/b/aq;->a:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :sswitch_0
    const-string v2, "LogEvents"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "UserId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "Gender"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v2, "Age"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v2, "analyticsEnabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/b/aq;->k:Z

    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, LogEvents = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/a/b/aq;->k:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/a/b/aq;->l:Ljava/lang/String;

    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, UserId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a/b/aq;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    check-cast p2, Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    iput-byte v0, p0, Lcom/a/b/aq;->m:B

    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, Gender = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/a/b/aq;->m:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    iput-object p2, p0, Lcom/a/b/aq;->n:Ljava/lang/Long;

    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, Birthdate = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/a/b/aq;->n:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/a/b/aq;->o:Z

    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSettingUpdate, AnalyticsEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/a/b/aq;->o:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x686fe59a -> :sswitch_1
        -0x66855b25 -> :sswitch_4
        -0x2bfdf2a3 -> :sswitch_0
        0x100df -> :sswitch_3
        0x7eeadee1 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    const/4 v0, 0x0

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    const-string v1, "uncaught"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/a/b/aq;->E:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/a/b/aq;->E:I

    iget-object v2, p0, Lcom/a/b/aq;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget v3, Lcom/a/b/aq;->f:I

    if-ge v2, v3, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v0, Lcom/a/b/aj;

    iget-object v1, p0, Lcom/a/b/aq;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/a/b/aj;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/a/b/aq;->x:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error logged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/a/b/aj;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    move v8, v0

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/a/b/aq;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lcom/a/b/aq;->x:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/aj;

    iget-object v1, v0, Lcom/a/b/aj;->a:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "uncaught"

    iget-object v0, v0, Lcom/a/b/aj;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v0, Lcom/a/b/aj;

    iget-object v1, p0, Lcom/a/b/aq;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/a/b/aj;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/a/b/aq;->x:Ljava/util/List;

    invoke-interface {v1, v8, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_4
    :try_start_2
    sget-object v0, Lcom/a/b/aq;->a:Ljava/lang/String;

    const-string v1, "Max errors logged. No more errors logged."

    invoke-static {v0, v1}, Lcom/a/b/bv;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method final a(Z)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    const/4 v8, 0x5

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    const-string v3, "boot.time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_3

    iget-object v4, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    const-string v5, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    const-string v5, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    const-string v4, "disk.size.total.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    const-string v4, "disk.size.available.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    const-string v3, "carrier.name"

    invoke-static {}, Lcom/a/b/bb;->a()Lcom/a/b/bb;

    invoke-static {}, Lcom/a/b/bb;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    const-string v3, "carrier.details"

    invoke-static {}, Lcom/a/b/bb;->a()Lcom/a/b/bb;

    invoke-static {}, Lcom/a/b/bb;->c()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->a:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-object v4, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "memory.available"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string v0, ".start"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_1

    iget-object v4, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "memory.total"

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    const-string v0, ".start"

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v3

    iget-object v3, v3, Lcom/a/b/bh;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v0, "status"

    const/4 v3, -0x1

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-ne v0, v8, :cond_6

    :cond_2
    const/4 v0, 0x1

    :goto_3
    :try_start_1
    const-string v1, "level"

    const/4 v3, -0x1

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :try_start_2
    const-string v1, "scale"

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    move v2, v3

    :goto_4
    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    iget-object v3, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "battery.charging"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    const-string v1, ".start"

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "battery.remaining"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const-string v0, ".start"

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    iget-object v4, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    const-string v5, "disk.size.total.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    const-string v5, "disk.size.available.internal"

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    const-string v4, "disk.size.total.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v6, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/b/aq;->u:Ljava/util/Map;

    const-string v4, "disk.size.available.external"

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    const-string v0, ".end"

    goto/16 :goto_1

    :cond_5
    const-string v0, ".end"

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v1

    move v1, v2

    :goto_7
    sget-object v4, Lcom/a/b/aq;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error getting battery status: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v4, v3}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v9, v2

    move v2, v1

    move v1, v9

    goto/16 :goto_4

    :cond_7
    const-string v1, ".end"

    goto/16 :goto_5

    :cond_8
    const-string v0, ".end"

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v3, v1

    move v1, v2

    goto :goto_7

    :catch_2
    move-exception v1

    move-object v9, v1

    move v1, v3

    move-object v3, v9

    goto :goto_7

    :cond_9
    move v0, v1

    move v1, v2

    goto/16 :goto_4
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/a/b/db;->a()I

    move-result v0

    iput v0, p0, Lcom/a/b/aq;->B:I

    invoke-static {}, Lcom/a/b/a;->a()Lcom/a/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/a;->c:Lcom/a/b/x;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/b/aq$7;

    invoke-direct {v1, p0}, Lcom/a/b/aq$7;-><init>(Lcom/a/b/aq;)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/a/b/aq;->o:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/a/b/a;->a()Lcom/a/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/a;->a:Lcom/a/b/v;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/b/aq$8;

    invoke-direct {v1, p0}, Lcom/a/b/aq$8;-><init>(Lcom/a/b/aq;)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/a/b/aq;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/a/b/y;
.super Lcom/a/b/cf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/b/y$a;
    }
.end annotation


# static fields
.field private static final t:Ljava/lang/String;


# instance fields
.field final a:J

.field final b:I

.field final c:I

.field final d:Lcom/a/b/af;

.field final e:Ljava/util/Map;
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

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/a/b/z;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/a/b/ac;

.field h:J

.field i:I

.field j:I

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/y;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JIILcom/a/b/af;Ljava/util/Map;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JII",
            "Lcom/a/b/af;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/a/b/cf;-><init>()V

    iput-object p4, p0, Lcom/a/b/cf;->q:Ljava/lang/String;

    iput-object p4, p0, Lcom/a/b/cf;->r:Ljava/lang/String;

    iput-wide p5, p0, Lcom/a/b/cf;->n:J

    invoke-virtual {p0}, Lcom/a/b/y;->a()V

    iput-object p1, p0, Lcom/a/b/y;->l:Ljava/lang/String;

    iput-wide p2, p0, Lcom/a/b/y;->a:J

    iput p7, p0, Lcom/a/b/cf;->s:I

    iput p7, p0, Lcom/a/b/y;->b:I

    iput p8, p0, Lcom/a/b/y;->c:I

    iput-object p9, p0, Lcom/a/b/y;->d:Lcom/a/b/af;

    iput-object p10, p0, Lcom/a/b/y;->e:Ljava/util/Map;

    iput p11, p0, Lcom/a/b/y;->i:I

    iput p12, p0, Lcom/a/b/y;->j:I

    iput-object p13, p0, Lcom/a/b/y;->k:Ljava/lang/String;

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/a/b/y;->h:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/a/b/y;->f:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/a/b/y;J)J
    .locals 1

    iput-wide p1, p0, Lcom/a/b/y;->h:J

    return-wide p1
.end method

.method static synthetic a(Lcom/a/b/y;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/b/y;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/y;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/a/b/y;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/a/b/y;)J
    .locals 2

    iget-wide v0, p0, Lcom/a/b/y;->a:J

    return-wide v0
.end method

.method static synthetic c(Lcom/a/b/y;)I
    .locals 1

    iget v0, p0, Lcom/a/b/y;->b:I

    return v0
.end method

.method static synthetic d(Lcom/a/b/y;)I
    .locals 1

    iget v0, p0, Lcom/a/b/y;->c:I

    return v0
.end method

.method static synthetic e(Lcom/a/b/y;)Lcom/a/b/af;
    .locals 1

    iget-object v0, p0, Lcom/a/b/y;->d:Lcom/a/b/af;

    return-object v0
.end method

.method static synthetic f(Lcom/a/b/y;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/a/b/y;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/a/b/y;)J
    .locals 2

    iget-wide v0, p0, Lcom/a/b/y;->h:J

    return-wide v0
.end method

.method static synthetic h(Lcom/a/b/y;)I
    .locals 1

    iget v0, p0, Lcom/a/b/y;->i:I

    return v0
.end method

.method static synthetic i(Lcom/a/b/y;)I
    .locals 1

    iget v0, p0, Lcom/a/b/y;->j:I

    return v0
.end method

.method static synthetic j(Lcom/a/b/y;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/b/y;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/a/b/y;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/b/y;->m:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-super {p0}, Lcom/a/b/cf;->a()V

    iget v0, p0, Lcom/a/b/cf;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/a/b/y;->h:J

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/a/b/y;->h:J

    :cond_0
    return-void
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/b/y;->g:Lcom/a/b/ac;

    invoke-virtual {v0}, Lcom/a/b/ac;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/a/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/z;

    iput-object p0, v0, Lcom/a/b/z;->l:Lcom/a/b/y;

    goto :goto_0

    :cond_0
    return-void
.end method

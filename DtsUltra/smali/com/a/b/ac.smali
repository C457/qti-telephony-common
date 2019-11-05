.class public final Lcom/a/b/ac;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/b/ac$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public a:J

.field b:I

.field public c:Ljava/lang/String;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/a/b/y;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:Lcom/a/b/ag;

.field private i:Z

.field private j:I

.field private k:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/ac;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJJLcom/a/b/ag;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Lcom/a/b/ag;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/a/b/y;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/ac;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/a/b/ac;->i:Z

    iput-wide p3, p0, Lcom/a/b/ac;->a:J

    iput-wide p5, p0, Lcom/a/b/ac;->g:J

    iput-object p7, p0, Lcom/a/b/ac;->h:Lcom/a/b/ag;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/a/b/ac;->f:J

    iput-object p8, p0, Lcom/a/b/ac;->d:Ljava/util/Map;

    if-eqz p8, :cond_1

    invoke-interface {p8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/y;

    iput-object p0, v0, Lcom/a/b/y;->g:Lcom/a/b/ac;

    goto :goto_0

    :cond_0
    invoke-interface {p8}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/a/b/ac;->j:I

    :goto_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/a/b/ac;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void

    :cond_1
    iput v2, p0, Lcom/a/b/ac;->j:I

    goto :goto_1
.end method

.method static synthetic a(Lcom/a/b/ac;I)I
    .locals 0

    iput p1, p0, Lcom/a/b/ac;->b:I

    return p1
.end method

.method static synthetic a(Lcom/a/b/ac;)J
    .locals 2

    iget-wide v0, p0, Lcom/a/b/ac;->a:J

    return-wide v0
.end method

.method static synthetic a(Lcom/a/b/ac;J)J
    .locals 1

    iput-wide p1, p0, Lcom/a/b/ac;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/a/b/ac;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/a/b/ac;->d:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lcom/a/b/ac;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iput-object p1, p0, Lcom/a/b/ac;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p1
.end method

.method static synthetic b(Lcom/a/b/ac;I)I
    .locals 0

    iput p1, p0, Lcom/a/b/ac;->j:I

    return p1
.end method

.method static synthetic b(Lcom/a/b/ac;)J
    .locals 2

    iget-wide v0, p0, Lcom/a/b/ac;->f:J

    return-wide v0
.end method

.method static synthetic c(Lcom/a/b/ac;)J
    .locals 2

    iget-wide v0, p0, Lcom/a/b/ac;->g:J

    return-wide v0
.end method

.method static synthetic d(Lcom/a/b/ac;)Lcom/a/b/ag;
    .locals 1

    iget-object v0, p0, Lcom/a/b/ac;->h:Lcom/a/b/ag;

    return-object v0
.end method

.method static synthetic e(Lcom/a/b/ac;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/b/ac;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/a/b/ac;)I
    .locals 1

    iget v0, p0, Lcom/a/b/ac;->b:I

    return v0
.end method

.method static synthetic g(Lcom/a/b/ac;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/b/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/a/b/ac;)I
    .locals 1

    iget v0, p0, Lcom/a/b/ac;->j:I

    return v0
.end method

.method static synthetic i(Lcom/a/b/ac;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/a/b/ac;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic j(Lcom/a/b/ac;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/a/b/ac;->d:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/a/b/y;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/b/ac;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/a/b/ac;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/a/b/ac;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    iget v1, p0, Lcom/a/b/ac;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

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
    iget-object v0, p0, Lcom/a/b/ac;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()[B
    .locals 8

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/a/b/ac;->h:Lcom/a/b/ag;

    iget v0, v0, Lcom/a/b/ag;->e:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v0, p0, Lcom/a/b/ac;->a:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v0, p0, Lcom/a/b/ac;->g:J

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean v0, p0, Lcom/a/b/ac;->i:Z

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/a/b/ac;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/a/b/ac;->b:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/a/b/ac;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/a/b/ac;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/a/b/ac;->d:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/a/b/ac;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/y;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v0, v1, Lcom/a/b/cf;->r:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/a/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, v1, Lcom/a/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/z;

    iget v5, v0, Lcom/a/b/z;->a:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v6, v0, Lcom/a/b/z;->b:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v6, v0, Lcom/a/b/z;->c:J

    invoke-virtual {v2, v6, v7}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean v5, v0, Lcom/a/b/z;->d:Z

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget v5, v0, Lcom/a/b/z;->e:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v5, v0, Lcom/a/b/z;->f:Lcom/a/b/aa;

    iget v5, v5, Lcom/a/b/aa;->e:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v5, v0, Lcom/a/b/z;->e:I

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_2

    iget v5, v0, Lcom/a/b/z;->e:I

    const/16 v6, 0x190

    if-lt v5, v6, :cond_3

    :cond_2
    iget-object v5, v0, Lcom/a/b/z;->g:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/a/b/z;->g:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    :cond_3
    iget v5, v0, Lcom/a/b/z;->h:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v6, v0, Lcom/a/b/z;->k:J

    long-to-int v0, v6

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    const/4 v2, 0x6

    :try_start_2
    sget-object v3, Lcom/a/b/ac;->e:Ljava/lang/String;

    const-string v4, "Error when generating report"

    invoke-static {v2, v3, v4, v0}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    invoke-static {v2}, Lcom/a/b/dd;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    invoke-static {v2}, Lcom/a/b/dd;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

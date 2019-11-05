.class public Lcom/a/b/ad;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Lcom/a/b/ad;


# instance fields
.field public b:Ljava/lang/String;

.field private d:Lcom/a/b/bo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bo",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/a/b/ae;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/b/ae;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/a/b/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/a/b/ad;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/a/b/ad;->c:Lcom/a/b/ad;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/a/b/ad;
    .locals 7

    const-class v1, Lcom/a/b/ad;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/a/b/ad;->c:Lcom/a/b/ad;

    if-nez v0, :cond_0

    new-instance v2, Lcom/a/b/ad;

    invoke-direct {v2}, Lcom/a/b/ad;-><init>()V

    sput-object v2, Lcom/a/b/ad;->c:Lcom/a/b/ad;

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".yflurrypulselogging."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v4

    iget-object v4, v4, Lcom/a/b/bh;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/a/b/dd;->e(Ljava/lang/String;)J

    move-result-wide v4

    const/16 v6, 0x10

    invoke-static {v4, v5, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v3, Lcom/a/b/bo;

    const-string v4, ".yflurrypulselogging."

    const/4 v5, 0x1

    new-instance v6, Lcom/a/b/ad$1;

    invoke-direct {v6, v2}, Lcom/a/b/ad$1;-><init>(Lcom/a/b/ad;)V

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/a/b/bo;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/a/b/cr;)V

    iput-object v3, v2, Lcom/a/b/ad;->d:Lcom/a/b/bo;

    invoke-static {}, Lcom/a/b/cx;->a()Lcom/a/b/cx;

    move-result-object v0

    const-string v3, "UseHttps"

    invoke-virtual {v0, v3}, Lcom/a/b/cy;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v2, Lcom/a/b/ad;->f:Z

    const/4 v0, 0x4

    sget-object v3, Lcom/a/b/ad;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, UseHttps = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v2, Lcom/a/b/ad;->f:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v2, Lcom/a/b/ad;->d:Lcom/a/b/bo;

    invoke-virtual {v0}, Lcom/a/b/bo;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, v2, Lcom/a/b/ad;->e:Ljava/util/List;

    iget-object v0, v2, Lcom/a/b/ad;->e:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v2, Lcom/a/b/ad;->e:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/a/b/ad;->c:Lcom/a/b/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/a/b/ad;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/a/b/ad;->e:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized a([B)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/a/b/ba;->a()Lcom/a/b/ba;

    move-result-object v0

    iget-boolean v0, v0, Lcom/a/b/ba;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x5

    sget-object v1, Lcom/a/b/ad;->a:Ljava/lang/String;

    const-string v2, "Reports were not sent! No Internet connection!"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    sget-object v1, Lcom/a/b/ad;->a:Ljava/lang/String;

    const-string v2, "No report need be sent"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/a/b/ad;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/a/b/ad;->b:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x4

    sget-object v2, Lcom/a/b/ad;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PulseLoggingManager: start upload data "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/a/b/cb;

    invoke-direct {v1}, Lcom/a/b/cb;-><init>()V

    iput-object v0, v1, Lcom/a/b/cd;->g:Ljava/lang/String;

    const v0, 0x186a0

    iput v0, v1, Lcom/a/b/dg;->u:I

    sget-object v0, Lcom/a/b/cd$a;->c:Lcom/a/b/cd$a;

    iput-object v0, v1, Lcom/a/b/cd;->h:Lcom/a/b/cd$a;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/a/b/cd;->k:Z

    const-string v0, "Content-Type"

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v0, v2}, Lcom/a/b/cb;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/a/b/cl;

    invoke-direct {v0}, Lcom/a/b/cl;-><init>()V

    iput-object v0, v1, Lcom/a/b/cb;->c:Lcom/a/b/cp;

    iput-object p1, v1, Lcom/a/b/cb;->b:Ljava/lang/Object;

    new-instance v0, Lcom/a/b/ad$2;

    invoke-direct {v0, p0}, Lcom/a/b/ad$2;-><init>(Lcom/a/b/ad;)V

    iput-object v0, v1, Lcom/a/b/cb;->a:Lcom/a/b/cb$a;

    invoke-static {}, Lcom/a/b/bf;->a()Lcom/a/b/bf;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/a/b/bf;->a(Ljava/lang/Object;Lcom/a/b/dg;)V

    goto :goto_0

    :cond_3
    const-string v0, "https://data.flurry.com/pcr.do"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/a/b/ad;)Lcom/a/b/bo;
    .locals 1

    iget-object v0, p0, Lcom/a/b/ad;->d:Lcom/a/b/bo;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/a/b/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()[B
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/a/b/ad;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/ad;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v2}, Lcom/a/b/dd;->a(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/bh;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/bd;->a()Lcom/a/b/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/bd;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/bi;->b()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-static {}, Lcom/a/b/bd;->a()Lcom/a/b/bd;

    invoke-static {}, Lcom/a/b/bd;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/au;->a()Lcom/a/b/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/au;->c()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/a/b/au;->a()Lcom/a/b/au;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/au;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v6, Lcom/a/b/j;

    invoke-direct {v6}, Lcom/a/b/j;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/bc;

    iget v1, v1, Lcom/a/b/bc;->c:I

    iput v1, v6, Lcom/a/b/j;->a:I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/b/bc;

    iget-boolean v1, v1, Lcom/a/b/bc;->d:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v6, Lcom/a/b/j;->b:Ljava/lang/String;

    :goto_2
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    const/4 v2, 0x6

    :try_start_3
    sget-object v3, Lcom/a/b/ad;->a:Ljava/lang/String;

    const-string v4, "Error when generating report"

    invoke-static {v2, v3, v4, v0}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    invoke-static {v2}, Lcom/a/b/dd;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :try_start_4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/a/b/dd;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/a/b/j;->b:Ljava/lang/String;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/j;

    iget v4, v0, Lcom/a/b/j;->a:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, v0, Lcom/a/b/j;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_5

    :cond_4
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget v0, Lcom/a/b/w;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget v0, Lcom/a/b/w;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget v0, Lcom/a/b/w;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget v0, Lcom/a/b/w;->e:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget v0, Lcom/a/b/w;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget v0, Lcom/a/b/w;->g:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/ad;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/a/b/ad;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/ae;

    iget-object v0, v0, Lcom/a/b/ae;->a:[B

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_6

    :cond_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    invoke-static {v2}, Lcom/a/b/dd;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto/16 :goto_4

    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/a/b/ac;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/a/b/ae;

    invoke-virtual {p1}, Lcom/a/b/ac;->d()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/b/ae;-><init>([B)V

    iget-object v1, p0, Lcom/a/b/ad;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    sget-object v1, Lcom/a/b/ad;->a:Ljava/lang/String;

    const-string v2, "Saving persistent Pulse logging data."

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/a/b/ad;->d:Lcom/a/b/bo;

    iget-object v1, p0, Lcom/a/b/ad;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/a/b/bo;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x6

    :try_start_1
    sget-object v1, Lcom/a/b/ad;->a:Ljava/lang/String;

    const-string v2, "Error when generating pulse log report in addReport part"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/a/b/ad;->d()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/a/b/ad;->a([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x6

    :try_start_1
    sget-object v1, Lcom/a/b/ad;->a:Ljava/lang/String;

    const-string v2, "Report not send due to exception in generate data"

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

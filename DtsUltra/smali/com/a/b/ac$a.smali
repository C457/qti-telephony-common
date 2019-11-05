.class public final Lcom/a/b/ac$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/b/cp",
        "<",
        "Lcom/a/b/ac;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/a/b/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/co",
            "<",
            "Lcom/a/b/y;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/b/co;

    new-instance v1, Lcom/a/b/y$a;

    invoke-direct {v1}, Lcom/a/b/y$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/a/b/co;-><init>(Lcom/a/b/cp;)V

    iput-object v0, p0, Lcom/a/b/ac$a;->a:Lcom/a/b/co;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 14

    const/4 v9, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v9

    :cond_0
    new-instance v0, Lcom/a/b/ac$a$2;

    invoke-direct {v0, p0, p1}, Lcom/a/b/ac$a$2;-><init>(Lcom/a/b/ac$a;Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v10

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/a/b/ag;->a(I)Lcom/a/b/ag;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v1, Lcom/a/b/ac;

    invoke-direct/range {v1 .. v9}, Lcom/a/b/ac;-><init>(Ljava/lang/String;ZJJLcom/a/b/ag;Ljava/util/Map;)V

    invoke-static {v1, v10, v11}, Lcom/a/b/ac;->a(Lcom/a/b/ac;J)J

    invoke-static {v1, v12}, Lcom/a/b/ac;->a(Lcom/a/b/ac;I)I

    invoke-static {v1, v13}, Lcom/a/b/ac;->b(Lcom/a/b/ac;I)I

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {v1, v2}, Lcom/a/b/ac;->a(Lcom/a/b/ac;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/a/b/ac$a;->a:Lcom/a/b/co;

    invoke-virtual {v0, p1}, Lcom/a/b/co;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/a/b/ac;->a(Lcom/a/b/ac;Ljava/util/Map;)Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/b/y;

    iput-object v1, v0, Lcom/a/b/y;->g:Lcom/a/b/ac;

    invoke-static {v1}, Lcom/a/b/ac;->j(Lcom/a/b/ac;)Ljava/util/Map;

    move-result-object v3

    iget-wide v4, v0, Lcom/a/b/y;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v9, v1

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lcom/a/b/ac;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/a/b/ac$a$1;

    invoke-direct {v0, p0, p1}, Lcom/a/b/ac$a$1;-><init>(Lcom/a/b/ac$a;Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/a/b/ac;->a(Lcom/a/b/ac;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/a/b/ac;->b(Lcom/a/b/ac;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/a/b/ac;->c(Lcom/a/b/ac;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/a/b/ac;->d(Lcom/a/b/ac;)Lcom/a/b/ag;

    move-result-object v1

    iget v1, v1, Lcom/a/b/ag;->e:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/a/b/ac;->e(Lcom/a/b/ac;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-static {p2}, Lcom/a/b/ac;->f(Lcom/a/b/ac;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/a/b/ac;->g(Lcom/a/b/ac;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p2}, Lcom/a/b/ac;->g(Lcom/a/b/ac;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_1
    invoke-static {p2}, Lcom/a/b/ac;->h(Lcom/a/b/ac;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/a/b/ac;->i(Lcom/a/b/ac;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/a/b/ac$a;->a:Lcom/a/b/co;

    invoke-virtual {p2}, Lcom/a/b/ac;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/a/b/co;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1
.end method

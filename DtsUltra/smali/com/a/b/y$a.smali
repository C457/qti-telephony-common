.class public final Lcom/a/b/y$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/y;
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
        "Lcom/a/b/y;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/a/b/co;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/co",
            "<",
            "Lcom/a/b/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/a/b/co;

    new-instance v1, Lcom/a/b/z$a;

    invoke-direct {v1}, Lcom/a/b/z$a;-><init>()V

    invoke-direct {v0, v1}, Lcom/a/b/co;-><init>(Lcom/a/b/cp;)V

    iput-object v0, p0, Lcom/a/b/y$a;->a:Lcom/a/b/co;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 22

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    new-instance v18, Lcom/a/b/y$a$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/a/b/y$a$2;-><init>(Lcom/a/b/y$a;Ljava/io/InputStream;)V

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    :cond_1
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v9

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {v4}, Lcom/a/b/af;->a(I)Lcom/a/b/af;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    if-eqz v15, :cond_2

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v15, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v20

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readInt()I

    move-result v16

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v17

    const-string v4, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v17, 0x0

    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v18

    new-instance v4, Lcom/a/b/y;

    invoke-direct/range {v4 .. v17}, Lcom/a/b/y;-><init>(Ljava/lang/String;JLjava/lang/String;JIILcom/a/b/af;Ljava/util/Map;IILjava/lang/String;)V

    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Lcom/a/b/y;->a(Lcom/a/b/y;J)J

    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/a/b/y;->a(Lcom/a/b/y;Z)Z

    move/from16 v0, v19

    iput v0, v4, Lcom/a/b/cf;->p:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/a/b/y$a;->a:Lcom/a/b/co;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/a/b/co;->b(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v4, Lcom/a/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/a/b/y;->c()V

    goto/16 :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 4

    check-cast p2, Lcom/a/b/y;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/a/b/y$a$1;

    invoke-direct {v1, p0, p1}, Lcom/a/b/y$a$1;-><init>(Lcom/a/b/y$a;Ljava/io/OutputStream;)V

    invoke-static {p2}, Lcom/a/b/y;->a(Lcom/a/b/y;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/a/b/y;->a(Lcom/a/b/y;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p2, Lcom/a/b/cf;->r:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/a/b/cf;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_2
    iget-wide v2, p2, Lcom/a/b/cf;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget v0, p2, Lcom/a/b/cf;->p:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/a/b/y;->b(Lcom/a/b/y;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/a/b/y;->c(Lcom/a/b/y;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/a/b/y;->d(Lcom/a/b/y;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/a/b/y;->e(Lcom/a/b/y;)Lcom/a/b/af;

    move-result-object v0

    iget v0, v0, Lcom/a/b/af;->e:I

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/a/b/y;->f(Lcom/a/b/y;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p2}, Lcom/a/b/y;->f(Lcom/a/b/y;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/a/b/y;->f(Lcom/a/b/y;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    :cond_5
    invoke-static {p2}, Lcom/a/b/y;->g(Lcom/a/b/y;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-static {p2}, Lcom/a/b/y;->h(Lcom/a/b/y;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/a/b/y;->i(Lcom/a/b/y;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-static {p2}, Lcom/a/b/y;->j(Lcom/a/b/y;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/a/b/y;->j(Lcom/a/b/y;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_4
    invoke-static {p2}, Lcom/a/b/y;->k(Lcom/a/b/y;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    iget-object v0, p0, Lcom/a/b/y$a;->a:Lcom/a/b/co;

    iget-object v1, p2, Lcom/a/b/y;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/a/b/co;->a(Ljava/io/OutputStream;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_4
.end method

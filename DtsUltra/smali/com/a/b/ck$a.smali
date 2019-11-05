.class public final Lcom/a/b/ck$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/ck;
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
        "Lcom/a/b/ck;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/a/b/ck$a$2;

    invoke-direct {v1, p0, p1}, Lcom/a/b/ck$a$2;-><init>(Lcom/a/b/ck$a;Ljava/io/InputStream;)V

    new-instance v0, Lcom/a/b/ck;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/a/b/ck;-><init>(B)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/a/b/ck;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Lcom/a/b/ck;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/a/b/ck$a$1;

    invoke-direct {v0, p0, p1}, Lcom/a/b/ck$a$1;-><init>(Lcom/a/b/ck$a;Ljava/io/OutputStream;)V

    iget-object v1, p2, Lcom/a/b/ck;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    goto :goto_0
.end method

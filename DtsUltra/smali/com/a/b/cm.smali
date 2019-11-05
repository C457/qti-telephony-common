.class public Lcom/a/b/cm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/cp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/a/b/cp",
        "<TObjectType;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/a/b/cp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/cp",
            "<TObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/a/b/cp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/b/cp",
            "<TObjectType;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/b/cm;->a:Lcom/a/b/cp;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TObjectType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/b/cm;->a:Lcom/a/b/cp;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/a/b/cm;->a:Lcom/a/b/cp;

    invoke-interface {v0, p1}, Lcom/a/b/cp;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TObjectType;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/b/cm;->a:Lcom/a/b/cp;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/a/b/cm;->a:Lcom/a/b/cp;

    invoke-interface {v0, p1, p2}, Lcom/a/b/cp;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

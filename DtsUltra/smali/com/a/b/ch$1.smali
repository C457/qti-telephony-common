.class final Lcom/a/b/ch$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/bq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/a/b/bq",
        "<",
        "Lcom/a/b/az;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/ch;


# direct methods
.method constructor <init>(Lcom/a/b/ch;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/ch$1;->a:Lcom/a/b/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/b/bp;)V
    .locals 4

    check-cast p1, Lcom/a/b/az;

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/a/b/ch$1;->a:Lcom/a/b/ch;

    iget-object v1, v1, Lcom/a/b/ch;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onNetworkStateChanged : isNetworkEnable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Lcom/a/b/az;->a:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/a/b/bv;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/a/b/az;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/ch$1;->a:Lcom/a/b/ch;

    invoke-virtual {v0}, Lcom/a/b/ch;->b()V

    :cond_0
    return-void
.end method

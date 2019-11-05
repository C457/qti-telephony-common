.class final Lcom/a/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/bq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a;
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
        "Lcom/a/b/ct;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/a/b/bp;)V
    .locals 2

    check-cast p1, Lcom/a/b/ct;

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v0

    new-instance v1, Lcom/a/a/a$1$1;

    invoke-direct {v1, p0, p1}, Lcom/a/a/a$1$1;-><init>(Lcom/a/a/a$1;Lcom/a/b/ct;)V

    invoke-virtual {v0, v1}, Lcom/a/b/bh;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.class final Lcom/a/b/cg$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/b/bq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/cg;
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
.field final synthetic a:Lcom/a/b/cg;


# direct methods
.method constructor <init>(Lcom/a/b/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/cg$2;->a:Lcom/a/b/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/a/b/bp;)V
    .locals 1

    check-cast p1, Lcom/a/b/az;

    iget-boolean v0, p1, Lcom/a/b/az;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/b/cg$2;->a:Lcom/a/b/cg;

    invoke-static {v0}, Lcom/a/b/cg;->a(Lcom/a/b/cg;)V

    :cond_0
    return-void
.end method

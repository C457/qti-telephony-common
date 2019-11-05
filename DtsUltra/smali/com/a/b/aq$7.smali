.class final Lcom/a/b/aq$7;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/aq;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/aq;


# direct methods
.method constructor <init>(Lcom/a/b/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/aq$7;->a:Lcom/a/b/aq;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-static {}, Lcom/a/b/a;->a()Lcom/a/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/a;->c:Lcom/a/b/x;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/a/b/cg;->c:Z

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v1

    new-instance v2, Lcom/a/b/cg$5;

    invoke-direct {v2, v0}, Lcom/a/b/cg$5;-><init>(Lcom/a/b/cg;)V

    invoke-virtual {v1, v2}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    return-void
.end method

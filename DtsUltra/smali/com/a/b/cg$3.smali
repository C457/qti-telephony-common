.class final Lcom/a/b/cg$3;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/cg;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/cg;


# direct methods
.method constructor <init>(Lcom/a/b/cg;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/cg$3;->a:Lcom/a/b/cg;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/a/b/cg$3;->a:Lcom/a/b/cg;

    iget-object v1, p0, Lcom/a/b/cg$3;->a:Lcom/a/b/cg;

    invoke-static {v1}, Lcom/a/b/cg;->b(Lcom/a/b/cg;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/b/cg;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/a/b/cg$3;->a:Lcom/a/b/cg;

    invoke-static {v0}, Lcom/a/b/cg;->a(Lcom/a/b/cg;)V

    return-void
.end method

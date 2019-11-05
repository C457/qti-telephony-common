.class final Lcom/a/b/aq$12$1;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/aq$12;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/aq$12;


# direct methods
.method constructor <init>(Lcom/a/b/aq$12;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/aq$12$1;->a:Lcom/a/b/aq$12;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/a/b/a;->a()Lcom/a/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/a;->c:Lcom/a/b/x;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/a/b/cg;->c:Z

    return-void
.end method

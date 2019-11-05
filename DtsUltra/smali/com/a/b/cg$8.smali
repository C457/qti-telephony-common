.class final Lcom/a/b/cg$8;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/cg;->d(Lcom/a/b/cf;)V
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

    iput-object p1, p0, Lcom/a/b/cg$8;->a:Lcom/a/b/cg;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/a/b/cg$8;->a:Lcom/a/b/cg;

    invoke-static {v0}, Lcom/a/b/cg;->c(Lcom/a/b/cg;)V

    return-void
.end method

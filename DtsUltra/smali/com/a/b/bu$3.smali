.class final Lcom/a/b/bu$3;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/bu;->b(Lcom/a/b/dg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/dg;

.field final synthetic b:Lcom/a/b/bu;


# direct methods
.method constructor <init>(Lcom/a/b/bu;Lcom/a/b/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/bu$3;->b:Lcom/a/b/bu;

    iput-object p2, p0, Lcom/a/b/bu$3;->a:Lcom/a/b/dg;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/a/b/bu$3;->a:Lcom/a/b/dg;

    invoke-virtual {v0}, Lcom/a/b/dg;->h()V

    return-void
.end method

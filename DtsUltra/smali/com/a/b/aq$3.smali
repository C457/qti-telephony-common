.class final Lcom/a/b/aq$3;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/aq;
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

    iput-object p1, p0, Lcom/a/b/aq$3;->a:Lcom/a/b/aq;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-static {}, Lcom/a/b/a;->a()Lcom/a/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/a;->a:Lcom/a/b/v;

    invoke-virtual {v0}, Lcom/a/b/v;->a()V

    return-void
.end method

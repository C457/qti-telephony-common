.class final Lcom/a/b/aq$9;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/aq;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/a/b/aq;


# direct methods
.method constructor <init>(Lcom/a/b/aq;J)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/aq$9;->b:Lcom/a/b/aq;

    iput-wide p2, p0, Lcom/a/b/aq$9;->a:J

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/a/b/a;->a()Lcom/a/b/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/b/a;->a:Lcom/a/b/v;

    iget-wide v2, p0, Lcom/a/b/aq$9;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/a/b/v;->a(J)V

    return-void
.end method

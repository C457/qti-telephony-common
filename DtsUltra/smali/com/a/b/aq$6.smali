.class final Lcom/a/b/aq$6;
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

    iput-object p1, p0, Lcom/a/b/aq$6;->a:Lcom/a/b/aq;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/a/b/aq$6;->a:Lcom/a/b/aq;

    const/4 v1, 0x1

    invoke-static {}, Lcom/a/b/as;->a()Lcom/a/b/as;

    invoke-static {}, Lcom/a/b/as;->c()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/a/b/aq;->a(Lcom/a/b/aq;ZJ)V

    return-void
.end method

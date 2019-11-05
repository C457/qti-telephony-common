.class final Lcom/a/b/aq$13;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/aq;->a(J)V
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

    iput-object p1, p0, Lcom/a/b/aq$13;->b:Lcom/a/b/aq;

    iput-wide p2, p0, Lcom/a/b/aq$13;->a:J

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/a/b/aq$13;->b:Lcom/a/b/aq;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/a/b/aq$13;->a:J

    invoke-static {v0, v1, v2, v3}, Lcom/a/b/aq;->a(Lcom/a/b/aq;ZJ)V

    return-void
.end method

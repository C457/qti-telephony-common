.class final Lcom/a/b/v$3$1;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/v$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/a/b/v$3;


# direct methods
.method constructor <init>(Lcom/a/b/v$3;[B)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/v$3$1;->b:Lcom/a/b/v$3;

    iput-object p2, p0, Lcom/a/b/v$3$1;->a:[B

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lcom/a/b/v$3$1;->b:Lcom/a/b/v$3;

    iget-object v0, v0, Lcom/a/b/v$3;->c:Lcom/a/b/v;

    iget-object v1, p0, Lcom/a/b/v$3$1;->b:Lcom/a/b/v$3;

    iget-wide v2, v1, Lcom/a/b/v$3;->a:J

    iget-object v1, p0, Lcom/a/b/v$3$1;->b:Lcom/a/b/v$3;

    iget-boolean v1, v1, Lcom/a/b/v$3;->b:Z

    iget-object v4, p0, Lcom/a/b/v$3$1;->a:[B

    invoke-static {v0, v2, v3, v1, v4}, Lcom/a/b/v;->a(Lcom/a/b/v;JZ[B)V

    return-void
.end method

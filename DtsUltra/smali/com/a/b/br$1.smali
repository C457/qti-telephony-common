.class final Lcom/a/b/br$1;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/br;->a(Lcom/a/b/bp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/bq;

.field final synthetic b:Lcom/a/b/bp;

.field final synthetic c:Lcom/a/b/br;


# direct methods
.method constructor <init>(Lcom/a/b/br;Lcom/a/b/bq;Lcom/a/b/bp;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/br$1;->c:Lcom/a/b/br;

    iput-object p2, p0, Lcom/a/b/br$1;->a:Lcom/a/b/bq;

    iput-object p3, p0, Lcom/a/b/br$1;->b:Lcom/a/b/bp;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/a/b/br$1;->a:Lcom/a/b/bq;

    iget-object v1, p0, Lcom/a/b/br$1;->b:Lcom/a/b/bp;

    invoke-interface {v0, v1}, Lcom/a/b/bq;->a(Lcom/a/b/bp;)V

    return-void
.end method

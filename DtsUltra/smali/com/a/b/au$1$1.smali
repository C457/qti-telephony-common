.class final Lcom/a/b/au$1$1;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/au$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/au$1;


# direct methods
.method constructor <init>(Lcom/a/b/au$1;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/au$1$1;->a:Lcom/a/b/au$1;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/a/b/au$1$1;->a:Lcom/a/b/au$1;

    iget-object v0, v0, Lcom/a/b/au$1;->a:Lcom/a/b/au;

    invoke-static {v0}, Lcom/a/b/au;->a(Lcom/a/b/au;)V

    return-void
.end method

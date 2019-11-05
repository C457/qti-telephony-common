.class final Lcom/a/b/cu$4;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/cu;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/b/cs;

.field final synthetic b:Lcom/a/b/cu;


# direct methods
.method constructor <init>(Lcom/a/b/cu;Lcom/a/b/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/cu$4;->b:Lcom/a/b/cu;

    iput-object p2, p0, Lcom/a/b/cu$4;->a:Lcom/a/b/cs;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/a/b/cu$4;->b:Lcom/a/b/cu;

    iget-object v1, p0, Lcom/a/b/cu$4;->a:Lcom/a/b/cs;

    invoke-static {v0, v1}, Lcom/a/b/cu;->a(Lcom/a/b/cu;Lcom/a/b/cs;)V

    return-void
.end method

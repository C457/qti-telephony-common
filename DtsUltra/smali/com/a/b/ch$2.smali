.class final Lcom/a/b/ch$2;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/b/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/a/b/ch;


# direct methods
.method constructor <init>(Lcom/a/b/ch;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/ch$2;->b:Lcom/a/b/ch;

    iput-object p2, p0, Lcom/a/b/ch$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/a/b/ch$2;->b:Lcom/a/b/ch;

    new-instance v1, Lcom/a/b/cj;

    iget-object v2, p0, Lcom/a/b/ch$2;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/a/b/cj;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/a/b/ch;->d:Lcom/a/b/cj;

    return-void
.end method

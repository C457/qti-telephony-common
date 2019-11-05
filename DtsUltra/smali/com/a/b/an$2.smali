.class final Lcom/a/b/an$2;
.super Lcom/a/b/df;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/b/an;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/a/b/an;


# direct methods
.method constructor <init>(Lcom/a/b/an;I)V
    .locals 0

    iput-object p1, p0, Lcom/a/b/an$2;->b:Lcom/a/b/an;

    iput p2, p0, Lcom/a/b/an$2;->a:I

    invoke-direct {p0}, Lcom/a/b/df;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lcom/a/b/an$2;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/a/b/a;->a()Lcom/a/b/a;

    invoke-static {}, Lcom/a/b/a;->b()Lcom/a/b/aq;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/a/b/aq;->j:Z

    :cond_0
    return-void
.end method

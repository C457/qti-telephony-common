.class public final Lcom/a/b/cb;
.super Lcom/a/b/cd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/b/cb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestObjectType:",
        "Ljava/lang/Object;",
        "ResponseObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/a/b/cd;"
    }
.end annotation


# instance fields
.field public a:Lcom/a/b/cb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/cb$a",
            "<TRequestObjectType;TResponseObjectType;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestObjectType;"
        }
    .end annotation
.end field

.field public c:Lcom/a/b/cp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/cp",
            "<TRequestObjectType;>;"
        }
    .end annotation
.end field

.field public d:Lcom/a/b/cp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/cp",
            "<TResponseObjectType;>;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseObjectType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/b/cd;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/a/b/cb;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/a/b/cb;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/a/b/cb;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/a/b/cb;->v:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/a/b/cb;)Lcom/a/b/cp;
    .locals 1

    iget-object v0, p0, Lcom/a/b/cb;->c:Lcom/a/b/cp;

    return-object v0
.end method

.method static synthetic c(Lcom/a/b/cb;)Lcom/a/b/cp;
    .locals 1

    iget-object v0, p0, Lcom/a/b/cb;->d:Lcom/a/b/cp;

    return-object v0
.end method

.method static synthetic d(Lcom/a/b/cb;)V
    .locals 2

    iget-object v0, p0, Lcom/a/b/cb;->a:Lcom/a/b/cb$a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/a/b/cb;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/b/cb;->a:Lcom/a/b/cb$a;

    iget-object v1, p0, Lcom/a/b/cb;->v:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/a/b/cb$a;->a(Lcom/a/b/cb;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/a/b/cb$1;

    invoke-direct {v0, p0}, Lcom/a/b/cb$1;-><init>(Lcom/a/b/cb;)V

    iput-object v0, p0, Lcom/a/b/cd;->l:Lcom/a/b/cd$b;

    invoke-super {p0}, Lcom/a/b/cd;->a()V

    return-void
.end method

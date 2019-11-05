.class public abstract Lcom/a/b/ch;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/b/ch$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/a/b/cj;

.field private e:Lcom/a/b/bq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/b/bq",
            "<",
            "Lcom/a/b/az;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "defaultDataKey_"

    iput-object v0, p0, Lcom/a/b/ch;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/a/b/ch;->c:Ljava/util/Set;

    new-instance v0, Lcom/a/b/ch$1;

    invoke-direct {v0, p0}, Lcom/a/b/ch$1;-><init>(Lcom/a/b/ch;)V

    iput-object v0, p0, Lcom/a/b/ch;->e:Lcom/a/b/bq;

    iput-object p2, p0, Lcom/a/b/ch;->a:Ljava/lang/String;

    invoke-static {}, Lcom/a/b/br;->a()Lcom/a/b/br;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/a/b/ch;->e:Lcom/a/b/bq;

    invoke-virtual {v0, v1, v2}, Lcom/a/b/br;->a(Ljava/lang/String;Lcom/a/b/bq;)V

    new-instance v0, Lcom/a/b/ch$2;

    invoke-direct {v0, p0, p1}, Lcom/a/b/ch$2;-><init>(Lcom/a/b/ch;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/a/b/ch$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/b/ch$7;-><init>(Lcom/a/b/ch;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/a/b/ch$4;

    invoke-direct {v0, p0}, Lcom/a/b/ch$4;-><init>(Lcom/a/b/ch;)V

    invoke-static {}, Lcom/a/b/bh;->a()Lcom/a/b/bh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/a/b/bh;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method final c()Z
    .locals 2

    iget-object v0, p0, Lcom/a/b/ch;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

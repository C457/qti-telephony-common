.class public abstract Landroid/support/v7/widget/RecyclerView$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$f$b;,
        Landroid/support/v7/widget/RecyclerView$f$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/support/v7/widget/RecyclerView$f$a;

.field i:J

.field j:J

.field k:J

.field l:J


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0xfa

    const-wide/16 v2, 0x78

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->h:Landroid/support/v7/widget/RecyclerView$f$a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Ljava/util/ArrayList;

    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$f;->i:J

    iput-wide v2, p0, Landroid/support/v7/widget/RecyclerView$f;->j:J

    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$f;->k:J

    iput-wide v4, p0, Landroid/support/v7/widget/RecyclerView$f;->l:J

    return-void
.end method

.method static d(Landroid/support/v7/widget/RecyclerView$w;)I
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0xe

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->d()I

    move-result v2

    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v1, v2, :cond_0

    or-int/lit16 v0, v0, 0x800

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z
.end method

.method public abstract a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z
.end method

.method public a(Landroid/support/v7/widget/RecyclerView$w;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$w;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$f;->f(Landroid/support/v7/widget/RecyclerView$w;)Z

    move-result v0

    return v0
.end method

.method public abstract b()Z
.end method

.method public abstract b(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z
.end method

.method public abstract c(Landroid/support/v7/widget/RecyclerView$w;)V
.end method

.method public abstract c(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$f$b;Landroid/support/v7/widget/RecyclerView$f$b;)Z
.end method

.method public abstract d()V
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final e(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->h:Landroid/support/v7/widget/RecyclerView$f$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$f;->h:Landroid/support/v7/widget/RecyclerView$f$a;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/RecyclerView$f$a;->a(Landroid/support/v7/widget/RecyclerView$w;)V

    :cond_0
    return-void
.end method

.method public f(Landroid/support/v7/widget/RecyclerView$w;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

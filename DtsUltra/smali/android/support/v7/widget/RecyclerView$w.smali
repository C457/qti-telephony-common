.class public abstract Landroid/support/v7/widget/RecyclerView$w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "w"
.end annotation


# static fields
.field private static final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/view/View;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v7/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:J

.field f:I

.field g:I

.field h:Landroid/support/v7/widget/RecyclerView$w;

.field i:Landroid/support/v7/widget/RecyclerView$w;

.field j:I

.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m:Landroid/support/v7/widget/RecyclerView$o;

.field n:Z

.field o:I

.field p:I

.field q:Landroid/support/v7/widget/RecyclerView;

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/RecyclerView$w;->r:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$w;->e:J

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->f:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$w;->h:Landroid/support/v7/widget/RecyclerView$w;

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$w;->i:Landroid/support/v7/widget/RecyclerView$w;

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$w;->l:Ljava/util/List;

    iput v4, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$o;

    iput-boolean v4, p0, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    iput v4, p0, Landroid/support/v7/widget/RecyclerView$w;->o:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->p:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    return-void
.end method

.method final a(II)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    return-void
.end method

.method final a(IZ)V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$j;->e:Z

    :cond_3
    return-void
.end method

.method final a(Landroid/support/v7/widget/RecyclerView$o;Z)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$o;

    iput-boolean p2, p0, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->l:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    goto :goto_1
.end method

.method final a(I)Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    return-void
.end method

.method final b()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView$w;)I

    move-result v0

    goto :goto_0
.end method

.method final e()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$o;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final f()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$o;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView$o;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    return-void
.end method

.method final g()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final h()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    return-void
.end method

.method final i()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    return-void
.end method

.method final j()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final k()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final l()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final m()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final n()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final o()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    return-void
.end method

.method final p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/support/v7/widget/RecyclerView$w;->r:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->l:Ljava/util/List;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/support/v7/widget/RecyclerView$w;->r:Ljava/util/List;

    goto :goto_0
.end method

.method final q()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    iput v3, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/RecyclerView$w;->e:J

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    iput v3, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$w;->h:Landroid/support/v7/widget/RecyclerView$w;

    iput-object v4, p0, Landroid/support/v7/widget/RecyclerView$w;->i:Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->o()V

    iput v3, p0, Landroid/support/v7/widget/RecyclerView$w;->o:I

    iput v2, p0, Landroid/support/v7/widget/RecyclerView$w;->p:I

    invoke-static {p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    return-void
.end method

.method public final r()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/h/r;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final s()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ViewHolder{"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/RecyclerView$w;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$w;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$w;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    if-eqz v0, :cond_b

    const-string v0, "[changeScrap]"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->l()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->r()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " not recyclable("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$w;->s:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$w;->j()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_8
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_9

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "[attachedScrap]"

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_1
.end method

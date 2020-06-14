.class public final Landroid/support/v7/widget/RecyclerView$o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "o"
.end annotation


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$w;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:I

.field g:Landroid/support/v7/widget/RecyclerView$n;

.field h:Landroid/support/v7/widget/RecyclerView$u;

.field final synthetic i:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    const/4 v1, 0x2

    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->d:Ljava/util/List;

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$o;->e:I

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$o;->f:I

    return-void
.end method

.method private a(JI)Landroid/support/v7/widget/RecyclerView$w;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    iget-wide v4, v0, Landroid/support/v7/widget/RecyclerView$w;->e:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->g()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$w;->f:I

    if-ne p3, v3, :cond_1

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView$w;->a(II)V

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$o;->b(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    iget-wide v4, v0, Landroid/support/v7/widget/RecyclerView$w;->e:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_5

    iget v3, v0, Landroid/support/v7/widget/RecyclerView$w;->f:I

    if-ne p3, v3, :cond_4

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$o;->c(I)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private d(I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 11

    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->g()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->c()I

    move-result v5

    if-ne v5, p1, :cond_2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/e;->a(II)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v6

    :goto_2
    if-ge v2, v4, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->g()Z

    move-result v3

    if-nez v3, :cond_4

    iget-wide v8, v0, Landroid/support/v7/widget/RecyclerView$w;->e:J

    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private e(I)Landroid/support/v7/widget/RecyclerView$w;
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->g()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->c()I

    move-result v5

    if-ne v5, p1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->j()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v5, v5, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->m()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/ai;

    iget-object v0, v4, Landroid/support/v7/widget/ai;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_2
    if-ge v3, v5, :cond_4

    iget-object v0, v4, Landroid/support/v7/widget/ai;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v6, v4, Landroid/support/v7/widget/ai;->a:Landroid/support/v7/widget/ai$b;

    invoke-interface {v6, v0}, Landroid/support/v7/widget/ai$b;->b(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$w;->c()I

    move-result v7

    if-ne v7, p1, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$w;->j()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$w;->m()Z

    move-result v6

    if-nez v6, :cond_3

    move-object v3, v0

    :goto_3
    if-eqz v3, :cond_8

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/ai;

    iget-object v2, v1, Landroid/support/v7/widget/ai;->a:Landroid/support/v7/widget/ai$b;

    invoke-interface {v2, v3}, Landroid/support/v7/widget/ai$b;->a(Landroid/view/View;)I

    move-result v2

    if-gez v2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move-object v3, v1

    goto :goto_3

    :cond_5
    iget-object v4, v1, Landroid/support/v7/widget/ai;->b:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ai$a;->c(I)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to unhide a view that was not hidden"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v4, v1, Landroid/support/v7/widget/ai;->b:Landroid/support/v7/widget/ai$a;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/ai$a;->b(I)V

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/ai;->b(Landroid/view/View;)Z

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/ai;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/ai;->c(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/ai;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ai;->d(I)V

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/RecyclerView$o;->c(Landroid/view/View;)V

    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_4
    if-ge v2, v3, :cond_a

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->j()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->c()I

    move-result v4

    if-ne v4, p1, :cond_9

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_a
    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$t;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-nez v0, :cond_2

    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(I)I

    move-result p1

    goto :goto_0
.end method

.method final a(IJ)Landroid/support/v7/widget/RecyclerView$w;
    .locals 10

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$t;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$t;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$o;->d(I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-nez v2, :cond_4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$o;->e(I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    :goto_1
    if-nez v1, :cond_d

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->e()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->f()V

    :cond_3
    :goto_2
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$w;)V

    const/4 v2, 0x0

    :cond_4
    :goto_3
    if-nez v2, :cond_28

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/e;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/e;->b(I)I

    move-result v1

    if-ltz v1, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v3

    if-lt v1, v3, :cond_e

    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid item position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(offset:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$t;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    iget v1, v2, Landroid/support/v7/widget/RecyclerView$w;->c:I

    if-ltz v1, :cond_8

    iget v1, v2, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$a;->a()I

    move-result v3

    if-lt v1, v3, :cond_9

    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-nez v1, :cond_a

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    iget v3, v2, Landroid/support/v7/widget/RecyclerView$w;->c:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$a;->a(I)I

    move-result v1

    iget v3, v2, Landroid/support/v7/widget/RecyclerView$w;->f:I

    if-eq v1, v3, :cond_a

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_a
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v1, :cond_b

    iget-wide v4, v2, Landroid/support/v7/widget/RecyclerView$w;->e:J

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    iget v3, v2, Landroid/support/v7/widget/RecyclerView$w;->c:I

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->h()V

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_3

    :cond_e
    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView$a;->a(I)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    iget-boolean v4, v4, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v4, :cond_27

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v3}, Landroid/support/v7/widget/RecyclerView$o;->a(JI)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v2

    if-eqz v2, :cond_27

    iput v1, v2, Landroid/support/v7/widget/RecyclerView$w;->c:I

    const/4 v0, 0x1

    move v1, v0

    :goto_4
    if-nez v2, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->h:Landroid/support/v7/widget/RecyclerView$u;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->h:Landroid/support/v7/widget/RecyclerView$u;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$u;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v2

    if-nez v2, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    if-nez v2, :cond_11

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$o;->d()Landroid/support/v7/widget/RecyclerView$n;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n$a;

    if-eqz v0, :cond_13

    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView$n$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$n$a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    move-object v2, v0

    :goto_5
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->q()V

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/view/ViewGroup;Z)V

    :cond_11
    if-nez v2, :cond_17

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, p2, v6

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->g:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$n;->a(I)Landroid/support/v7/widget/RecyclerView$n$a;

    move-result-object v0

    iget-wide v6, v0, Landroid/support/v7/widget/RecyclerView$n$a;->c:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_12

    add-long/2addr v6, v4

    cmp-long v0, v6, p2

    if-gez v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_6
    if-nez v0, :cond_15

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_13
    const/4 v2, 0x0

    goto :goto_5

    :cond_14
    const/4 v0, 0x0

    goto :goto_6

    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/RecyclerView$a;->b(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v2

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->d:Z

    if-eqz v0, :cond_16

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v2, Landroid/support/v7/widget/RecyclerView$w;->b:Ljava/lang/ref/WeakReference;

    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v6

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->g:Landroid/support/v7/widget/RecyclerView$n;

    sub-long v4, v6, v4

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$n;->a(I)Landroid/support/v7/widget/RecyclerView$n$a;

    move-result-object v0

    iget-wide v6, v0, Landroid/support/v7/widget/RecyclerView$n$a;->c:J

    invoke-static {v6, v7, v4, v5}, Landroid/support/v7/widget/RecyclerView$n;->a(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Landroid/support/v7/widget/RecyclerView$n$a;->c:J

    :cond_17
    move v3, v1

    :goto_8
    if-eqz v3, :cond_18

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-nez v0, :cond_18

    const/16 v0, 0x2000

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView$w;->a(I)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->a(II)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$t;->j:Z

    if-eqz v0, :cond_18

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$f;->d(Landroid/support/v7/widget/RecyclerView$w;)I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$f;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->p()Ljava/util/List;

    new-instance v0, Landroid/support/v7/widget/RecyclerView$f$b;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$f$b;-><init>()V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView$f$b;->a(Landroid/support/v7/widget/RecyclerView$w;)Landroid/support/v7/widget/RecyclerView$f$b;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView$w;Landroid/support/v7/widget/RecyclerView$f$b;)V

    :cond_18
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-eqz v1, :cond_19

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->l()Z

    move-result v1

    if-eqz v1, :cond_19

    iput p1, v2, Landroid/support/v7/widget/RecyclerView$w;->g:I

    move v1, v0

    :goto_9
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_23

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a
    iput-object v2, v0, Landroid/support/v7/widget/RecyclerView$j;->c:Landroid/support/v7/widget/RecyclerView$w;

    if-eqz v3, :cond_25

    if-eqz v1, :cond_25

    const/4 v1, 0x1

    :goto_b
    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$j;->f:Z

    move-object v0, v2

    goto/16 :goto_7

    :cond_19
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->l()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->k()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->j()Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/e;->b(I)I

    move-result v1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iput-object v0, v2, Landroid/support/v7/widget/RecyclerView$w;->q:Landroid/support/v7/widget/RecyclerView;

    iget v0, v2, Landroid/support/v7/widget/RecyclerView$w;->f:I

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, p2, v6

    if-eqz v6, :cond_1d

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$o;->g:Landroid/support/v7/widget/RecyclerView$n;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView$n;->a(I)Landroid/support/v7/widget/RecyclerView$n$a;

    move-result-object v0

    iget-wide v6, v0, Landroid/support/v7/widget/RecyclerView$n$a;->d:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1b

    add-long/2addr v6, v4

    cmp-long v0, v6, p2

    if-gez v0, :cond_1c

    :cond_1b
    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_1d

    const/4 v0, 0x0

    :goto_d
    move v1, v0

    goto :goto_9

    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    :cond_1d
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    iput v1, v2, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iget-boolean v6, v0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-eqz v6, :cond_1e

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$a;->b(I)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/support/v7/widget/RecyclerView$w;->e:J

    :cond_1e
    const/4 v6, 0x1

    const/16 v7, 0x207

    invoke-virtual {v2, v6, v7}, Landroid/support/v7/widget/RecyclerView$w;->a(II)V

    const-string v6, "RV OnBindView"

    invoke-static {v6}, Landroid/support/v4/d/c;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->p()Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/widget/RecyclerView$a;->a(Landroid/support/v7/widget/RecyclerView$w;I)V

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$w;->o()V

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView$j;

    if-eqz v1, :cond_1f

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$j;->e:Z

    :cond_1f
    invoke-static {}, Landroid/support/v4/d/c;->a()V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iget-object v6, p0, Landroid/support/v7/widget/RecyclerView$o;->g:Landroid/support/v7/widget/RecyclerView$n;

    iget v7, v2, Landroid/support/v7/widget/RecyclerView$w;->f:I

    sub-long/2addr v0, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView$n;->a(I)Landroid/support/v7/widget/RecyclerView$n$a;

    move-result-object v4

    iget-wide v6, v4, Landroid/support/v7/widget/RecyclerView$n$a;->d:J

    invoke-static {v6, v7, v0, v1}, Landroid/support/v7/widget/RecyclerView$n;->a(JJ)J

    move-result-wide v0

    iput-wide v0, v4, Landroid/support/v7/widget/RecyclerView$n$a;->d:J

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->f()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/h/r;->f(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_20

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;I)V

    :cond_20
    invoke-static {v0}, Landroid/support/v4/h/r;->c(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_21

    const/16 v1, 0x4000

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$w;->b(I)V

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->L:Landroid/support/v7/widget/az;

    iget-object v1, v1, Landroid/support/v7/widget/az;->c:Landroid/support/v4/h/b;

    invoke-static {v0, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;Landroid/support/v4/h/b;)V

    :cond_21
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$t;->g:Z

    if-eqz v0, :cond_22

    iput p1, v2, Landroid/support/v7/widget/RecyclerView$w;->g:I

    :cond_22
    const/4 v0, 0x1

    goto/16 :goto_d

    :cond_23
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_24

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_a

    :cond_24
    check-cast v0, Landroid/support/v7/widget/RecyclerView$j;

    goto/16 :goto_a

    :cond_25
    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_26
    move v1, v0

    goto/16 :goto_9

    :cond_27
    move v1, v0

    goto/16 :goto_4

    :cond_28
    move v3, v0

    goto/16 :goto_8
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$o;->c()V

    return-void
.end method

.method final a(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->e()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " isAttached:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p1, Landroid/support/v7/widget/RecyclerView$w;->j:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_7

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/h/r;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v3, v1

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->r()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$o;->f:I

    if-lez v0, :cond_c

    const/16 v0, 0x20e

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView$w;->a(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v4, p0, Landroid/support/v7/widget/RecyclerView$o;->f:I

    if-lt v0, v4, :cond_6

    if-lez v0, :cond_6

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$o;->c(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_6
    sget-boolean v4, Landroid/support/v7/widget/RecyclerView;->d:Z

    if-eqz v4, :cond_9

    if-lez v0, :cond_9

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v7/widget/ar$a;

    iget v5, p1, Landroid/support/v7/widget/RecyclerView$w;->c:I

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ar$a;->a(I)Z

    move-result v4

    if-nez v4, :cond_9

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_2
    if-ltz v4, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$w;->c:I

    iget-object v5, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v7/widget/ar$a;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/ar$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_1

    :cond_8
    add-int/lit8 v0, v4, 0x1

    :cond_9
    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v0, v1

    :goto_3
    if-nez v0, :cond_a

    invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$w;Z)V

    move v2, v1

    :cond_a
    :goto_4
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v7/widget/bt;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/bt;->d(Landroid/support/v7/widget/RecyclerView$w;)V

    if-nez v0, :cond_b

    if-nez v2, :cond_b

    if-eqz v3, :cond_b

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->q:Landroid/support/v7/widget/RecyclerView;

    :cond_b
    return-void

    :cond_c
    move v0, v2

    goto :goto_3

    :cond_d
    move v0, v2

    goto :goto_4
.end method

.method final a(Landroid/support/v7/widget/RecyclerView$w;Z)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x4000

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView$w;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView$w;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$w;->a(II)V

    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/h/r;->a(Landroid/view/View;Landroid/support/v4/h/b;)V

    :cond_0
    if-eqz p2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v7/widget/RecyclerView$p;

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->h:Landroid/support/v7/widget/bt;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/bt;->d(Landroid/support/v7/widget/RecyclerView$w;)V

    :cond_3
    iput-object v2, p1, Landroid/support/v7/widget/RecyclerView$w;->q:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$o;->d()Landroid/support/v7/widget/RecyclerView$n;

    move-result-object v0

    iget v1, p1, Landroid/support/v7/widget/RecyclerView$w;->f:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$n;->a(I)Landroid/support/v7/widget/RecyclerView$n$a;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$n$a;->a:Ljava/util/ArrayList;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$n;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$n$a;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$n$a;->b:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->q()V

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->f()V

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$w;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->h()V

    goto :goto_0
.end method

.method public final b(I)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$o;->a(IJ)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$w;->a:Landroid/view/View;

    return-object v0
.end method

.method final b()V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v7/widget/RecyclerView$i;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$i;->z:I

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/RecyclerView$o;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$o;->f:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$o;->f:I

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$o;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b(Landroid/support/v7/widget/RecyclerView$w;)V
    .locals 1

    iget-boolean v0, p1, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$o;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$w;->h()V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/RecyclerView$w;->m:Landroid/support/v7/widget/RecyclerView$o;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$w;->n:Z

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$w;->h()V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$w;)V

    return-void
.end method

.method final c()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$o;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Landroid/support/v7/widget/RecyclerView;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->F:Landroid/support/v7/widget/ar$a;

    invoke-virtual {v0}, Landroid/support/v7/widget/ar$a;->a()V

    :cond_1
    return-void
.end method

.method final c(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$w;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/RecyclerView$o;->a(Landroid/support/v7/widget/RecyclerView$w;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method final c(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$w;

    move-result-object v3

    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/RecyclerView$w;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$f;

    if-eqz v4, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->C:Landroid/support/v7/widget/RecyclerView$f;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->p()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/RecyclerView$f;->a(Landroid/support/v7/widget/RecyclerView$w;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$w;->m()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->m:Landroid/support/v7/widget/RecyclerView$a;

    iget-boolean v0, v0, Landroid/support/v7/widget/RecyclerView$a;->b:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$o;->i:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, p0, v1}, Landroid/support/v7/widget/RecyclerView$w;->a(Landroid/support/v7/widget/RecyclerView$o;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    :cond_5
    invoke-virtual {v3, p0, v2}, Landroid/support/v7/widget/RecyclerView$w;->a(Landroid/support/v7/widget/RecyclerView$o;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method final d()Landroid/support/v7/widget/RecyclerView$n;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->g:Landroid/support/v7/widget/RecyclerView$n;

    if-nez v0, :cond_0

    new-instance v0, Landroid/support/v7/widget/RecyclerView$n;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$n;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->g:Landroid/support/v7/widget/RecyclerView$n;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$o;->g:Landroid/support/v7/widget/RecyclerView$n;

    return-object v0
.end method

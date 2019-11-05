.class public abstract Landroid/support/v7/widget/RecyclerView$s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$s$b;,
        Landroid/support/v7/widget/RecyclerView$s$a;
    }
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:Z

.field d:Landroid/view/View;

.field private e:Landroid/support/v7/widget/RecyclerView;

.field private f:Landroid/support/v7/widget/RecyclerView$i;

.field private final g:Landroid/support/v7/widget/RecyclerView$s$a;


# virtual methods
.method protected final a()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$t;->a:I

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Landroid/view/View;

    iput v1, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/support/v7/widget/RecyclerView$i;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView$i;->t:Landroid/support/v7/widget/RecyclerView$s;

    if-ne v1, p0, :cond_1

    iput-object v2, v0, Landroid/support/v7/widget/RecyclerView$i;->t:Landroid/support/v7/widget/RecyclerView$s;

    :cond_1
    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/support/v7/widget/RecyclerView$i;

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method

.method final b()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$s;->e:Landroid/support/v7/widget/RecyclerView;

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->a()V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/support/v7/widget/RecyclerView$i;

    if-eqz v0, :cond_3

    iget v5, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->f:Landroid/support/v7/widget/RecyclerView$i;

    instance-of v6, v0, Landroid/support/v7/widget/RecyclerView$s$b;

    if-eqz v6, :cond_6

    check-cast v0, Landroid/support/v7/widget/RecyclerView$s$b;

    invoke-interface {v0, v5}, Landroid/support/v7/widget/RecyclerView$s$b;->b(I)Landroid/graphics/PointF;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    iget v5, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v5, v5, v7

    if-nez v5, :cond_2

    iget v5, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v5, v5, v7

    if-eqz v5, :cond_3

    :cond_2
    iget v5, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    float-to-int v5, v5

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v5, v0, v3}, Landroid/support/v7/widget/RecyclerView;->a(II[I)V

    :cond_3
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Z

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)I

    move-result v0

    iget v5, p0, Landroid/support/v7/widget/RecyclerView$s;->a:I

    if-ne v0, v5, :cond_7

    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView$s$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->a()V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView;->G:Landroid/support/v7/widget/RecyclerView$t;

    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$s$a;->a:I

    if-ltz v0, :cond_8

    move v0, v1

    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$s;->g:Landroid/support/v7/widget/RecyclerView$s$a;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView$s$a;->a(Landroid/support/v7/widget/RecyclerView;)V

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$s;->c:Z

    if-eqz v0, :cond_9

    iput-boolean v1, p0, Landroid/support/v7/widget/RecyclerView$s;->b:Z

    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView;->D:Landroid/support/v7/widget/RecyclerView$v;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$v;->a()V

    :cond_5
    :goto_3
    return-void

    :cond_6
    const-string v0, "RecyclerView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v6, Landroid/support/v7/widget/RecyclerView$s$b;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    goto :goto_0

    :cond_7
    const-string v0, "RecyclerView"

    const-string v5, "Passed over target position while smooth scrolling."

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Landroid/support/v7/widget/RecyclerView$s;->d:Landroid/view/View;

    goto :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$s;->a()V

    goto :goto_3
.end method

.class final Landroid/support/design/widget/BottomSheetBehavior$1;
.super Landroid/support/v4/widget/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/BottomSheetBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetBehavior;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/n$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    goto :goto_0
.end method

.method public final a(I)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;FF)V
    .locals 8

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x4

    const/4 v0, 0x3

    cmpg-float v4, p3, v6

    if-gez v4, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v2}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v2, v2, Landroid/support/design/widget/BottomSheetBehavior;->f:Landroid/support/v4/widget/n;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/widget/n;->a(II)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    new-instance v1, Landroid/support/design/widget/BottomSheetBehavior$b;

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-direct {v1, v2, p1, v0}, Landroid/support/design/widget/BottomSheetBehavior$b;-><init>(Landroid/support/design/widget/BottomSheetBehavior;Landroid/view/View;I)V

    invoke-static {p1, v1}, Landroid/support/v4/h/r;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    if-le v2, v4, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v4, v4, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v4, p1, p3}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/view/View;F)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    if-gt v4, v5, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    cmpl-float v4, p3, v6

    if-eqz v4, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v5}, Landroid/support/design/widget/BottomSheetBehavior;->a(Landroid/support/design/widget/BottomSheetBehavior;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    sub-int v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v1, v3, :cond_6

    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v1, v1, Landroid/support/design/widget/BottomSheetBehavior;->a:I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    move v1, v0

    move v0, v2

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v5, v5, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    if-ge v4, v5, :cond_9

    iget-object v2, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v2, v2, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v4, v2, :cond_8

    move v1, v3

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    sub-int v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v3, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v3, v3, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    sub-int v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v0, v3, :cond_a

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->b:I

    move v7, v1

    move v1, v0

    move v0, v7

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    move v1, v0

    move v0, v2

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    move v1, v0

    move v0, v2

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v1, v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(I)V

    goto/16 :goto_1
.end method

.method public final a(Landroid/view/View;I)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->k:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->e:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->j:I

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_2

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget-object v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final b(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetBehavior;->a()V

    return-void
.end method

.method public final c(Landroid/view/View;I)I
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    invoke-static {v0}, Landroid/support/design/widget/BottomSheetBehavior;->b(Landroid/support/design/widget/BottomSheetBehavior;)I

    move-result v1

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget-boolean v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->g:I

    :goto_0
    invoke-static {p2, v1, v0}, Landroid/support/v4/c/a;->a(III)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetBehavior$1;->a:Landroid/support/design/widget/BottomSheetBehavior;

    iget v0, v0, Landroid/support/design/widget/BottomSheetBehavior;->c:I

    goto :goto_0
.end method

.method public final d(Landroid/view/View;I)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

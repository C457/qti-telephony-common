.class public final Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$c;
    a = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;,
        Landroid/support/design/widget/AppBarLayout$BaseBehavior;,
        Landroid/support/design/widget/AppBarLayout$Behavior;,
        Landroid/support/design/widget/AppBarLayout$a;
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/support/v4/h/z;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:[I


# direct methods
.method private a(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$a;
    .locals 2

    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method private static a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$a;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-direct {v0, p0}, Landroid/support/design/widget/AppBarLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private b()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->e:I

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout;->h:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_1
    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->requestLayout()V

    return-void

    :cond_0
    const/4 v0, 0x2

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Z)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->k:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->k:Z

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/support/design/widget/AppBarLayout$a;

    return v0
.end method

.method protected final synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-direct {v0}, Landroid/support/design/widget/AppBarLayout$a;-><init>()V

    return-object v0
.end method

.method protected final synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-direct {v0}, Landroid/support/design/widget/AppBarLayout$a;-><init>()V

    return-object v0
.end method

.method public final synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/util/AttributeSet;)Landroid/support/design/widget/AppBarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/AppBarLayout$a;

    move-result-object v0

    return-object v0
.end method

.method final getDownNestedPreScrollRange()I
    .locals 9

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->e:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->e:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v1, v3

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget v6, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v7, v6, 0x5

    const/4 v8, 0x5

    if-ne v7, v8, :cond_3

    iget v7, v0, Landroid/support/design/widget/AppBarLayout$a;->topMargin:I

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->bottomMargin:I

    add-int/2addr v0, v7

    add-int/2addr v0, v1

    and-int/lit8 v1, v6, 0x8

    if-eqz v1, :cond_1

    invoke-static {v4}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v6, 0x2

    if-eqz v1, :cond_2

    invoke-static {v4}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v1

    sub-int v1, v5, v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int v1, v5, v1

    add-int/2addr v0, v1

    goto :goto_2

    :cond_3
    if-gtz v1, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->e:I

    goto :goto_0
.end method

.method final getDownNestedScrollRange()I
    .locals 9

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v0, Landroid/support/design/widget/AppBarLayout$a;->topMargin:I

    iget v8, v0, Landroid/support/design/widget/AppBarLayout$a;->bottomMargin:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_2

    add-int/2addr v1, v6

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-static {v5}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    :goto_2
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->f:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    invoke-static {p0}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v0

    :goto_1
    if-eqz v0, :cond_2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method final getPendingAction()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    return v0
.end method

.method public final getTargetElevation()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method final getTopInset()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Landroid/support/v4/h/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Landroid/support/v4/h/z;

    invoke-virtual {v0}, Landroid/support/v4/h/z;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getTotalScrollRange()I
    .locals 9

    const/4 v3, 0x0

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v2, v3

    move v1, v3

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {p0, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_2

    iget v8, v0, Landroid/support/design/widget/AppBarLayout$a;->topMargin:I

    add-int/2addr v6, v8

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->bottomMargin:I

    add-int/2addr v0, v6

    add-int/2addr v1, v0

    and-int/lit8 v0, v7, 0x2

    if-eqz v0, :cond_1

    invoke-static {v5}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    :goto_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method final getUpNestedPreScrollRange()I
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method protected final onCreateDrawableState(I)[I
    .locals 4

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->l:[I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->l:[I

    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->l:[I

    array-length v0, v1

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v2

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->j:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/support/design/a$b;->state_liftable:I

    :goto_0
    aput v0, v1, v3

    const/4 v3, 0x1

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->j:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->k:Z

    if-eqz v0, :cond_2

    sget v0, Landroid/support/design/a$b;->state_lifted:I

    :goto_1
    aput v0, v1, v3

    const/4 v3, 0x2

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->j:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/support/design/a$b;->state_collapsible:I

    :goto_2
    aput v0, v1, v3

    const/4 v3, 0x3

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->j:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->k:Z

    if-eqz v0, :cond_4

    sget v0, Landroid/support/design/a$b;->state_collapsed:I

    :goto_3
    aput v0, v1, v3

    invoke-static {v2, v1}, Landroid/support/design/widget/AppBarLayout;->mergeDrawableStates([I[I)[I

    move-result-object v0

    return-object v0

    :cond_1
    sget v0, Landroid/support/design/a$b;->state_liftable:I

    neg-int v0, v0

    goto :goto_0

    :cond_2
    sget v0, Landroid/support/design/a$b;->state_lifted:I

    neg-int v0, v0

    goto :goto_1

    :cond_3
    sget v0, Landroid/support/design/a$b;->state_collapsible:I

    neg-int v0, v0

    goto :goto_2

    :cond_4
    sget v0, Landroid/support/design/a$b;->state_collapsed:I

    neg-int v0, v0

    goto :goto_3
.end method

.method protected final onLayout(ZIIII)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->b()V

    iput-boolean v1, p0, Landroid/support/design/widget/AppBarLayout;->a:Z

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    iget-object v0, v0, Landroid/support/design/widget/AppBarLayout$a;->b:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Landroid/support/design/widget/AppBarLayout;->a:Z

    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->i:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_6

    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    iget v5, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_4

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_4

    move v0, v2

    :goto_2
    if-eqz v0, :cond_5

    move v0, v2

    :goto_3
    if-eqz v0, :cond_7

    :cond_1
    move v0, v2

    :goto_4
    iget-boolean v1, p0, Landroid/support/design/widget/AppBarLayout;->j:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->j:Z

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->refreshDrawableState()V

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method protected final onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-direct {p0}, Landroid/support/design/widget/AppBarLayout;->b()V

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 1

    invoke-static {p0}, Landroid/support/v4/h/r;->A(Landroid/view/View;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;->a(ZZ)V

    return-void
.end method

.method public final setLiftOnScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/widget/AppBarLayout;->c:Z

    return-void
.end method

.method public final setOrientation(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public final setTargetElevation(F)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/support/design/widget/o;->a(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

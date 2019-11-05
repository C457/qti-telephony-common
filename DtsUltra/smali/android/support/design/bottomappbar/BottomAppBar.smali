.class public final Landroid/support/design/bottomappbar/BottomAppBar;
.super Landroid/support/v7/widget/Toolbar;

# interfaces
.implements Landroid/support/design/widget/CoordinatorLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/bottomappbar/BottomAppBar$a;,
        Landroid/support/design/bottomappbar/BottomAppBar$Behavior;
    }
.end annotation


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field a:Landroid/animation/AnimatorListenerAdapter;

.field private final u:I

.field private final v:Landroid/support/design/g/c;

.field private final w:Landroid/support/design/bottomappbar/a;

.field private x:Landroid/animation/Animator;

.field private y:Landroid/animation/Animator;

.field private z:Landroid/animation/Animator;


# direct methods
.method private a(I)I
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Landroid/support/v4/h/r;->g(Landroid/view/View;)I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_0
    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->u:I

    sub-int/2addr v1, v3

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    :cond_0
    mul-int/2addr v0, v1

    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->y:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->a:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v1

    iget-object v2, v1, Landroid/support/design/widget/c;->t:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/design/widget/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->a:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v1

    iget-object v2, v1, Landroid/support/design/widget/c;->s:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/support/design/widget/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->a:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v1

    iget-object v2, v1, Landroid/support/design/widget/c;->t:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/c;->t:Ljava/util/ArrayList;

    :cond_2
    iget-object v1, v1, Landroid/support/design/widget/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->a:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v1

    iget-object v2, v1, Landroid/support/design/widget/c;->s:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/c;->s:Ljava/util/ArrayList;

    :cond_3
    iget-object v1, v1, Landroid/support/design/widget/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/bottomappbar/BottomAppBar;->a(Landroid/support/v7/widget/ActionMenuView;IZ)V

    return-void
.end method

.method private a(Landroid/support/v7/widget/ActionMenuView;IZ)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/support/v4/h/r;->g(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :goto_0
    move v4, v3

    move v5, v3

    :goto_1
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v0

    if-ge v4, v0, :cond_4

    invoke-virtual {p0, v4}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/Toolbar$b;

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$b;

    iget v0, v0, Landroid/support/v7/widget/Toolbar$b;->a:I

    const v7, 0x800007

    and-int/2addr v0, v7

    const v7, 0x800003

    if-ne v0, v7, :cond_2

    move v0, v2

    :goto_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_3
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->getRight()I

    move-result v0

    :goto_4
    sub-int v0, v5, v0

    if-ne p2, v2, :cond_6

    if-eqz p3, :cond_6

    int-to-float v0, v0

    :goto_5
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->setTranslationX(F)V

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/ActionMenuView;->getLeft()I

    move-result v0

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method static synthetic b(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/bottomappbar/a;
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->w:Landroid/support/design/bottomappbar/a;

    return-object v0
.end method

.method static synthetic c(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/g/c;
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->v:Landroid/support/design/g/c;

    return-object v0
.end method

.method static synthetic d(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->z:Landroid/animation/Animator;

    return-object v0
.end method

.method static synthetic e(Landroid/support/design/bottomappbar/BottomAppBar;)Landroid/support/design/widget/FloatingActionButton;
    .locals 1

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->g()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Landroid/support/design/bottomappbar/BottomAppBar;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->x:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->z:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->z:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->y:Landroid/animation/Animator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->y:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()Landroid/support/design/widget/FloatingActionButton;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v3, v0, Landroid/support/design/widget/FloatingActionButton;

    if-eqz v3, :cond_1

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic g(Landroid/support/design/bottomappbar/BottomAppBar;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->i()V

    return-void
.end method

.method private getActionMenuView()Landroid/support/v7/widget/ActionMenuView;
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/support/design/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Landroid/support/v7/widget/ActionMenuView;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getFabTranslationX()F
    .locals 1

    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->A:I

    invoke-direct {p0, v0}, Landroid/support/design/bottomappbar/BottomAppBar;->a(I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getFabTranslationY()F
    .locals 7

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->C:Z

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->g()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v3

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v4}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    :cond_1
    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v1

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v4, v5, v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v5

    neg-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    add-float/2addr v0, v5

    add-float/2addr v0, v1

    invoke-virtual {v3}, Landroid/support/design/widget/FloatingActionButton;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v4, v1

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getMeasuredHeight()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    if-eqz v2, :cond_2

    :goto_1
    add-float/2addr v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method static synthetic h(Landroid/support/design/bottomappbar/BottomAppBar;)F
    .locals 1

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 1

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->g()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/c;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->w:Landroid/support/design/bottomappbar/a;

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v2

    iput v2, v0, Landroid/support/design/bottomappbar/a;->e:F

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->g()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    iget-object v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->v:Landroid/support/design/g/c;

    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->C:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, v3, Landroid/support/design/g/c;->a:F

    invoke-virtual {v3}, Landroid/support/design/g/c;->invalidateSelf()V

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/design/widget/FloatingActionButton;->setTranslationY(F)V

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/support/design/widget/FloatingActionButton;->setTranslationX(F)V

    :cond_0
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getActionMenuView()Landroid/support/v7/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->setAlpha(F)V

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->h()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, v0, v4, v4}, Landroid/support/design/bottomappbar/BottomAppBar;->a(Landroid/support/v7/widget/ActionMenuView;IZ)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->A:I

    iget-boolean v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->C:Z

    invoke-direct {p0, v0, v1, v2}, Landroid/support/design/bottomappbar/BottomAppBar;->a(Landroid/support/v7/widget/ActionMenuView;IZ)V

    goto :goto_1
.end method


# virtual methods
.method public final getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->v:Landroid/support/design/g/c;

    iget-object v0, v0, Landroid/support/design/g/c;->b:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getBehavior()Landroid/support/design/widget/CoordinatorLayout$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/design/widget/CoordinatorLayout$b",
            "<",
            "Landroid/support/design/bottomappbar/BottomAppBar;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Landroid/support/design/bottomappbar/BottomAppBar$Behavior;-><init>()V

    return-object v0
.end method

.method public final getCradleVerticalOffset()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->w:Landroid/support/design/bottomappbar/a;

    iget v0, v0, Landroid/support/design/bottomappbar/a;->d:F

    return v0
.end method

.method public final getFabAlignmentMode()I
    .locals 1

    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->A:I

    return v0
.end method

.method public final getFabCradleMargin()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->w:Landroid/support/design/bottomappbar/a;

    iget v0, v0, Landroid/support/design/bottomappbar/a;->b:F

    return v0
.end method

.method public final getFabCradleRoundedCornerRadius()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->w:Landroid/support/design/bottomappbar/a;

    iget v0, v0, Landroid/support/design/bottomappbar/a;->a:F

    return v0
.end method

.method public final getHideOnScroll()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->B:Z

    return v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/Toolbar;->onLayout(ZIIII)V

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->x:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->x:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->z:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->z:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->y:Landroid/animation/Animator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->y:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->i()V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    instance-of v0, p1, Landroid/support/design/bottomappbar/BottomAppBar$a;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    check-cast p1, Landroid/support/design/bottomappbar/BottomAppBar$a;

    iget-object v0, p1, Landroid/support/v4/h/a;->e:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/support/v7/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v0, p1, Landroid/support/design/bottomappbar/BottomAppBar$a;->a:I

    iput v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->A:I

    iget-boolean v0, p1, Landroid/support/design/bottomappbar/BottomAppBar$a;->b:Z

    iput-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->C:Z

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/design/bottomappbar/BottomAppBar$a;

    invoke-direct {v1, v0}, Landroid/support/design/bottomappbar/BottomAppBar$a;-><init>(Landroid/os/Parcelable;)V

    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->A:I

    iput v0, v1, Landroid/support/design/bottomappbar/BottomAppBar$a;->a:I

    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->C:Z

    iput-boolean v0, v1, Landroid/support/design/bottomappbar/BottomAppBar$a;->b:Z

    return-object v1
.end method

.method public final setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->v:Landroid/support/design/g/c;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setCradleVerticalOffset(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->w:Landroid/support/design/bottomappbar/a;

    iput p1, v0, Landroid/support/design/bottomappbar/a;->d:F

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->v:Landroid/support/design/g/c;

    invoke-virtual {v0}, Landroid/support/design/g/c;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setFabAlignmentMode(I)V
    .locals 12

    const-wide/16 v8, 0x12c

    const/4 v11, 0x2

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->A:I

    if-eq v0, p1, :cond_0

    invoke-static {p0}, Landroid/support/v4/h/r;->A(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->C:Z

    invoke-static {p0}, Landroid/support/v4/h/r;->A(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->z:Landroid/animation/Animator;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->z:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->h()Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    move v2, v1

    :goto_1
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getActionMenuView()Landroid/support/v7/widget/ActionMenuView;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v5, "alpha"

    new-array v6, v10, [F

    aput v7, v6, v1

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-boolean v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->C:Z

    if-nez v6, :cond_2

    if-eqz v0, :cond_9

    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->h()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_2
    iget v6, p0, Landroid/support/design/bottomappbar/BottomAppBar;->A:I

    if-eq v6, v10, :cond_3

    if-ne v2, v10, :cond_9

    :cond_3
    const-string v6, "alpha"

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v1

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    new-instance v7, Landroid/support/design/bottomappbar/BottomAppBar$4;

    invoke-direct {v7, p0, v4, v2, v0}, Landroid/support/design/bottomappbar/BottomAppBar$4;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;Landroid/support/v7/widget/ActionMenuView;IZ)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v8, 0x96

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v2, v11, [Landroid/animation/Animator;

    aput-object v6, v2, v1

    aput-object v5, v2, v10

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->z:Landroid/animation/Animator;

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->z:Landroid/animation/Animator;

    new-instance v1, Landroid/support/design/bottomappbar/BottomAppBar$3;

    invoke-direct {v1, p0}, Landroid/support/design/bottomappbar/BottomAppBar$3;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->z:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_5
    iput p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->A:I

    return-void

    :cond_6
    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->y:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->y:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->C:Z

    if-eqz v2, :cond_8

    new-array v2, v11, [F

    iget-object v3, p0, Landroid/support/design/bottomappbar/BottomAppBar;->w:Landroid/support/design/bottomappbar/a;

    iget v3, v3, Landroid/support/design/bottomappbar/a;->e:F

    aput v3, v2, v1

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->a(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v10

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/support/design/bottomappbar/BottomAppBar$2;

    invoke-direct {v3, p0}, Landroid/support/design/bottomappbar/BottomAppBar$2;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-direct {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->g()Landroid/support/design/widget/FloatingActionButton;

    move-result-object v2

    const-string v3, "translationX"

    new-array v4, v10, [F

    invoke-direct {p0, p1}, Landroid/support/design/bottomappbar/BottomAppBar;->a(I)I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/support/design/bottomappbar/BottomAppBar;->y:Landroid/animation/Animator;

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->y:Landroid/animation/Animator;

    new-instance v2, Landroid/support/design/bottomappbar/BottomAppBar$1;

    invoke-direct {v2, p0}, Landroid/support/design/bottomappbar/BottomAppBar$1;-><init>(Landroid/support/design/bottomappbar/BottomAppBar;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->y:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuView;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v7

    if-gez v0, :cond_4

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_a
    move v2, p1

    goto/16 :goto_1
.end method

.method public final setFabCradleMargin(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->w:Landroid/support/design/bottomappbar/a;

    iput p1, v0, Landroid/support/design/bottomappbar/a;->b:F

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->v:Landroid/support/design/g/c;

    invoke-virtual {v0}, Landroid/support/design/g/c;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setFabCradleRoundedCornerRadius(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->w:Landroid/support/design/bottomappbar/a;

    iput p1, v0, Landroid/support/design/bottomappbar/a;->a:F

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->v:Landroid/support/design/g/c;

    invoke-virtual {v0}, Landroid/support/design/g/c;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method final setFabDiameter(I)V
    .locals 2

    int-to-float v0, p1

    iget-object v1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->w:Landroid/support/design/bottomappbar/a;

    iget v1, v1, Landroid/support/design/bottomappbar/a;->c:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->w:Landroid/support/design/bottomappbar/a;

    int-to-float v1, p1

    iput v1, v0, Landroid/support/design/bottomappbar/a;->c:F

    iget-object v0, p0, Landroid/support/design/bottomappbar/BottomAppBar;->v:Landroid/support/design/g/c;

    invoke-virtual {v0}, Landroid/support/design/g/c;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final setHideOnScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/design/bottomappbar/BottomAppBar;->B:Z

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

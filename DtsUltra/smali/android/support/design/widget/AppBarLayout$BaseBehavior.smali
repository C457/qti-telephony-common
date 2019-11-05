.class public Landroid/support/design/widget/AppBarLayout$BaseBehavior;
.super Landroid/support/design/widget/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BaseBehavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/AppBarLayout$BaseBehavior$b;,
        Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/design/widget/AppBarLayout;",
        ">",
        "Landroid/support/design/widget/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/animation/ValueAnimator;

.field private e:I

.field private f:Z

.field private g:F

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/widget/e;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    return-void
.end method

.method static synthetic a(Landroid/support/design/widget/AppBarLayout$BaseBehavior;)I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b:I

    return v0
.end method

.method private a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a()I

    move-result v0

    if-gez p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    if-lez p1, :cond_2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v1

    neg-int v1, v1

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {p3}, Landroid/support/v4/h/r;->z(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private static a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;IIZ)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_5

    invoke-virtual {p1, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    if-lt v5, v7, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    if-gt v5, v7, :cond_4

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_d

    invoke-static {v3}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v5

    if-lez p3, :cond_7

    and-int/lit8 v6, v0, 0xc

    if-eqz v6, :cond_7

    neg-int v0, p2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v5

    sub-int/2addr v3, v5

    if-lt v0, v3, :cond_6

    move v0, v1

    :goto_2
    iget-boolean v3, p1, Landroid/support/design/widget/AppBarLayout;->c:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v6

    move v5, v2

    :goto_3
    if-ge v5, v6, :cond_a

    invoke-virtual {p0, v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v7, v3, Landroid/support/v4/h/h;

    if-eqz v7, :cond_9

    :goto_4
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_b

    move v0, v1

    :cond_0
    :goto_5
    invoke-virtual {p1, v0}, Landroid/support/design/widget/AppBarLayout;->a(Z)Z

    move-result v0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3

    if-nez p4, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_6
    if-ge v3, v5, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->a:Landroid/support/design/widget/CoordinatorLayout$b;

    instance-of v6, v0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v6, :cond_c

    check-cast v0, Landroid/support/design/widget/AppBarLayout$ScrollingViewBehavior;

    iget v0, v0, Landroid/support/design/widget/f;->d:I

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_5
    move-object v3, v4

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    neg-int v0, p2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v5

    sub-int/2addr v3, v5

    if-lt v0, v3, :cond_8

    move v0, v1

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    :cond_a
    move-object v3, v4

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_5

    :cond_c
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_d
    move v0, v2

    goto :goto_2
.end method

.method private static a(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;)V"
        }
    .end annotation

    const/16 v9, 0x20

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a()I

    move-result v5

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    move v1, v4

    :goto_0
    if-ge v1, v6, :cond_5

    invoke-virtual {p2, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    iget v7, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    invoke-static {v7, v9}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(II)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, v0, Landroid/support/design/widget/AppBarLayout$a;->topMargin:I

    sub-int/2addr v3, v7

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->bottomMargin:I

    add-int/2addr v0, v2

    move v2, v3

    :goto_1
    neg-int v3, v5

    if-gt v2, v3, :cond_4

    neg-int v2, v5

    if-lt v0, v2, :cond_4

    move v2, v1

    :goto_2
    if-ltz v2, :cond_3

    invoke-virtual {p2, v2}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    iget v7, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v1, v7, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    neg-int v3, v1

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    const/4 v2, 0x2

    invoke-static {v7, v2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(II)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v6}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    move v2, v3

    :cond_1
    :goto_3
    invoke-static {v7, v9}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(II)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Landroid/support/design/widget/AppBarLayout$a;->topMargin:I

    add-int/2addr v2, v3

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->bottomMargin:I

    sub-int/2addr v1, v0

    :cond_2
    add-int v0, v1, v2

    div-int/lit8 v0, v0, 0x2

    if-ge v5, v0, :cond_7

    :goto_4
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-static {v1, v0, v4}, Landroid/support/v4/c/a;->a(III)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v0, -0x1

    move v2, v0

    goto :goto_2

    :cond_6
    const/4 v2, 0x5

    invoke-static {v7, v2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(II)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v6}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v2

    add-int/2addr v2, v1

    if-lt v5, v2, :cond_1

    move v1, v2

    move v2, v3

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_4

    :cond_8
    move v2, v3

    goto :goto_3

    :cond_9
    move v0, v2

    move v2, v3

    goto :goto_1
.end method

.method private b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;I)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x447a0000    # 1000.0f

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    :goto_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a()I

    move-result v1

    if-ne v1, p3, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_3

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    sget-object v3, Landroid/support/design/a/a;->e:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$1;

    invoke-direct {v3, p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$1;-><init>(Landroid/support/design/widget/AppBarLayout$BaseBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_2
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    const/16 v3, 0x258

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p3, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_2
.end method


# virtual methods
.method final a()I
    .locals 2

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 10

    const/4 v1, 0x0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a()I

    move-result v4

    if-eqz p4, :cond_8

    if-lt v4, p4, :cond_8

    if-gt v4, p5, :cond_8

    invoke-static {p3, p4, p5}, Landroid/support/v4/c/a;->a(III)I

    move-result v2

    if-eq v4, v2, :cond_3

    iget-boolean v0, p2, Landroid/support/design/widget/AppBarLayout;->a:Z

    if-eqz v0, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v6

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_5

    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/AppBarLayout$a;

    iget-object v8, v0, Landroid/support/design/widget/AppBarLayout$a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v5, v9, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-gt v5, v9, :cond_4

    if-eqz v8, :cond_5

    iget v3, v0, Landroid/support/design/widget/AppBarLayout$a;->a:I

    and-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_9

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v9, v0, Landroid/support/design/widget/AppBarLayout$a;->topMargin:I

    add-int/2addr v6, v9

    iget v0, v0, Landroid/support/design/widget/AppBarLayout$a;->bottomMargin:I

    add-int/2addr v0, v6

    add-int/lit8 v0, v0, 0x0

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    invoke-static {v7}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    :cond_0
    :goto_1
    invoke-static {v7}, Landroid/support/v4/h/r;->r(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    sub-int/2addr v0, v3

    :cond_1
    if-lez v0, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v5, v3

    int-to-float v5, v0

    int-to-float v3, v3

    int-to-float v0, v0

    div-float v0, v3, v0

    invoke-interface {v8, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v2}, Ljava/lang/Integer;->signum(I)I

    move-result v3

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v0, v5

    mul-int/2addr v0, v3

    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(I)Z

    move-result v5

    sub-int v3, v4, v2

    sub-int v0, v2, v0

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b:I

    if-nez v5, :cond_2

    iget-boolean v0, p2, Landroid/support/design/widget/AppBarLayout;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->a()V

    if-ge v2, v4, :cond_7

    const/4 v0, -0x1

    :goto_3
    invoke-static {p1, p2, v2, v0, v1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    move v1, v3

    :cond_3
    :goto_4
    return v1

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    iput v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b:I

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method final synthetic a(Landroid/view/View;)I
    .locals 1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/design/widget/e;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c()I

    move-result v4

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_2

    invoke-virtual {p2, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int v7, v1, v4

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, v4

    if-gtz v1, :cond_1

    if-ltz v7, :cond_1

    new-instance v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$b;

    invoke-direct {v1, v2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$b;-><init>(Landroid/os/Parcelable;)V

    iput v3, v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$b;->a:I

    invoke-static {v6}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v3

    add-int/2addr v2, v3

    if-ne v7, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$b;->c:Z

    int-to-float v0, v7

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, v1, Landroid/support/design/widget/AppBarLayout$BaseBehavior$b;->b:F

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    instance-of v0, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$b;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$b;

    iget-object v0, p3, Landroid/support/v4/h/a;->e:Landroid/os/Parcelable;

    invoke-super {p0, p1, p2, v0}, Landroid/support/design/widget/e;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    iget v0, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$b;->a:I

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    iget v0, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$b;->b:F

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->g:F

    iget-boolean v0, p3, Landroid/support/design/widget/AppBarLayout$BaseBehavior$b;->c:Z

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->f:Z

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/e;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->h:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "IIIII)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-gez p7, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    invoke-direct {p0, p7, p2, p3, p8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    :cond_0
    iget-boolean v0, p2, Landroid/support/design/widget/AppBarLayout;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    invoke-virtual {p2, v5}, Landroid/support/design/widget/AppBarLayout;->a(Z)Z

    :cond_2
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    if-eqz p5, :cond_0

    if-gez p5, :cond_1

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v4, v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v0

    add-int v5, v4, v0

    :goto_0
    if-eq v4, v5, :cond_0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v0

    aput v0, p6, v6

    invoke-direct {p0, p5, p2, p3, p7}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(ILandroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v4, v0

    const/4 v5, 0x0

    goto :goto_0
.end method

.method final synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;I)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .locals 9

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;IIIII)V

    return-void
.end method

.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .locals 8

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;II[II)V

    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;I)Z"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/e;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getPendingAction()I

    move-result v4

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    if-ltz v0, :cond_2

    and-int/lit8 v0, v4, 0x8

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    invoke-virtual {p2, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    neg-int v4, v4

    iget-boolean v5, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->f:Z

    if-eqz v5, :cond_1

    invoke-static {v0}, Landroid/support/v4/h/r;->l(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTopInset()I

    move-result v5

    add-int/2addr v0, v5

    add-int/2addr v0, v4

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    :cond_0
    :goto_1
    iput v2, p2, Landroid/support/design/widget/AppBarLayout;->b:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->e:I

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    neg-int v4, v4

    invoke-static {v0, v4, v2}, Landroid/support/v4/c/a;->a(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(I)Z

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c()I

    move-result v0

    invoke-static {p1, p2, v0, v2, v1}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIZ)V

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->a()V

    return v3

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->g:F

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v4

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_0

    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    and-int/lit8 v5, v4, 0x2

    if-eqz v5, :cond_5

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v4

    neg-int v4, v4

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2, v4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, p2, v4}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    :cond_5
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2, v2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1, p2, v2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a_(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;IIII)Z"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$e;

    iget v0, v0, Landroid/support/design/widget/CoordinatorLayout$e;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;IIII)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/e;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TT;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    and-int/lit8 v2, p5, 0x2

    if-eqz v2, :cond_4

    iget-boolean v2, p2, Landroid/support/design/widget/AppBarLayout;->c:Z

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/support/design/widget/AppBarLayout;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_3

    move v2, v0

    :goto_1
    if-eqz v2, :cond_4

    :cond_0
    :goto_2
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->d:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->h:Ljava/lang/ref/WeakReference;

    iput p6, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->c:I

    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 1

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;IIII)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .locals 7

    move-object v2, p2

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method final synthetic b(Landroid/view/View;)I
    .locals 1

    check-cast p1, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public final synthetic b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 1

    check-cast p2, Landroid/support/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Z
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->i:Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->i:Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;

    invoke-virtual {v0}, Landroid/support/design/widget/AppBarLayout$BaseBehavior$a;->a()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout$BaseBehavior;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

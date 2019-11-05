.class public final Landroid/support/design/widget/FloatingActionButton;
.super Landroid/support/design/widget/p;

# interfaces
.implements Landroid/support/design/d/a;
.implements Landroid/support/v4/h/q;
.implements Landroid/support/v4/widget/m;


# annotations
.annotation runtime Landroid/support/design/widget/CoordinatorLayout$c;
    a = Landroid/support/design/widget/FloatingActionButton$Behavior;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButton$b;,
        Landroid/support/design/widget/FloatingActionButton$BaseBehavior;,
        Landroid/support/design/widget/FloatingActionButton$Behavior;,
        Landroid/support/design/widget/FloatingActionButton$a;
    }
.end annotation


# instance fields
.field a:Z

.field final b:Landroid/graphics/Rect;

.field private c:Landroid/content/res/ColorStateList;

.field private d:Landroid/graphics/PorterDuff$Mode;

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/graphics/PorterDuff$Mode;

.field private g:Landroid/content/res/ColorStateList;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private final l:Landroid/graphics/Rect;

.field private final m:Landroid/support/v7/widget/p;

.field private final n:Landroid/support/design/d/c;

.field private o:Landroid/support/design/widget/c;


# direct methods
.method private static a(II)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_0
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    :sswitch_1
    return p0

    :sswitch_2
    move p0, v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;)I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->j:I

    return v0
.end method

.method static synthetic a(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/design/widget/p;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b()V
    .locals 4

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    invoke-static {v1}, Landroid/support/v4/graphics/drawable/a;->d(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    if-nez v0, :cond_2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v2, v0}, Landroid/support/v7/widget/l;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method private c(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/c$d;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/design/widget/FloatingActionButton$1;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/FloatingActionButton$1;-><init>(Landroid/support/design/widget/FloatingActionButton;Landroid/support/design/widget/FloatingActionButton$a;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/support/design/widget/FloatingActionButton$a;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->c(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/c$d;

    move-result-object v2

    invoke-virtual {v1}, Landroid/support/design/widget/c;->f()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v1, Landroid/support/design/widget/c;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/support/design/widget/c;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {v1}, Landroid/support/design/widget/c;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/p;->setAlpha(F)V

    iget-object v0, v1, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/p;->setScaleY(F)V

    iget-object v0, v1, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/p;->setScaleX(F)V

    invoke-virtual {v1, v3}, Landroid/support/design/widget/c;->a(F)V

    :cond_1
    iget-object v0, v1, Landroid/support/design/widget/c;->d:Landroid/support/design/a/h;

    if-eqz v0, :cond_2

    iget-object v0, v1, Landroid/support/design/widget/c;->d:Landroid/support/design/a/h;

    :goto_0
    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/support/design/widget/c;->a(Landroid/support/design/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v3

    new-instance v0, Landroid/support/design/widget/c$2;

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/c$2;-><init>(Landroid/support/design/widget/c;Landroid/support/design/widget/c$d;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v1, Landroid/support/design/widget/c;->s:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/support/design/widget/c;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_2
    iget-object v0, v1, Landroid/support/design/widget/c;->f:Landroid/support/design/a/h;

    if-nez v0, :cond_3

    iget-object v0, v1, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Landroid/support/design/a$a;->design_fab_show_motion_spec:I

    invoke-static {v0, v3}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    iput-object v0, v1, Landroid/support/design/widget/c;->f:Landroid/support/design/a/h;

    :cond_3
    iget-object v0, v1, Landroid/support/design/widget/c;->f:Landroid/support/design/a/h;

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v0, v1, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0, v5, v5}, Landroid/support/design/widget/p;->a(IZ)V

    iget-object v0, v1, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/p;->setAlpha(F)V

    iget-object v0, v1, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/p;->setScaleY(F)V

    iget-object v0, v1, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0, v4}, Landroid/support/design/widget/p;->setScaleX(F)V

    invoke-virtual {v1, v4}, Landroid/support/design/widget/c;->a(F)V

    goto :goto_2
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->n:Landroid/support/design/d/c;

    iget-boolean v0, v0, Landroid/support/design/d/c;->b:Z

    return v0
.end method

.method public final a(Landroid/graphics/Rect;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/support/v4/h/r;->A(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->b(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final b(Landroid/graphics/Rect;)V
    .locals 2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method final b(Landroid/support/design/widget/FloatingActionButton$a;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->c(Landroid/support/design/widget/FloatingActionButton$a;)Landroid/support/design/widget/c$d;

    move-result-object v3

    iget-object v4, v2, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v4}, Landroid/support/design/widget/p;->getVisibility()I

    move-result v4

    if-nez v4, :cond_3

    iget v4, v2, Landroid/support/design/widget/c;->b:I

    if-ne v4, v0, :cond_2

    :cond_0
    :goto_0
    if-nez v0, :cond_7

    iget-object v0, v2, Landroid/support/design/widget/c;->c:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, v2, Landroid/support/design/widget/c;->c:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    invoke-virtual {v2}, Landroid/support/design/widget/c;->g()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Landroid/support/design/widget/c;->e:Landroid/support/design/a/h;

    if-eqz v0, :cond_4

    iget-object v0, v2, Landroid/support/design/widget/c;->e:Landroid/support/design/a/h;

    :goto_1
    invoke-virtual {v2, v0, v6, v6, v6}, Landroid/support/design/widget/c;->a(Landroid/support/design/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v0, Landroid/support/design/widget/c$1;

    invoke-direct {v0, v2, v3}, Landroid/support/design/widget/c$1;-><init>(Landroid/support/design/widget/c;Landroid/support/design/widget/c$d;)V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v2, Landroid/support/design/widget/c;->t:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, v2, Landroid/support/design/widget/c;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v4, v2, Landroid/support/design/widget/c;->b:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, v2, Landroid/support/design/widget/c;->g:Landroid/support/design/a/h;

    if-nez v0, :cond_5

    iget-object v0, v2, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/design/a$a;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    iput-object v0, v2, Landroid/support/design/widget/c;->g:Landroid/support/design/a/h;

    :cond_5
    iget-object v0, v2, Landroid/support/design/widget/c;->g:Landroid/support/design/a/h;

    goto :goto_1

    :cond_6
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    :goto_3
    return-void

    :cond_8
    iget-object v0, v2, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/support/design/widget/p;->a(IZ)V

    goto :goto_3
.end method

.method protected final drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/support/design/widget/p;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/c;->a([I)V

    return-void
.end method

.method public final getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getCompatElevation()F
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/c;->a()F

    move-result v0

    return v0
.end method

.method public final getCompatHoveredFocusedTranslationZ()F
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget v0, v0, Landroid/support/design/widget/c;->o:F

    return v0
.end method

.method public final getCompatPressedTranslationZ()F
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget v0, v0, Landroid/support/design/widget/c;->p:F

    return v0
.end method

.method public final getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/c;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getCustomSize()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    return v0
.end method

.method public final getExpandedComponentIdHint()I
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->n:Landroid/support/design/d/c;

    iget v0, v0, Landroid/support/design/d/c;->c:I

    return v0
.end method

.method public final getHideMotionSpec()Landroid/support/design/a/h;
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/c;->e:Landroid/support/design/a/h;

    return-object v0
.end method

.method public final getImpl()Landroid/support/design/widget/c;
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->o:Landroid/support/design/widget/c;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/design/widget/d;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/d;-><init>(Landroid/support/design/widget/p;Landroid/support/design/widget/i;)V

    :goto_0
    iput-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->o:Landroid/support/design/widget/c;

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->o:Landroid/support/design/widget/c;

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/design/widget/c;

    new-instance v1, Landroid/support/design/widget/FloatingActionButton$b;

    invoke-direct {v1, p0}, Landroid/support/design/widget/FloatingActionButton$b;-><init>(Landroid/support/design/widget/FloatingActionButton;)V

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/c;-><init>(Landroid/support/design/widget/p;Landroid/support/design/widget/i;)V

    goto :goto_0
.end method

.method public final getRippleColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRippleColorStateList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getShowMotionSpec()Landroid/support/design/a/h;
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget-object v0, v0, Landroid/support/design/widget/c;->d:Landroid/support/design/a/h;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    return v0
.end method

.method final getSizeDimension()I
    .locals 2

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    :goto_0
    iget v1, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    if-eqz v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget v0, Landroid/support/design/a$c;->design_fab_size_normal:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x1d6

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    sget v0, Landroid/support/design/a$c;->design_fab_size_mini:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Z

    return v0
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/support/design/widget/p;->jumpDrawablesToCurrentState()V

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/c;->b()V

    return-void
.end method

.method protected final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/support/design/widget/p;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/support/design/widget/c;->C:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_0

    new-instance v1, Landroid/support/design/widget/c$3;

    invoke-direct {v1, v0}, Landroid/support/design/widget/c$3;-><init>(Landroid/support/design/widget/c;)V

    iput-object v1, v0, Landroid/support/design/widget/c;->C:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v1}, Landroid/support/design/widget/p;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, v0, Landroid/support/design/widget/c;->C:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/support/design/widget/p;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget-object v1, v0, Landroid/support/design/widget/c;->C:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/c;->A:Landroid/support/design/widget/p;

    invoke-virtual {v1}, Landroid/support/design/widget/p;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Landroid/support/design/widget/c;->C:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/design/widget/c;->C:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/FloatingActionButton;->k:I

    sub-int v1, v0, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/design/widget/FloatingActionButton;->j:I

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/design/widget/c;->d()V

    invoke-static {v0, p1}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v1

    invoke-static {v0, p2}, Landroid/support/design/widget/FloatingActionButton;->a(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget-object v2, p0, Landroid/support/design/widget/FloatingActionButton;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/FloatingActionButton;->setMeasuredDimension(II)V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    const/4 v3, 0x0

    instance-of v0, p1, Landroid/support/design/i/a;

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/design/widget/p;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Landroid/support/design/i/a;

    iget-object v0, p1, Landroid/support/v4/h/a;->e:Landroid/os/Parcelable;

    invoke-super {p0, v0}, Landroid/support/design/widget/p;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->n:Landroid/support/design/d/c;

    iget-object v0, p1, Landroid/support/design/i/a;->a:Landroid/support/v4/g/l;

    const-string v2, "expandableWidgetHelper"

    invoke-virtual {v0, v2}, Landroid/support/v4/g/l;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "expanded"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Landroid/support/design/d/c;->b:Z

    const-string v2, "expandedComponentIdHint"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Landroid/support/design/d/c;->c:I

    iget-boolean v0, v1, Landroid/support/design/d/c;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/support/design/d/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/support/design/widget/CoordinatorLayout;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout;

    iget-object v1, v1, Landroid/support/design/d/c;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    invoke-super {p0}, Landroid/support/design/widget/p;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Landroid/support/design/i/a;

    invoke-direct {v1, v0}, Landroid/support/design/i/a;-><init>(Landroid/os/Parcelable;)V

    iget-object v0, v1, Landroid/support/design/i/a;->a:Landroid/support/v4/g/l;

    const-string v2, "expandableWidgetHelper"

    iget-object v3, p0, Landroid/support/design/widget/FloatingActionButton;->n:Landroid/support/design/d/c;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "expanded"

    iget-boolean v6, v3, Landroid/support/design/d/c;->b:Z

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "expandedComponentIdHint"

    iget v3, v3, Landroid/support/design/d/c;->c:I

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v4}, Landroid/support/v4/g/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->l:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->l:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/p;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setBackgroundColor(I)V
    .locals 2

    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 2

    const-string v0, "FloatingActionButton"

    const-string v1, "Setting a custom background is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_2

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget-object v1, v0, Landroid/support/design/widget/c;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/support/design/widget/c;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object v1, v0, Landroid/support/design/widget/c;->l:Landroid/support/design/widget/a;

    if-eqz v1, :cond_2

    iget-object v0, v0, Landroid/support/design/widget/c;->l:Landroid/support/design/widget/a;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/support/design/widget/a;->getState()[I

    move-result-object v1

    iget v2, v0, Landroid/support/design/widget/a;->g:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    iput v1, v0, Landroid/support/design/widget/a;->g:I

    :cond_1
    iput-object p1, v0, Landroid/support/design/widget/a;->f:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/design/widget/a;->h:Z

    invoke-virtual {v0}, Landroid/support/design/widget/a;->invalidateSelf()V

    :cond_2
    return-void
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->d:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget-object v1, v0, Landroid/support/design/widget/c;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/design/widget/c;->j:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public final setCompatElevation(F)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget v1, v0, Landroid/support/design/widget/c;->n:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/support/design/widget/c;->n:F

    iget v1, v0, Landroid/support/design/widget/c;->n:F

    iget v2, v0, Landroid/support/design/widget/c;->o:F

    iget v3, v0, Landroid/support/design/widget/c;->p:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/c;->a(FFF)V

    :cond_0
    return-void
.end method

.method public final setCompatElevationResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setCompatElevation(F)V

    return-void
.end method

.method public final setCompatHoveredFocusedTranslationZ(F)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget v1, v0, Landroid/support/design/widget/c;->o:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/support/design/widget/c;->o:F

    iget v1, v0, Landroid/support/design/widget/c;->n:F

    iget v2, v0, Landroid/support/design/widget/c;->o:F

    iget v3, v0, Landroid/support/design/widget/c;->p:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/c;->a(FFF)V

    :cond_0
    return-void
.end method

.method public final setCompatHoveredFocusedTranslationZResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setCompatHoveredFocusedTranslationZ(F)V

    return-void
.end method

.method public final setCompatPressedTranslationZ(F)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget v1, v0, Landroid/support/design/widget/c;->p:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_0

    iput p1, v0, Landroid/support/design/widget/c;->p:F

    iget v1, v0, Landroid/support/design/widget/c;->n:F

    iget v2, v0, Landroid/support/design/widget/c;->o:F

    iget v3, v0, Landroid/support/design/widget/c;->p:F

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/design/widget/c;->a(FFF)V

    :cond_0
    return-void
.end method

.method public final setCompatPressedTranslationZResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setCompatPressedTranslationZ(F)V

    return-void
.end method

.method public final setCustomSize(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Custom size must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    return-void
.end method

.method public final setExpandedComponentIdHint(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->n:Landroid/support/design/d/c;

    iput p1, v0, Landroid/support/design/d/c;->c:I

    return-void
.end method

.method public final setHideMotionSpec(Landroid/support/design/a/h;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iput-object p1, v0, Landroid/support/design/widget/c;->e:Landroid/support/design/a/h;

    return-void
.end method

.method public final setHideMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setHideMotionSpec(Landroid/support/design/a/h;)V

    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/design/widget/p;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget v1, v0, Landroid/support/design/widget/c;->r:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/c;->a(F)V

    return-void
.end method

.method public final setImageResource(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->m:Landroid/support/v7/widget/p;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/p;->a(I)V

    return-void
.end method

.method public final setRippleColor(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iget-object v1, p0, Landroid/support/design/widget/FloatingActionButton;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/c;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public final setShowMotionSpec(Landroid/support/design/a/h;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    iput-object p1, v0, Landroid/support/design/widget/c;->d:Landroid/support/design/a/h;

    return-void
.end method

.method public final setShowMotionSpecResource(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/design/a/h;->a(Landroid/content/Context;I)Landroid/support/design/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/FloatingActionButton;->setShowMotionSpec(Landroid/support/design/a/h;)V

    return-void
.end method

.method public final setSize(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/FloatingActionButton;->i:I

    iget v0, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/support/design/widget/FloatingActionButton;->h:I

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/design/widget/FloatingActionButton;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public final setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->e:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->b()V

    :cond_0
    return-void
.end method

.method public final setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroid/support/design/widget/FloatingActionButton;->f:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0}, Landroid/support/design/widget/FloatingActionButton;->b()V

    :cond_0
    return-void
.end method

.method public final setUseCompatPadding(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/design/widget/FloatingActionButton;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/design/widget/FloatingActionButton;->a:Z

    invoke-virtual {p0}, Landroid/support/design/widget/FloatingActionButton;->getImpl()Landroid/support/design/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/c;->c()V

    :cond_0
    return-void
.end method

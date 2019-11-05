.class final Landroid/support/design/widget/d;
.super Landroid/support/design/widget/c;


# instance fields
.field private D:Landroid/graphics/drawable/InsetDrawable;


# direct methods
.method constructor <init>(Landroid/support/design/widget/p;Landroid/support/design/widget/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/c;-><init>(Landroid/support/design/widget/p;Landroid/support/design/widget/i;)V

    return-void
.end method

.method private a(FF)Landroid/animation/Animator;
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    const-string v2, "elevation"

    new-array v3, v4, [F

    aput p1, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    sget-object v3, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v4, v4, [F

    aput p2, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    sget-object v1, Landroid/support/design/widget/d;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->getElevation()F

    move-result v0

    return v0
.end method

.method final a(FFF)V
    .locals 12

    const-wide/16 v10, 0x64

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->refreshDrawableState()V

    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/support/design/widget/i;

    invoke-interface {v0}, Landroid/support/design/widget/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    sget-object v0, Landroid/support/design/widget/d;->u:[I

    invoke-direct {p0, p1, p3}, Landroid/support/design/widget/d;->a(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object v0, Landroid/support/design/widget/d;->v:[I

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/d;->a(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object v0, Landroid/support/design/widget/d;->w:[I

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/d;->a(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object v0, Landroid/support/design/widget/d;->x:[I

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/d;->a(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    const-string v4, "elevation"

    new-array v5, v9, [F

    aput p1, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-gt v3, v4, :cond_2

    iget-object v3, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v5, v9, [F

    iget-object v6, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v6}, Landroid/support/design/widget/p;->getTranslationZ()F

    move-result v6

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v3, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v5, v9, [F

    aput v8, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v3, v7, [Landroid/animation/Animator;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/Animator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    sget-object v0, Landroid/support/design/widget/d;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v0, Landroid/support/design/widget/d;->y:[I

    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object v0, Landroid/support/design/widget/d;->z:[I

    invoke-direct {p0, v8, v8}, Landroid/support/design/widget/d;->a(FF)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/16 :goto_0
.end method

.method final a(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/widget/d;->k:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->k:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/support/design/f/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/design/widget/c;->a(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method final a(Landroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/support/design/widget/i;

    invoke-interface {v0}, Landroid/support/design/widget/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/support/design/widget/i;

    invoke-interface {v0}, Landroid/support/design/widget/i;->a()F

    move-result v0

    iget-object v1, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v1}, Landroid/support/design/widget/p;->getElevation()F

    move-result v1

    iget v2, p0, Landroid/support/design/widget/d;->p:F

    add-float/2addr v1, v2

    invoke-static {v1, v0, v4}, Landroid/support/design/widget/h;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v0, v4}, Landroid/support/design/widget/h;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p1, v2, v0, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method final a([I)V
    .locals 3

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    iget v1, p0, Landroid/support/design/widget/d;->n:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->setElevation(F)V

    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    iget v1, p0, Landroid/support/design/widget/d;->p:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->setTranslationZ(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->isFocused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    iget v1, p0, Landroid/support/design/widget/d;->o:F

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->setTranslationZ(F)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/p;->setTranslationZ(F)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/p;->setElevation(F)V

    iget-object v0, p0, Landroid/support/design/widget/d;->A:Landroid/support/design/widget/p;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/p;->setTranslationZ(F)V

    goto :goto_0
.end method

.method final b()V
    .locals 0

    return-void
.end method

.method final b(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/support/design/widget/i;

    invoke-interface {v0}, Landroid/support/design/widget/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Landroid/support/design/widget/d;->k:Landroid/graphics/drawable/Drawable;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v0, p0, Landroid/support/design/widget/d;->D:Landroid/graphics/drawable/InsetDrawable;

    iget-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/support/design/widget/i;

    iget-object v1, p0, Landroid/support/design/widget/d;->D:Landroid/graphics/drawable/InsetDrawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/i;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/d;->B:Landroid/support/design/widget/i;

    iget-object v1, p0, Landroid/support/design/widget/d;->k:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/support/design/widget/i;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method final c()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/design/widget/d;->d()V

    return-void
.end method

.method final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

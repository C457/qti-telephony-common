.class public final Landroid/support/design/c/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/support/design/c/d;FFF)Landroid/animation/Animator;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Landroid/support/design/c/d$b;->a:Landroid/util/Property;

    sget-object v1, Landroid/support/design/c/d$a;->a:Landroid/animation/TypeEvaluator;

    new-array v2, v5, [Landroid/support/design/c/d$d;

    new-instance v3, Landroid/support/design/c/d$d;

    invoke-direct {v3, p1, p2, p3}, Landroid/support/design/c/d$d;-><init>(FFF)V

    aput-object v3, v2, v4

    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    invoke-interface {p0}, Landroid/support/design/c/d;->getRevealInfo()Landroid/support/design/c/d$d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Caller must set a non-null RevealInfo before calling this."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, v0, Landroid/support/design/c/d$d;->c:F

    check-cast p0, Landroid/view/View;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-static {p0, v2, v3, v0, p3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v2

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.class public final Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewPropertyAnimator;

.field final synthetic b:F

.field final synthetic c:Landroid/graphics/drawable/Drawable;

.field final synthetic d:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;


# direct methods
.method public constructor <init>(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;Landroid/view/ViewPropertyAnimator;FLandroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->d:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    iput-object p2, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->a:Landroid/view/ViewPropertyAnimator;

    iput p3, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->b:F

    iput-object p4, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->a:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->d:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->j(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->b:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->d:Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;

    invoke-static {v0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;->j(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->a:Landroid/view/ViewPropertyAnimator;

    iget v1, p0, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;->b:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2$1;

    invoke-direct {v1, p0}, Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2$1;-><init>(Lcom/dts/dtsxultra/listeningprofile/RotaryKnob$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

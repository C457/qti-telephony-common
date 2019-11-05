.class final Landroid/support/design/transformation/FabTransformationBehavior$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/transformation/FabTransformationBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/c/d;

.field final synthetic b:Landroid/graphics/drawable/Drawable;

.field final synthetic c:Landroid/support/design/transformation/FabTransformationBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/c/d;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$3;->c:Landroid/support/design/transformation/FabTransformationBehavior;

    iput-object p2, p0, Landroid/support/design/transformation/FabTransformationBehavior$3;->a:Landroid/support/design/c/d;

    iput-object p3, p0, Landroid/support/design/transformation/FabTransformationBehavior$3;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$3;->a:Landroid/support/design/c/d;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/design/c/d;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$3;->a:Landroid/support/design/c/d;

    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior$3;->b:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Landroid/support/design/c/d;->setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.class final Landroid/support/design/transformation/FabTransformationBehavior$4;
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

.field final synthetic b:Landroid/support/design/transformation/FabTransformationBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/c/d;)V
    .locals 0

    iput-object p1, p0, Landroid/support/design/transformation/FabTransformationBehavior$4;->b:Landroid/support/design/transformation/FabTransformationBehavior;

    iput-object p2, p0, Landroid/support/design/transformation/FabTransformationBehavior$4;->a:Landroid/support/design/c/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior$4;->a:Landroid/support/design/c/d;

    invoke-interface {v0}, Landroid/support/design/c/d;->getRevealInfo()Landroid/support/design/c/d$d;

    move-result-object v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, v0, Landroid/support/design/c/d$d;->c:F

    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior$4;->a:Landroid/support/design/c/d;

    invoke-interface {v1, v0}, Landroid/support/design/c/d;->setRevealInfo(Landroid/support/design/c/d$d;)V

    return-void
.end method

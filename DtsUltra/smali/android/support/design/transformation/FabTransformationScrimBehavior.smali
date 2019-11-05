.class public Landroid/support/design/transformation/FabTransformationScrimBehavior;
.super Landroid/support/design/transformation/ExpandableTransformationBehavior;


# instance fields
.field private final a:Landroid/support/design/a/i;

.field private final b:Landroid/support/design/a/i;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Landroid/support/design/a/i;

    const-wide/16 v2, 0x4b

    invoke-direct {v0, v2, v3}, Landroid/support/design/a/i;-><init>(J)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->a:Landroid/support/design/a/i;

    new-instance v0, Landroid/support/design/a/i;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Landroid/support/design/a/i;-><init>(J)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->b:Landroid/support/design/a/i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/support/design/a/i;

    const-wide/16 v2, 0x4b

    invoke-direct {v0, v2, v3}, Landroid/support/design/a/i;-><init>(J)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->a:Landroid/support/design/a/i;

    new-instance v0, Landroid/support/design/a/i;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Landroid/support/design/a/i;-><init>(J)V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->b:Landroid/support/design/a/i;

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/design/transformation/ExpandableTransformationBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    instance-of v0, p2, Landroid/support/design/widget/FloatingActionButton;

    return v0
.end method

.method protected final b(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->a:Landroid/support/design/a/i;

    move-object v1, v0

    :goto_0
    if-eqz p3, :cond_2

    if-nez p4, :cond_0

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v5

    invoke-static {p2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v2}, Landroid/support/design/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    new-instance v1, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;

    invoke-direct {v1, p0, p3, p2}, Landroid/support/design/transformation/FabTransformationScrimBehavior$1;-><init>(Landroid/support/design/transformation/FabTransformationScrimBehavior;ZLandroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationScrimBehavior;->b:Landroid/support/design/a/i;

    move-object v1, v0

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput v4, v3, v5

    invoke-static {p2, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1
.end method

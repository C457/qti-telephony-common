.class public abstract Landroid/support/design/transformation/ExpandableTransformationBehavior;
.super Landroid/support/design/transformation/ExpandableBehavior;


# instance fields
.field private a:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableBehavior;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Landroid/support/design/transformation/ExpandableTransformationBehavior;)Landroid/animation/AnimatorSet;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->a:Landroid/animation/AnimatorSet;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/view/View;Landroid/view/View;ZZ)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->a:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->a:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->a:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/support/design/transformation/ExpandableTransformationBehavior$1;

    invoke-direct {v2, p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior$1;-><init>(Landroid/support/design/transformation/ExpandableTransformationBehavior;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    if-nez p4, :cond_1

    iget-object v0, p0, Landroid/support/design/transformation/ExpandableTransformationBehavior;->a:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
.end method

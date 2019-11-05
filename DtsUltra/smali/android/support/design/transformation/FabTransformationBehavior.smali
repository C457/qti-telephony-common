.class public abstract Landroid/support/design/transformation/FabTransformationBehavior;
.super Landroid/support/design/transformation/ExpandableTransformationBehavior;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/transformation/FabTransformationBehavior$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Landroid/graphics/RectF;

.field private final c:Landroid/graphics/RectF;

.field private final d:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->d:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/design/transformation/ExpandableTransformationBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->d:[I

    return-void
.end method

.method private static a(Landroid/support/design/transformation/FabTransformationBehavior$a;Landroid/support/design/a/i;F)F
    .locals 8

    iget-wide v0, p1, Landroid/support/design/a/i;->a:J

    iget-wide v2, p1, Landroid/support/design/a/i;->b:J

    iget-object v4, p0, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v5, "expansion"

    invoke-virtual {v4, v5}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v4

    iget-wide v6, v4, Landroid/support/design/a/i;->a:J

    iget-wide v4, v4, Landroid/support/design/a/i;->b:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x11

    add-long/2addr v4, v6

    sub-long v0, v4, v0

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/support/design/a/i;->a()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    invoke-static {p2, v0}, Landroid/support/design/a/a;->a(FF)F

    move-result v0

    return v0
.end method

.method private a(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F
    .locals 4

    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-direct {p0, p2, v2}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    const/4 v0, 0x0

    iget v3, p3, Landroid/support/design/a/j;->a:I

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v1, p3, Landroid/support/design/a/j;->b:F

    add-float/2addr v0, v1

    return v0

    :pswitch_1
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    :pswitch_3
    iget v0, v2, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/ViewGroup;

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/view/View;JIIFLjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "JIIF",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-static {p0, p3, p4, p5, p5}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroid/support/design/transformation/FabTransformationBehavior;->d:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    neg-float v1, v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method private b(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F
    .locals 4

    iget-object v1, p0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    iget-object v2, p0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-direct {p0, p2, v2}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    const/4 v0, 0x0

    iget v3, p3, Landroid/support/design/a/j;->a:I

    and-int/lit8 v3, v3, 0x70

    sparse-switch v3, :sswitch_data_0

    :goto_0
    iget v1, p3, Landroid/support/design/a/j;->c:F

    add-float/2addr v0, v1

    return v0

    :sswitch_0
    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    sub-float/2addr v0, v1

    goto :goto_0

    :sswitch_2
    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$a;
.end method

.method public final a(Landroid/support/design/widget/CoordinatorLayout$e;)V
    .locals 1

    iget v0, p1, Landroid/support/design/widget/CoordinatorLayout$e;->h:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    iput v0, p1, Landroid/support/design/widget/CoordinatorLayout$e;->h:I

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v1, p2, Landroid/support/design/widget/FloatingActionButton;

    if-eqz v1, :cond_2

    check-cast p2, Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {p2}, Landroid/support/design/widget/FloatingActionButton;->getExpandedComponentIdHint()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected final b(Landroid/view/View;Landroid/view/View;ZZ)Landroid/animation/AnimatorSet;
    .locals 22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/content/Context;Z)Landroid/support/design/transformation/FabTransformationBehavior$a;

    move-result-object v14

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/support/v4/h/r;->n(Landroid/view/View;)F

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/support/v4/h/r;->n(Landroid/view/View;)F

    move-result v5

    sub-float/2addr v4, v5

    if-eqz p3, :cond_c

    if-nez p4, :cond_0

    neg-float v4, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    sget-object v4, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    :goto_0
    iget-object v5, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v6, "elevation"

    invoke-virtual {v5, v6}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    iget-object v4, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->b:Landroid/support/design/a/j;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F

    move-result v9

    iget-object v4, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->b:Landroid/support/design/a/j;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4}, Landroid/support/design/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F

    move-result v10

    const/4 v4, 0x0

    cmpl-float v4, v9, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-nez v4, :cond_d

    :cond_2
    iget-object v4, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v5, "translationXLinear"

    invoke-virtual {v4, v5}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v5

    iget-object v4, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v6, "translationYLinear"

    invoke-virtual {v4, v6}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v4

    move-object v6, v4

    move-object v7, v5

    :goto_1
    if-eqz p3, :cond_11

    if-nez p4, :cond_3

    neg-float v4, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    neg-float v4, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_3
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v5, v12

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v12, 0x1

    new-array v12, v12, [F

    const/4 v13, 0x0

    const/16 v16, 0x0

    aput v16, v12, v13

    move-object/from16 v0, p2

    invoke-static {v0, v4, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    neg-float v9, v9

    neg-float v10, v10

    invoke-static {v14, v7, v9}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/support/design/transformation/FabTransformationBehavior$a;Landroid/support/design/a/i;F)F

    move-result v9

    invoke-static {v14, v6, v10}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/support/design/transformation/FabTransformationBehavior$a;Landroid/support/design/a/i;F)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/design/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    invoke-virtual {v13, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    invoke-virtual {v12, v9, v10}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v12, v13}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    invoke-virtual {v8, v12}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :goto_2
    invoke-virtual {v7, v5}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-virtual {v6, v4}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/support/design/c/d;

    if-eqz v4, :cond_4

    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/widget/ImageView;

    if-nez v4, :cond_12

    :cond_4
    :goto_3
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/support/design/c/d;

    if-eqz v4, :cond_6

    move-object/from16 v4, p2

    check-cast v4, Landroid/support/design/c/d;

    iget-object v5, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->b:Landroid/support/design/a/j;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F

    move-result v5

    neg-float v5, v5

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    iget v8, v9, Landroid/graphics/RectF;->left:F

    sub-float v16, v5, v8

    iget-object v5, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->b:Landroid/support/design/a/j;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/transformation/FabTransformationBehavior;->b:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/design/transformation/FabTransformationBehavior;->c:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;Landroid/graphics/RectF;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Landroid/support/design/transformation/FabTransformationBehavior;->b(Landroid/view/View;Landroid/view/View;Landroid/support/design/a/j;)F

    move-result v5

    const/4 v10, 0x0

    neg-float v5, v5

    invoke-virtual {v9, v10, v5}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget v8, v9, Landroid/graphics/RectF;->top:F

    sub-float v17, v5, v8

    move-object/from16 v5, p1

    check-cast v5, Landroid/support/design/widget/FloatingActionButton;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/support/design/widget/FloatingActionButton;->a(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/design/transformation/FabTransformationBehavior;->a:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    const/high16 v8, 0x40000000    # 2.0f

    div-float v12, v5, v8

    iget-object v5, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v8, "expansion"

    invoke-virtual {v5, v8}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v18

    if-eqz p3, :cond_16

    if-nez p4, :cond_5

    new-instance v5, Landroid/support/design/c/d$d;

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v5, v0, v1, v12}, Landroid/support/design/c/d$d;-><init>(FFF)V

    invoke-interface {v4, v5}, Landroid/support/design/c/d;->setRevealInfo(Landroid/support/design/c/d$d;)V

    :cond_5
    if-eqz p4, :cond_15

    invoke-interface {v4}, Landroid/support/design/c/d;->getRevealInfo()Landroid/support/design/c/d$d;

    move-result-object v5

    iget v10, v5, Landroid/support/design/c/d$d;->c:F

    :goto_4
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v0, v1, v6, v7}, Landroid/support/design/widget/g;->a(FFFF)F

    move-result v5

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v0, v1, v5}, Landroid/support/design/c/a;->a(Landroid/support/design/c/d;FFF)Landroid/animation/Animator;

    move-result-object v12

    new-instance v5, Landroid/support/design/transformation/FabTransformationBehavior$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4}, Landroid/support/design/transformation/FabTransformationBehavior$4;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/c/d;)V

    invoke-virtual {v12, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/support/design/a/i;->a:J

    move/from16 v0, v16

    float-to-int v8, v0

    move/from16 v0, v17

    float-to-int v9, v0

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;JIIFLjava/util/List;)V

    move-object v5, v12

    :goto_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/support/design/c/a$1;

    invoke-direct {v5, v4}, Landroid/support/design/c/a$1;-><init>(Landroid/support/design/c/d;)V

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/support/design/c/d;

    if-eqz v4, :cond_8

    move-object/from16 v4, p2

    check-cast v4, Landroid/support/design/c/d;

    invoke-static/range {p1 .. p1}, Landroid/support/v4/h/r;->v(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDrawableState()[I

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    :goto_6
    const v6, 0xffffff

    and-int/2addr v6, v5

    if-eqz p3, :cond_19

    if-nez p4, :cond_7

    invoke-interface {v4, v5}, Landroid/support/design/c/d;->setCircularRevealScrimColor(I)V

    :cond_7
    sget-object v5, Landroid/support/design/c/d$c;->a:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v6, v7, v8

    invoke-static {v4, v5, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    :goto_7
    invoke-static {}, Landroid/support/design/a/c;->a()Landroid/support/design/a/c;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    iget-object v5, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v6, "color"

    invoke-virtual {v5, v6}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_b

    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/support/design/c/d;

    if-eqz v4, :cond_9

    sget v4, Landroid/support/design/c/c;->a:I

    if-eqz v4, :cond_b

    :cond_9
    sget v4, Landroid/support/design/a$e;->mtrl_child_content_container:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-static {v4}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    :goto_8
    if-eqz v4, :cond_b

    if-eqz p3, :cond_1d

    if-nez p4, :cond_a

    sget-object v5, Landroid/support/design/a/d;->a:Landroid/util/Property;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a
    sget-object v5, Landroid/support/design/a/d;->a:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    :goto_9
    iget-object v5, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v6, "contentFade"

    invoke-virtual {v5, v6}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v6, v11}, Landroid/support/design/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    new-instance v4, Landroid/support/design/transformation/FabTransformationBehavior$1;

    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/support/design/transformation/FabTransformationBehavior$1;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v4, 0x0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    move v5, v4

    :goto_a
    if-ge v5, v7, :cond_1e

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_a

    :cond_c
    sget-object v5, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    neg-float v4, v4

    aput v4, v6, v7

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto/16 :goto_0

    :cond_d
    if-eqz p3, :cond_e

    const/4 v4, 0x0

    cmpg-float v4, v10, v4

    if-ltz v4, :cond_f

    :cond_e
    if-nez p3, :cond_10

    const/4 v4, 0x0

    cmpl-float v4, v10, v4

    if-lez v4, :cond_10

    :cond_f
    iget-object v4, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v5, "translationXCurveUpwards"

    invoke-virtual {v4, v5}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v5

    iget-object v4, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v6, "translationYCurveUpwards"

    invoke-virtual {v4, v6}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v4

    move-object v6, v4

    move-object v7, v5

    goto/16 :goto_1

    :cond_10
    iget-object v4, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v5, "translationXCurveDownwards"

    invoke-virtual {v4, v5}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v5

    iget-object v4, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v6, "translationYCurveDownwards"

    invoke-virtual {v4, v6}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v4

    move-object v6, v4

    move-object v7, v5

    goto/16 :goto_1

    :cond_11
    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/4 v12, 0x0

    neg-float v9, v9

    aput v9, v5, v12

    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v12, 0x0

    neg-float v10, v10

    aput v10, v9, v12

    move-object/from16 v0, p2

    invoke-static {v0, v4, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto/16 :goto_2

    :cond_12
    move-object/from16 v4, p2

    check-cast v4, Landroid/support/design/c/d;

    move-object/from16 v5, p1

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_14

    if-nez p4, :cond_13

    const/16 v5, 0xff

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_13
    sget-object v5, Landroid/support/design/a/e;->a:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/4 v12, 0x0

    aput v12, v9, v10

    invoke-static {v8, v5, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    :goto_b
    new-instance v9, Landroid/support/design/transformation/FabTransformationBehavior$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1}, Landroid/support/design/transformation/FabTransformationBehavior$2;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/view/View;)V

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v9, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    const-string v10, "iconFade"

    invoke-virtual {v9, v10}, Landroid/support/design/a/h;->a(Ljava/lang/String;)Landroid/support/design/a/i;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/support/design/a/i;->a(Landroid/animation/Animator;)V

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/support/design/transformation/FabTransformationBehavior$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v4, v8}, Landroid/support/design/transformation/FabTransformationBehavior$3;-><init>(Landroid/support/design/transformation/FabTransformationBehavior;Landroid/support/design/c/d;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_14
    sget-object v5, Landroid/support/design/a/e;->a:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/4 v10, 0x0

    const/16 v12, 0xff

    aput v12, v9, v10

    invoke-static {v8, v5, v9}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v5

    goto :goto_b

    :cond_15
    move v10, v12

    goto/16 :goto_4

    :cond_16
    invoke-interface {v4}, Landroid/support/design/c/d;->getRevealInfo()Landroid/support/design/c/d$d;

    move-result-object v5

    iget v10, v5, Landroid/support/design/c/d$d;->c:F

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v4, v0, v1, v12}, Landroid/support/design/c/a;->a(Landroid/support/design/c/d;FFF)Landroid/animation/Animator;

    move-result-object v13

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/support/design/a/i;->a:J

    move/from16 v0, v16

    float-to-int v8, v0

    move/from16 v0, v17

    float-to-int v9, v0

    move-object/from16 v5, p2

    invoke-static/range {v5 .. v11}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;JIIFLjava/util/List;)V

    move-object/from16 v0, v18

    iget-wide v6, v0, Landroid/support/design/a/i;->a:J

    move-object/from16 v0, v18

    iget-wide v8, v0, Landroid/support/design/a/i;->b:J

    iget-object v5, v14, Landroid/support/design/transformation/FabTransformationBehavior$a;->a:Landroid/support/design/a/h;

    invoke-virtual {v5}, Landroid/support/design/a/h;->a()J

    move-result-wide v20

    move/from16 v0, v16

    float-to-int v5, v0

    move/from16 v0, v17

    float-to-int v10, v0

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0x15

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_17

    add-long v16, v6, v8

    cmp-long v16, v16, v20

    if-gez v16, :cond_17

    move-object/from16 v0, p2

    invoke-static {v0, v5, v10, v12, v12}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v5

    add-long v16, v6, v8

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    add-long/2addr v6, v8

    sub-long v6, v20, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    move-object v5, v13

    goto/16 :goto_5

    :cond_18
    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_19
    sget-object v6, Landroid/support/design/c/d$c;->a:Landroid/util/Property;

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v5, v7, v8

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/support/design/transformation/b;

    if-nez v4, :cond_1b

    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/support/design/transformation/a;

    if-eqz v4, :cond_1c

    :cond_1b
    move-object/from16 v4, p2

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    goto/16 :goto_8

    :cond_1c
    invoke-static/range {p2 .. p2}, Landroid/support/design/transformation/FabTransformationBehavior;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    goto/16 :goto_8

    :cond_1d
    sget-object v5, Landroid/support/design/a/d;->a:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto/16 :goto_9

    :cond_1e
    return-object v6
.end method

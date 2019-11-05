.class final Landroid/support/design/widget/TabLayout$e;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:Landroid/animation/ValueAnimator;

.field final synthetic d:Landroid/support/design/widget/TabLayout;

.field private e:I

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/drawable/GradientDrawable;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->a:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    iput v0, p0, Landroid/support/design/widget/TabLayout$e;->j:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->setWillNotDraw(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout$e;->g:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method private a(Landroid/support/design/widget/TabLayout$h;Landroid/graphics/RectF;)V
    .locals 11

    const/16 v10, 0x18

    const/4 v9, 0x3

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    new-array v5, v9, [Landroid/view/View;

    iget-object v1, p1, Landroid/support/design/widget/TabLayout$h;->a:Landroid/widget/TextView;

    aput-object v1, v5, v0

    iget-object v1, p1, Landroid/support/design/widget/TabLayout$h;->b:Landroid/widget/ImageView;

    aput-object v1, v5, v3

    const/4 v1, 0x2

    iget-object v2, p1, Landroid/support/design/widget/TabLayout$h;->c:Landroid/view/View;

    aput-object v2, v5, v1

    move v4, v0

    move v1, v0

    move v2, v0

    :goto_0
    if-ge v4, v9, :cond_3

    aget-object v6, v5, v4

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    move v2, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_2

    :cond_3
    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v1, v10}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v10}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v0

    :cond_4
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$h;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$h;->getRight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v0, 0x2

    sub-int v2, v1, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v1, v2

    int-to-float v0, v0

    invoke-virtual {p2, v1, v8, v0, v8}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->a:I

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v1

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    iget-boolean v3, v3, Landroid/support/design/widget/TabLayout;->t:Z

    if-nez v3, :cond_0

    instance-of v3, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v3, :cond_0

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/support/design/widget/TabLayout$h;Landroid/graphics/RectF;)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    move v2, v1

    move v1, v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->b:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->a:I

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v5, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    iget-boolean v5, v5, Landroid/support/design/widget/TabLayout;->t:Z

    if-nez v5, :cond_3

    instance-of v5, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v5, :cond_3

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    iget-object v3, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-static {v3}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/support/design/widget/TabLayout$h;Landroid/graphics/RectF;)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    :goto_0
    iget v4, p0, Landroid/support/design/widget/TabLayout$e;->b:F

    int-to-float v3, v3

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/support/design/widget/TabLayout$e;->b:F

    sub-float v4, v6, v4

    int-to-float v2, v2

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Landroid/support/design/widget/TabLayout$e;->b:F

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v3, p0, Landroid/support/design/widget/TabLayout$e;->b:F

    sub-float v3, v6, v3

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    float-to-int v1, v0

    :cond_1
    :goto_1
    invoke-virtual {p0, v2, v1}, Landroid/support/design/widget/TabLayout$e;->a(II)V

    return-void

    :cond_2
    const/4 v1, -0x1

    move v2, v1

    goto :goto_1

    :cond_3
    move v0, v3

    move v3, v4

    goto :goto_0
.end method

.method final a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {p0}, Landroid/support/v4/h/r;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method final a(II)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->j:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    iput p2, p0, Landroid/support/design/widget/TabLayout$e;->j:I

    invoke-static {p0}, Landroid/support/v4/h/r;->e(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method final b(I)V
    .locals 1

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->e:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->e:I

    invoke-static {p0}, Landroid/support/v4/h/r;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method final b(II)V
    .locals 7

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    iget-boolean v1, v1, Landroid/support/design/widget/TabLayout;->t:Z

    if-nez v1, :cond_3

    instance-of v1, v0, Landroid/support/design/widget/TabLayout$h;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/support/design/widget/TabLayout$h;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-static {v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/support/design/widget/TabLayout$e;->a(Landroid/support/design/widget/TabLayout$h;Landroid/graphics/RectF;)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-static {v0}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/design/widget/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v5, v0

    :cond_3
    iget v2, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    iget v4, p0, Landroid/support/design/widget/TabLayout$e;->j:I

    if-ne v2, v3, :cond_4

    if-eq v4, v5, :cond_1

    :cond_4
    new-instance v6, Landroid/animation/ValueAnimator;

    invoke-direct {v6}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    sget-object v0, Landroid/support/design/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v0, p2

    invoke-virtual {v6, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance v0, Landroid/support/design/widget/TabLayout$e$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/support/design/widget/TabLayout$e$1;-><init>(Landroid/support/design/widget/TabLayout$e;IIII)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/support/design/widget/TabLayout$e$2;

    invoke-direct {v0, p0, p1}, Landroid/support/design/widget/TabLayout$e$2;-><init>(Landroid/support/design/widget/TabLayout$e;I)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    iget-object v0, v0, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    iget v2, p0, Landroid/support/design/widget/TabLayout$e;->e:I

    if-ltz v2, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->e:I

    :cond_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    iget v2, v2, Landroid/support/design/widget/TabLayout;->q:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_1
    :pswitch_0
    iget v2, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    if-ltz v2, :cond_2

    iget v2, p0, Landroid/support/design/widget/TabLayout$e;->j:I

    iget v3, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    if-le v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->i:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-static {v2}, Landroid/support/v4/graphics/drawable/a;->e(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Landroid/support/design/widget/TabLayout$e;->i:I

    iget v4, p0, Landroid/support/design/widget/TabLayout$e;->j:I

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_3
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getHeight()I

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TabLayout$e;->g:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->f:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v2, v0}, Landroid/support/v4/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected final onLayout(ZIIII)V
    .locals 5

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    iget v2, p0, Landroid/support/design/widget/TabLayout$e;->a:I

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v4, p0, Landroid/support/design/widget/TabLayout$e;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    sub-float/2addr v3, v4

    long-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/support/design/widget/TabLayout$e;->b(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->a()V

    goto :goto_0
.end method

.method protected final onMeasure(II)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->r:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    iget v0, v0, Landroid/support/design/widget/TabLayout;->o:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getChildCount()I

    move-result v5

    move v4, v2

    move v1, v2

    :goto_1
    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v0

    goto :goto_1

    :cond_2
    if-lez v1, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v0

    mul-int v4, v1, v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v6, v0

    if-gt v4, v0, :cond_4

    move v4, v2

    :goto_3
    if-ge v4, v5, :cond_5

    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout$e;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ne v6, v1, :cond_3

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    :cond_3
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v0, v3

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    iput v2, v0, Landroid/support/design/widget/TabLayout;->o:I

    iget-object v0, p0, Landroid/support/design/widget/TabLayout$e;->d:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/TabLayout;->a(Z)V

    move v2, v3

    :cond_5
    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout$e;->requestLayout()V

    iput p1, p0, Landroid/support/design/widget/TabLayout$e;->h:I

    :cond_0
    return-void
.end method

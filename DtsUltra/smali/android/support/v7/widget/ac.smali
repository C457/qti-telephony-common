.class public Landroid/support/v7/widget/ac;
.super Landroid/widget/FrameLayout;


# static fields
.field private static final d:[I

.field private static final e:Landroid/support/v7/widget/ah;


# instance fields
.field a:I

.field b:I

.field final c:Landroid/graphics/Rect;

.field private f:Z

.field private g:Z

.field private final h:Landroid/support/v7/widget/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010031

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/ac;->d:[I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v7/widget/ae;

    invoke-direct {v0}, Landroid/support/v7/widget/ae;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    :goto_0
    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    invoke-interface {v0}, Landroid/support/v7/widget/ah;->a()V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v7/widget/ad;

    invoke-direct {v0}, Landroid/support/v7/widget/ad;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v7/widget/af;

    invoke-direct {v0}, Landroid/support/v7/widget/af;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    goto :goto_0
.end method


# virtual methods
.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 2

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ah;->h(Landroid/support/v7/widget/ag;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getCardElevation()F
    .locals 2

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ah;->e(Landroid/support/v7/widget/ag;)F

    move-result v0

    return v0
.end method

.method public getContentPaddingBottom()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ac;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getContentPaddingLeft()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ac;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getContentPaddingRight()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ac;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getContentPaddingTop()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ac;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getMaxCardElevation()F
    .locals 2

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/ag;)F

    move-result v0

    return v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ac;->g:Z

    return v0
.end method

.method public getRadius()F
    .locals 2

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ah;->d(Landroid/support/v7/widget/ag;)F

    move-result v0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/ac;->f:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    instance-of v0, v0, Landroid/support/v7/widget/ae;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_2
    return-void

    :sswitch_0
    sget-object v1, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v2, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v1, v2}, Landroid/support/v7/widget/ah;->b(Landroid/support/v7/widget/ag;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    :sswitch_1
    sget-object v1, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v2, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v1, v2}, Landroid/support/v7/widget/ah;->c(Landroid/support/v7/widget/ag;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCardBackgroundColor(I)V
    .locals 3

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/ag;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/ag;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 2

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/ah;->c(Landroid/support/v7/widget/ag;F)V

    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 2

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/ah;->b(Landroid/support/v7/widget/ag;F)V

    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/ac;->b:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumHeight(I)V

    return-void
.end method

.method public setMinimumWidth(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/ac;->a:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setMinimumWidth(I)V

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/ac;->g:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/widget/ac;->g:Z

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ah;->g(Landroid/support/v7/widget/ag;)V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 2

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v0, v1, p1}, Landroid/support/v7/widget/ah;->a(Landroid/support/v7/widget/ag;F)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v7/widget/ac;->f:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/support/v7/widget/ac;->f:Z

    sget-object v0, Landroid/support/v7/widget/ac;->e:Landroid/support/v7/widget/ah;

    iget-object v1, p0, Landroid/support/v7/widget/ac;->h:Landroid/support/v7/widget/ag;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/ah;->f(Landroid/support/v7/widget/ag;)V

    :cond_0
    return-void
.end method

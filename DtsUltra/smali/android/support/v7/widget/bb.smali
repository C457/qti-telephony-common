.class final Landroid/support/v7/widget/bb;
.super Landroid/graphics/drawable/Drawable;


# instance fields
.field a:F

.field final b:Landroid/graphics/Paint;

.field c:F

.field d:Z

.field e:Z

.field f:Landroid/content/res/ColorStateList;

.field private final g:Landroid/graphics/RectF;

.field private final h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/PorterDuffColorFilter;

.field private j:Landroid/content/res/ColorStateList;

.field private k:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/bb;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v0, v1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/graphics/Rect;)V
    .locals 6

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bb;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bb;->g:Landroid/graphics/RectF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Landroid/support/v7/widget/bb;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/bb;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/bb;->c:F

    iget v1, p0, Landroid/support/v7/widget/bb;->a:F

    iget-boolean v2, p0, Landroid/support/v7/widget/bb;->e:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/bc;->a(FFZ)F

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/bb;->c:F

    iget v2, p0, Landroid/support/v7/widget/bb;->a:F

    iget-boolean v3, p0, Landroid/support/v7/widget/bb;->e:Z

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/bc;->b(FFZ)F

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/bb;->h:Landroid/graphics/Rect;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Landroid/support/v7/widget/bb;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Landroid/support/v7/widget/bb;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v1, p0, Landroid/support/v7/widget/bb;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Landroid/support/v7/widget/bb;->i:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bb;->i:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/bb;->g:Landroid/graphics/RectF;

    iget v3, p0, Landroid/support/v7/widget/bb;->a:F

    iget v4, p0, Landroid/support/v7/widget/bb;->a:F

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public final getOutline(Landroid/graphics/Outline;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bb;->h:Landroid/graphics/Rect;

    iget v1, p0, Landroid/support/v7/widget/bb;->a:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method

.method public final isStateful()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bb;->j:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bb;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/bb;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/bb;->a(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected final onStateChange([I)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/bb;->f:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/bb;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iget-object v1, p0, Landroid/support/v7/widget/bb;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eq v2, v1, :cond_1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/bb;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/bb;->j:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/widget/bb;->k:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/bb;->j:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/bb;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v1, v2}, Landroid/support/v7/widget/bb;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/bb;->i:Landroid/graphics/PorterDuffColorFilter;

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final setAlpha(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bb;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/bb;->j:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Landroid/support/v7/widget/bb;->j:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/v7/widget/bb;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/bb;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bb;->i:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/support/v7/widget/bb;->invalidateSelf()V

    return-void
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v7/widget/bb;->k:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, Landroid/support/v7/widget/bb;->j:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Landroid/support/v7/widget/bb;->k:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/bb;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bb;->i:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Landroid/support/v7/widget/bb;->invalidateSelf()V

    return-void
.end method

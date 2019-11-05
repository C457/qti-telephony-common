.class final Landroid/support/v7/widget/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/ah;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;
    .locals 1

    invoke-interface {p0}, Landroid/support/v7/widget/ag;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/bb;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bb;->c:F

    return v0
.end method

.method public final a()V
    .locals 0

    return-void
.end method

.method public final a(Landroid/support/v7/widget/ag;F)V
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v0

    iget v1, v0, Landroid/support/v7/widget/bb;->a:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    iput p2, v0, Landroid/support/v7/widget/bb;->a:F

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bb;->a(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/bb;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ag;Landroid/content/res/ColorStateList;)V
    .locals 5

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v0

    if-nez p2, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    :cond_0
    iput-object p2, v0, Landroid/support/v7/widget/bb;->f:Landroid/content/res/ColorStateList;

    iget-object v1, v0, Landroid/support/v7/widget/bb;->b:Landroid/graphics/Paint;

    iget-object v2, v0, Landroid/support/v7/widget/bb;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/support/v7/widget/bb;->getState()[I

    move-result-object v3

    iget-object v4, v0, Landroid/support/v7/widget/bb;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/support/v7/widget/bb;->invalidateSelf()V

    return-void
.end method

.method public final b(Landroid/support/v7/widget/ag;)F
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bb;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final b(Landroid/support/v7/widget/ag;F)V
    .locals 4

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v0

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->b()Z

    move-result v1

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->c()Z

    move-result v2

    iget v3, v0, Landroid/support/v7/widget/bb;->c:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_0

    iget-boolean v3, v0, Landroid/support/v7/widget/bb;->d:Z

    if-ne v3, v1, :cond_0

    iget-boolean v3, v0, Landroid/support/v7/widget/bb;->e:Z

    if-eq v3, v2, :cond_1

    :cond_0
    iput p2, v0, Landroid/support/v7/widget/bb;->c:F

    iput-boolean v1, v0, Landroid/support/v7/widget/bb;->d:Z

    iput-boolean v2, v0, Landroid/support/v7/widget/bb;->e:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bb;->a(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/support/v7/widget/bb;->invalidateSelf()V

    :cond_1
    invoke-interface {p1}, Landroid/support/v7/widget/ag;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bb;->c:F

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v1

    iget v1, v1, Landroid/support/v7/widget/bb;->a:F

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->c()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/bc;->b(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->c()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/support/v7/widget/bc;->a(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    :cond_2
    return-void
.end method

.method public final c(Landroid/support/v7/widget/ag;)F
    .locals 2

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bb;->a:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public final c(Landroid/support/v7/widget/ag;F)V
    .locals 1

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public final d(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bb;->a:F

    return v0
.end method

.method public final e(Landroid/support/v7/widget/ag;)F
    .locals 1

    invoke-interface {p1}, Landroid/support/v7/widget/ag;->d()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public final f(Landroid/support/v7/widget/ag;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bb;->c:F

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/ae;->b(Landroid/support/v7/widget/ag;F)V

    return-void
.end method

.method public final g(Landroid/support/v7/widget/ag;)V
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v0

    iget v0, v0, Landroid/support/v7/widget/bb;->c:F

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/ae;->b(Landroid/support/v7/widget/ag;F)V

    return-void
.end method

.method public final h(Landroid/support/v7/widget/ag;)Landroid/content/res/ColorStateList;
    .locals 1

    invoke-static {p1}, Landroid/support/v7/widget/ae;->i(Landroid/support/v7/widget/ag;)Landroid/support/v7/widget/bb;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v7/widget/bb;->f:Landroid/content/res/ColorStateList;

    return-object v0
.end method
